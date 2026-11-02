package com.google.firebase.database.core.view;

import com.google.firebase.database.core.CompoundWrite;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.WriteTreeRef;
import com.google.firebase.database.core.operation.AckUserWrite;
import com.google.firebase.database.core.operation.Merge;
import com.google.firebase.database.core.operation.Operation;
import com.google.firebase.database.core.operation.Overwrite;
import com.google.firebase.database.core.utilities.ImmutableTree;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.view.filter.ChildChangeAccumulator;
import com.google.firebase.database.core.view.filter.NodeFilter;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.ChildrenNode;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.Index;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.KeyIndex;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class ViewProcessor {
    private static NodeFilter.CompleteChildSource NO_COMPLETE_SOURCE = new NodeFilter.CompleteChildSource() { // from class: com.google.firebase.database.core.view.ViewProcessor.1
        @Override // com.google.firebase.database.core.view.filter.NodeFilter.CompleteChildSource
        public NamedNode getChildAfterChild(Index index, NamedNode namedNode, boolean z) {
            return null;
        }

        @Override // com.google.firebase.database.core.view.filter.NodeFilter.CompleteChildSource
        public Node getCompleteChild(ChildKey childKey) {
            return null;
        }
    };
    private final NodeFilter filter;

    /* JADX INFO: renamed from: com.google.firebase.database.core.view.ViewProcessor$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType;

        static {
            int[] iArr = new int[Operation.OperationType.values().length];
            $SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType = iArr;
            try {
                iArr[Operation.OperationType.Overwrite.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType[Operation.OperationType.Merge.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType[Operation.OperationType.AckUserWrite.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType[Operation.OperationType.ListenComplete.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class ProcessorResult {
        public final List<Change> changes;
        public final ViewCache viewCache;

        public ProcessorResult(ViewCache viewCache, List<Change> list) {
            this.viewCache = viewCache;
            this.changes = list;
        }
    }

    private static class WriteTreeCompleteChildSource implements NodeFilter.CompleteChildSource {
        private final Node optCompleteServerCache;
        private final ViewCache viewCache;
        private final WriteTreeRef writes;

        public WriteTreeCompleteChildSource(WriteTreeRef writeTreeRef, ViewCache viewCache, Node node) {
            this.writes = writeTreeRef;
            this.viewCache = viewCache;
            this.optCompleteServerCache = node;
        }

        @Override // com.google.firebase.database.core.view.filter.NodeFilter.CompleteChildSource
        public NamedNode getChildAfterChild(Index index, NamedNode namedNode, boolean z) {
            Node completeServerSnap = this.optCompleteServerCache;
            if (completeServerSnap == null) {
                completeServerSnap = this.viewCache.getCompleteServerSnap();
            }
            return this.writes.calcNextNodeAfterPost(completeServerSnap, namedNode, z, index);
        }

        @Override // com.google.firebase.database.core.view.filter.NodeFilter.CompleteChildSource
        public Node getCompleteChild(ChildKey childKey) {
            CacheNode eventCache = this.viewCache.getEventCache();
            if (eventCache.isCompleteForChild(childKey)) {
                return eventCache.getNode().getImmediateChild(childKey);
            }
            return this.writes.calcCompleteChild(childKey, this.optCompleteServerCache != null ? new CacheNode(IndexedNode.from(this.optCompleteServerCache, KeyIndex.getInstance()), true, false) : this.viewCache.getServerCache());
        }
    }

    public ViewProcessor(NodeFilter nodeFilter) {
        this.filter = nodeFilter;
    }

    private ViewCache ackUserWrite(ViewCache viewCache, Path path, ImmutableTree<Boolean> immutableTree, WriteTreeRef writeTreeRef, Node node, ChildChangeAccumulator childChangeAccumulator) {
        if (writeTreeRef.shadowingWrite(path) != null) {
            return viewCache;
        }
        boolean zIsFiltered = viewCache.getServerCache().isFiltered();
        CacheNode serverCache = viewCache.getServerCache();
        if (immutableTree.getValue() == null) {
            CompoundWrite compoundWriteEmptyWrite = CompoundWrite.emptyWrite();
            Iterator<Map.Entry<Path, Boolean>> it = immutableTree.iterator();
            while (true) {
                CompoundWrite compoundWrite = compoundWriteEmptyWrite;
                while (it.hasNext()) {
                    Path key = it.next().getKey();
                    Path pathChild = path.child(key);
                    if (serverCache.isCompleteForPath(pathChild)) {
                        compoundWriteEmptyWrite = compoundWrite.addWrite(key, serverCache.getNode().getChild(pathChild));
                    }
                }
                return applyServerMerge(viewCache, path, compoundWrite, writeTreeRef, node, zIsFiltered, childChangeAccumulator);
            }
        }
        if ((path.isEmpty() && serverCache.isFullyInitialized()) || serverCache.isCompleteForPath(path)) {
            return applyServerOverwrite(viewCache, path, serverCache.getNode().getChild(path), writeTreeRef, node, zIsFiltered, childChangeAccumulator);
        }
        if (!path.isEmpty()) {
            return viewCache;
        }
        CompoundWrite compoundWriteEmptyWrite2 = CompoundWrite.emptyWrite();
        CompoundWrite compoundWriteAddWrite = compoundWriteEmptyWrite2;
        for (NamedNode namedNode : serverCache.getNode()) {
            compoundWriteAddWrite = compoundWriteAddWrite.addWrite(namedNode.getName(), namedNode.getNode());
        }
        return applyServerMerge(viewCache, path, compoundWriteAddWrite, writeTreeRef, node, zIsFiltered, childChangeAccumulator);
    }

    private ViewCache applyServerMerge(ViewCache viewCache, Path path, CompoundWrite compoundWrite, WriteTreeRef writeTreeRef, Node node, boolean z, ChildChangeAccumulator childChangeAccumulator) {
        if (viewCache.getServerCache().getNode().isEmpty() && !viewCache.getServerCache().isFullyInitialized()) {
            return viewCache;
        }
        Utilities.hardAssert(compoundWrite.rootWrite() == null, "Can't have a merge that is an overwrite");
        CompoundWrite compoundWriteAddWrites = path.isEmpty() ? compoundWrite : CompoundWrite.emptyWrite().addWrites(path, compoundWrite);
        Node node2 = viewCache.getServerCache().getNode();
        Map<ChildKey, CompoundWrite> mapChildCompoundWrites = compoundWriteAddWrites.childCompoundWrites();
        ViewCache viewCacheApplyServerOverwrite = viewCache;
        for (Map.Entry<ChildKey, CompoundWrite> entry : mapChildCompoundWrites.entrySet()) {
            ChildKey key = entry.getKey();
            if (node2.hasChild(key)) {
                viewCacheApplyServerOverwrite = applyServerOverwrite(viewCacheApplyServerOverwrite, new Path(key), entry.getValue().apply(node2.getImmediateChild(key)), writeTreeRef, node, z, childChangeAccumulator);
            }
        }
        ViewCache viewCacheApplyServerOverwrite2 = viewCacheApplyServerOverwrite;
        for (Map.Entry<ChildKey, CompoundWrite> entry2 : mapChildCompoundWrites.entrySet()) {
            ChildKey key2 = entry2.getKey();
            boolean z2 = !viewCache.getServerCache().isCompleteForChild(key2) && entry2.getValue().rootWrite() == null;
            if (!node2.hasChild(key2) && !z2) {
                viewCacheApplyServerOverwrite2 = applyServerOverwrite(viewCacheApplyServerOverwrite2, new Path(key2), entry2.getValue().apply(node2.getImmediateChild(key2)), writeTreeRef, node, z, childChangeAccumulator);
            }
        }
        return viewCacheApplyServerOverwrite2;
    }

    private ViewCache applyServerOverwrite(ViewCache viewCache, Path path, Node node, WriteTreeRef writeTreeRef, Node node2, boolean z, ChildChangeAccumulator childChangeAccumulator) {
        IndexedNode indexedNodeUpdatePriority;
        CacheNode serverCache = viewCache.getServerCache();
        NodeFilter indexedFilter = this.filter;
        if (!z) {
            indexedFilter = indexedFilter.getIndexedFilter();
        }
        NodeFilter nodeFilter = indexedFilter;
        boolean z2 = true;
        if (path.isEmpty()) {
            indexedNodeUpdatePriority = nodeFilter.updateFullNode(serverCache.getIndexedNode(), IndexedNode.from(node, nodeFilter.getIndex()), null);
        } else if (!nodeFilter.filtersNodes() || serverCache.isFiltered()) {
            ChildKey front = path.getFront();
            if (!serverCache.isCompleteForPath(path) && path.size() > 1) {
                return viewCache;
            }
            Path pathPopFront = path.popFront();
            Node nodeUpdateChild = serverCache.getNode().getImmediateChild(front).updateChild(pathPopFront, node);
            indexedNodeUpdatePriority = front.isPriorityChildName() ? nodeFilter.updatePriority(serverCache.getIndexedNode(), nodeUpdateChild) : nodeFilter.updateChild(serverCache.getIndexedNode(), front, nodeUpdateChild, pathPopFront, NO_COMPLETE_SOURCE, null);
        } else {
            Utilities.hardAssert(!path.isEmpty(), "An empty path should have been caught in the other branch");
            ChildKey front2 = path.getFront();
            indexedNodeUpdatePriority = nodeFilter.updateFullNode(serverCache.getIndexedNode(), serverCache.getIndexedNode().updateChild(front2, serverCache.getNode().getImmediateChild(front2).updateChild(path.popFront(), node)), null);
        }
        if (!serverCache.isFullyInitialized() && !path.isEmpty()) {
            z2 = false;
        }
        ViewCache viewCacheUpdateServerSnap = viewCache.updateServerSnap(indexedNodeUpdatePriority, z2, nodeFilter.filtersNodes());
        return generateEventCacheAfterServerEvent(viewCacheUpdateServerSnap, path, writeTreeRef, new WriteTreeCompleteChildSource(writeTreeRef, viewCacheUpdateServerSnap, node2), childChangeAccumulator);
    }

    private ViewCache applyUserMerge(ViewCache viewCache, Path path, CompoundWrite compoundWrite, WriteTreeRef writeTreeRef, Node node, ChildChangeAccumulator childChangeAccumulator) {
        Utilities.hardAssert(compoundWrite.rootWrite() == null, "Can't have a merge that is an overwrite");
        ViewCache viewCacheApplyUserOverwrite = viewCache;
        for (Map.Entry<Path, Node> entry : compoundWrite) {
            Path pathChild = path.child(entry.getKey());
            if (cacheHasChild(viewCache, pathChild.getFront())) {
                viewCacheApplyUserOverwrite = applyUserOverwrite(viewCacheApplyUserOverwrite, pathChild, entry.getValue(), writeTreeRef, node, childChangeAccumulator);
            }
        }
        ViewCache viewCacheApplyUserOverwrite2 = viewCacheApplyUserOverwrite;
        for (Map.Entry<Path, Node> entry2 : compoundWrite) {
            Path pathChild2 = path.child(entry2.getKey());
            if (!cacheHasChild(viewCache, pathChild2.getFront())) {
                viewCacheApplyUserOverwrite2 = applyUserOverwrite(viewCacheApplyUserOverwrite2, pathChild2, entry2.getValue(), writeTreeRef, node, childChangeAccumulator);
            }
        }
        return viewCacheApplyUserOverwrite2;
    }

    private ViewCache applyUserOverwrite(ViewCache viewCache, Path path, Node node, WriteTreeRef writeTreeRef, Node node2, ChildChangeAccumulator childChangeAccumulator) {
        Node node3;
        CacheNode eventCache = viewCache.getEventCache();
        WriteTreeCompleteChildSource writeTreeCompleteChildSource = new WriteTreeCompleteChildSource(writeTreeRef, viewCache, node2);
        if (path.isEmpty()) {
            return viewCache.updateEventSnap(this.filter.updateFullNode(viewCache.getEventCache().getIndexedNode(), IndexedNode.from(node, this.filter.getIndex()), childChangeAccumulator), true, this.filter.filtersNodes());
        }
        ChildKey front = path.getFront();
        if (front.isPriorityChildName()) {
            return viewCache.updateEventSnap(this.filter.updatePriority(viewCache.getEventCache().getIndexedNode(), node), eventCache.isFullyInitialized(), eventCache.isFiltered());
        }
        Path pathPopFront = path.popFront();
        Node immediateChild = eventCache.getNode().getImmediateChild(front);
        if (pathPopFront.isEmpty()) {
            node3 = node;
        } else {
            Node completeChild = writeTreeCompleteChildSource.getCompleteChild(front);
            if (completeChild == null) {
                node = EmptyNode.Empty();
            } else if (pathPopFront.getBack().isPriorityChildName() && completeChild.getChild(pathPopFront.getParent()).isEmpty()) {
                node3 = completeChild;
            } else {
                node = completeChild.updateChild(pathPopFront, node);
            }
            node3 = node;
        }
        return !immediateChild.equals(node3) ? viewCache.updateEventSnap(this.filter.updateChild(eventCache.getIndexedNode(), front, node3, pathPopFront, writeTreeCompleteChildSource, childChangeAccumulator), eventCache.isFullyInitialized(), this.filter.filtersNodes()) : viewCache;
    }

    private static boolean cacheHasChild(ViewCache viewCache, ChildKey childKey) {
        return viewCache.getEventCache().isCompleteForChild(childKey);
    }

    private ViewCache generateEventCacheAfterServerEvent(ViewCache viewCache, Path path, WriteTreeRef writeTreeRef, NodeFilter.CompleteChildSource completeChildSource, ChildChangeAccumulator childChangeAccumulator) {
        Node nodeCalcCompleteChild;
        IndexedNode indexedNodeUpdateChild;
        Node nodeCalcCompleteEventCache;
        CacheNode eventCache = viewCache.getEventCache();
        if (writeTreeRef.shadowingWrite(path) != null) {
            return viewCache;
        }
        if (path.isEmpty()) {
            Utilities.hardAssert(viewCache.getServerCache().isFullyInitialized(), "If change path is empty, we must have complete server data");
            if (viewCache.getServerCache().isFiltered()) {
                Node completeServerSnap = viewCache.getCompleteServerSnap();
                if (!(completeServerSnap instanceof ChildrenNode)) {
                    completeServerSnap = EmptyNode.Empty();
                }
                nodeCalcCompleteEventCache = writeTreeRef.calcCompleteEventChildren(completeServerSnap);
            } else {
                nodeCalcCompleteEventCache = writeTreeRef.calcCompleteEventCache(viewCache.getCompleteServerSnap());
            }
            indexedNodeUpdateChild = this.filter.updateFullNode(viewCache.getEventCache().getIndexedNode(), IndexedNode.from(nodeCalcCompleteEventCache, this.filter.getIndex()), childChangeAccumulator);
        } else {
            ChildKey front = path.getFront();
            if (front.isPriorityChildName()) {
                Utilities.hardAssert(path.size() == 1, "Can't have a priority with additional path components");
                Node nodeCalcEventCacheAfterServerOverwrite = writeTreeRef.calcEventCacheAfterServerOverwrite(path, eventCache.getNode(), viewCache.getServerCache().getNode());
                indexedNodeUpdateChild = nodeCalcEventCacheAfterServerOverwrite != null ? this.filter.updatePriority(eventCache.getIndexedNode(), nodeCalcEventCacheAfterServerOverwrite) : eventCache.getIndexedNode();
            } else {
                Path pathPopFront = path.popFront();
                if (eventCache.isCompleteForChild(front)) {
                    Node nodeCalcEventCacheAfterServerOverwrite2 = writeTreeRef.calcEventCacheAfterServerOverwrite(path, eventCache.getNode(), viewCache.getServerCache().getNode());
                    nodeCalcCompleteChild = nodeCalcEventCacheAfterServerOverwrite2 != null ? eventCache.getNode().getImmediateChild(front).updateChild(pathPopFront, nodeCalcEventCacheAfterServerOverwrite2) : eventCache.getNode().getImmediateChild(front);
                } else {
                    nodeCalcCompleteChild = writeTreeRef.calcCompleteChild(front, viewCache.getServerCache());
                }
                Node node = nodeCalcCompleteChild;
                indexedNodeUpdateChild = node != null ? this.filter.updateChild(eventCache.getIndexedNode(), front, node, pathPopFront, completeChildSource, childChangeAccumulator) : eventCache.getIndexedNode();
            }
        }
        return viewCache.updateEventSnap(indexedNodeUpdateChild, eventCache.isFullyInitialized() || path.isEmpty(), this.filter.filtersNodes());
    }

    private ViewCache listenComplete(ViewCache viewCache, Path path, WriteTreeRef writeTreeRef, Node node, ChildChangeAccumulator childChangeAccumulator) {
        CacheNode serverCache = viewCache.getServerCache();
        return generateEventCacheAfterServerEvent(viewCache.updateServerSnap(serverCache.getIndexedNode(), serverCache.isFullyInitialized() || path.isEmpty(), serverCache.isFiltered()), path, writeTreeRef, NO_COMPLETE_SOURCE, childChangeAccumulator);
    }

    private void maybeAddValueEvent(ViewCache viewCache, ViewCache viewCache2, List<Change> list) {
        CacheNode eventCache = viewCache2.getEventCache();
        if (eventCache.isFullyInitialized()) {
            boolean z = eventCache.getNode().isLeafNode() || eventCache.getNode().isEmpty();
            if (list.isEmpty() && viewCache.getEventCache().isFullyInitialized() && ((!z || eventCache.getNode().equals(viewCache.getCompleteEventSnap())) && eventCache.getNode().getPriority().equals(viewCache.getCompleteEventSnap().getPriority()))) {
                return;
            }
            list.add(Change.valueChange(eventCache.getIndexedNode()));
        }
    }

    public ProcessorResult applyOperation(ViewCache viewCache, Operation operation, WriteTreeRef writeTreeRef, Node node) {
        ChildChangeAccumulator childChangeAccumulator;
        ViewCache viewCache2;
        ViewCache viewCacheApplyServerOverwrite;
        ChildChangeAccumulator childChangeAccumulator2 = new ChildChangeAccumulator();
        int i = AnonymousClass2.$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType[operation.getType().ordinal()];
        boolean z = false;
        if (i == 1) {
            Overwrite overwrite = (Overwrite) operation;
            if (overwrite.getSource().isFromUser()) {
                viewCache2 = viewCache;
                viewCacheApplyServerOverwrite = applyUserOverwrite(viewCache2, overwrite.getPath(), overwrite.getSnapshot(), writeTreeRef, node, childChangeAccumulator2);
            } else {
                Utilities.hardAssert(overwrite.getSource().isFromServer());
                if (overwrite.getSource().isTagged() || (viewCache.getServerCache().isFiltered() && !overwrite.getPath().isEmpty())) {
                    z = true;
                }
                childChangeAccumulator = childChangeAccumulator2;
                boolean z2 = z;
                viewCache2 = viewCache;
                viewCacheApplyServerOverwrite = applyServerOverwrite(viewCache2, overwrite.getPath(), overwrite.getSnapshot(), writeTreeRef, node, z2, childChangeAccumulator);
                childChangeAccumulator2 = childChangeAccumulator;
            }
        } else if (i == 2) {
            Merge merge = (Merge) operation;
            if (merge.getSource().isFromUser()) {
                viewCache2 = viewCache;
                viewCacheApplyServerOverwrite = applyUserMerge(viewCache2, merge.getPath(), merge.getChildren(), writeTreeRef, node, childChangeAccumulator2);
            } else {
                Utilities.hardAssert(merge.getSource().isFromServer());
                childChangeAccumulator = childChangeAccumulator2;
                viewCache2 = viewCache;
                viewCacheApplyServerOverwrite = applyServerMerge(viewCache2, merge.getPath(), merge.getChildren(), writeTreeRef, node, merge.getSource().isTagged() || viewCache.getServerCache().isFiltered(), childChangeAccumulator);
                childChangeAccumulator2 = childChangeAccumulator;
            }
        } else if (i == 3) {
            viewCache2 = viewCache;
            AckUserWrite ackUserWrite = (AckUserWrite) operation;
            viewCacheApplyServerOverwrite = !ackUserWrite.isRevert() ? ackUserWrite(viewCache2, ackUserWrite.getPath(), ackUserWrite.getAffectedTree(), writeTreeRef, node, childChangeAccumulator2) : revertUserWrite(viewCache2, ackUserWrite.getPath(), writeTreeRef, node, childChangeAccumulator2);
        } else {
            if (i != 4) {
                throw new AssertionError("Unknown operation: " + operation.getType());
            }
            viewCache2 = viewCache;
            viewCacheApplyServerOverwrite = listenComplete(viewCache2, operation.getPath(), writeTreeRef, node, childChangeAccumulator2);
        }
        ArrayList arrayList = new ArrayList(childChangeAccumulator2.getChanges());
        maybeAddValueEvent(viewCache2, viewCacheApplyServerOverwrite, arrayList);
        return new ProcessorResult(viewCacheApplyServerOverwrite, arrayList);
    }

    public ViewCache revertUserWrite(ViewCache viewCache, Path path, WriteTreeRef writeTreeRef, Node node, ChildChangeAccumulator childChangeAccumulator) {
        ChildChangeAccumulator childChangeAccumulator2;
        if (writeTreeRef.shadowingWrite(path) != null) {
            return viewCache;
        }
        WriteTreeCompleteChildSource writeTreeCompleteChildSource = new WriteTreeCompleteChildSource(writeTreeRef, viewCache, node);
        IndexedNode indexedNode = viewCache.getEventCache().getIndexedNode();
        if (path.isEmpty() || path.getFront().isPriorityChildName()) {
            indexedNode = this.filter.updateFullNode(indexedNode, IndexedNode.from(viewCache.getServerCache().isFullyInitialized() ? writeTreeRef.calcCompleteEventCache(viewCache.getCompleteServerSnap()) : writeTreeRef.calcCompleteEventChildren(viewCache.getServerCache().getNode()), this.filter.getIndex()), childChangeAccumulator);
        } else {
            ChildKey front = path.getFront();
            Node nodeCalcCompleteChild = writeTreeRef.calcCompleteChild(front, viewCache.getServerCache());
            if (nodeCalcCompleteChild == null && viewCache.getServerCache().isCompleteForChild(front)) {
                nodeCalcCompleteChild = indexedNode.getNode().getImmediateChild(front);
            }
            Node node2 = nodeCalcCompleteChild;
            if (node2 != null) {
                childChangeAccumulator2 = childChangeAccumulator;
                indexedNode = this.filter.updateChild(indexedNode, front, node2, path.popFront(), writeTreeCompleteChildSource, childChangeAccumulator2);
            } else {
                childChangeAccumulator2 = childChangeAccumulator;
                if (node2 == null && viewCache.getEventCache().getNode().hasChild(front)) {
                    indexedNode = this.filter.updateChild(indexedNode, front, EmptyNode.Empty(), path.popFront(), writeTreeCompleteChildSource, childChangeAccumulator2);
                }
            }
            if (indexedNode.getNode().isEmpty() && viewCache.getServerCache().isFullyInitialized()) {
                Node nodeCalcCompleteEventCache = writeTreeRef.calcCompleteEventCache(viewCache.getCompleteServerSnap());
                if (nodeCalcCompleteEventCache.isLeafNode()) {
                    indexedNode = this.filter.updateFullNode(indexedNode, IndexedNode.from(nodeCalcCompleteEventCache, this.filter.getIndex()), childChangeAccumulator2);
                }
            }
        }
        return viewCache.updateEventSnap(indexedNode, viewCache.getServerCache().isFullyInitialized() || writeTreeRef.shadowingWrite(Path.getEmptyPath()) != null, this.filter.filtersNodes());
    }
}
