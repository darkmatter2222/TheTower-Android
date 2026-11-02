.class public Lcom/google/firebase/database/core/SyncTree;
.super Ljava/lang/Object;
.source "SyncTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/SyncTree$ListenProvider;,
        Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;,
        Lcom/google/firebase/database/core/SyncTree$ListenContainer;,
        Lcom/google/firebase/database/core/SyncTree$CompletionListener;
    }
.end annotation


# static fields
.field private static final SIZE_THRESHOLD_FOR_COMPOUND_HASH:J = 0x400L


# instance fields
.field private final keepSyncedQueries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private final listenProvider:Lcom/google/firebase/database/core/SyncTree$ListenProvider;

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private nextQueryTag:J

.field private final pendingWriteTree:Lcom/google/firebase/database/core/WriteTree;

.field private final persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

.field private final queryToTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Lcom/google/firebase/database/core/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/core/SyncPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final tagToQueryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/Tag;",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/persistence/PersistenceManager;Lcom/google/firebase/database/core/SyncTree$ListenProvider;)V
    .locals 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    .line 1003
    iput-wide v0, p0, Lcom/google/firebase/database/core/SyncTree;->nextQueryTag:J

    .line 168
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 169
    new-instance v0, Lcom/google/firebase/database/core/WriteTree;

    invoke-direct {v0}, Lcom/google/firebase/database/core/WriteTree;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->pendingWriteTree:Lcom/google/firebase/database/core/WriteTree;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->tagToQueryMap:Ljava/util/Map;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->queryToTagMap:Ljava/util/Map;

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    .line 173
    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree;->listenProvider:Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    .line 174
    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    .line 175
    const-string p2, "SyncTree"

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/firebase/database/core/SyncTree;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/View;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/core/SyncTree;->setupListener(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Ljava/util/List;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/SyncTree;->collectDistinctViewsForSubTree(Lcom/google/firebase/database/core/utilities/ImmutableTree;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/SyncTree;->queryForListening(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/firebase/database/core/SyncTree;->listenProvider:Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/firebase/database/core/SyncTree;Ljava/util/List;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/SyncTree;->removeTags(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/core/SyncTree;->applyOperationDescendantsHelper(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/WriteTree;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/firebase/database/core/SyncTree;->pendingWriteTree:Lcom/google/firebase/database/core/WriteTree;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/SyncTree;->applyOperationToSyncPoints(Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;)Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/SyncTree;->queryForTag(Lcom/google/firebase/database/core/Tag;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/core/SyncTree;->applyTaggedOperation(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/firebase/database/core/SyncTree;)Ljava/util/Map;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/firebase/database/core/SyncTree;->queryToTagMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/Tag;
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/google/firebase/database/core/SyncTree;->getNextQueryTag()Lcom/google/firebase/database/core/Tag;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/firebase/database/core/SyncTree;)Ljava/util/Map;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/google/firebase/database/core/SyncTree;->tagToQueryMap:Ljava/util/Map;

    return-object p0
.end method

.method private applyOperationDescendantsHelper(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/operation/Operation;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/core/SyncPoint;",
            ">;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 1074
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/SyncPoint;

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 1079
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    :cond_0
    move-object v3, p3

    .line 1084
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p2

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$16;

    move-object v2, p0

    move-object v5, p1

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/SyncTree$16;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/operation/Operation;Ljava/util/List;)V

    .line 1087
    invoke-virtual {p2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->inOrderTraversal(Lcom/google/firebase/database/collection/LLRBNode$NodeVisitor;)V

    if-eqz v0, :cond_1

    .line 1106
    invoke-virtual {v0, v5, v4, v3}, Lcom/google/firebase/database/core/SyncPoint;->applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v6
.end method

.method private applyOperationHelper(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/operation/Operation;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/core/SyncPoint;",
            ">;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 1036
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/core/SyncTree;->applyOperationDescendantsHelper(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1040
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/SyncPoint;

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    .line 1044
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    .line 1047
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1048
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    .line 1049
    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/operation/Operation;->operationForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/operation/Operation;

    move-result-object v3

    .line 1050
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_2

    .line 1053
    invoke-interface {p3, v2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 1054
    :goto_0
    invoke-virtual {p4, v2}, Lcom/google/firebase/database/core/WriteTreeRef;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/WriteTreeRef;

    move-result-object v2

    .line 1056
    invoke-direct {p0, v3, p2, v4, v2}, Lcom/google/firebase/database/core/SyncTree;->applyOperationHelper(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;

    move-result-object p2

    .line 1055
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz v0, :cond_4

    .line 1061
    invoke-virtual {v0, p1, p4, p3}, Lcom/google/firebase/database/core/SyncPoint;->applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v1
.end method

.method private applyOperationToSyncPoints(Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/operation/Operation;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 1023
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree;->pendingWriteTree:Lcom/google/firebase/database/core/WriteTree;

    .line 1027
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/WriteTree;->childWrites(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/WriteTreeRef;

    move-result-object v1

    const/4 v2, 0x0

    .line 1023
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/firebase/database/core/SyncTree;->applyOperationHelper(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private applyTaggedOperation(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/operation/Operation;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Lcom/google/firebase/database/core/operation/Operation;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 404
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    .line 405
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/SyncPoint;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    const-string v2, "Missing sync point for query tag that we\'re tracking"

    invoke-static {v1, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree;->pendingWriteTree:Lcom/google/firebase/database/core/WriteTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/WriteTree;->childWrites(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/WriteTreeRef;

    move-result-object p1

    const/4 v1, 0x0

    .line 408
    invoke-virtual {v0, p2, p1, v1}, Lcom/google/firebase/database/core/SyncPoint;->applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private collectDistinctViewsForSubTree(Lcom/google/firebase/database/core/utilities/ImmutableTree;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/core/SyncPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/View;",
            ">;"
        }
    .end annotation

    .line 871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/core/SyncTree;->collectDistinctViewsForSubTree(Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;)V

    return-object v0
.end method

.method private collectDistinctViewsForSubTree(Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/core/SyncPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/View;",
            ">;)V"
        }
    .end annotation

    .line 878
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/SyncPoint;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {v0}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteView()Lcom/google/firebase/database/core/view/View;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 883
    invoke-virtual {v0}, Lcom/google/firebase/database/core/SyncPoint;->getQueryViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 885
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 886
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/core/SyncTree;->collectDistinctViewsForSubTree(Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getNextQueryTag()Lcom/google/firebase/database/core/Tag;
    .locals 5

    .line 1007
    new-instance v0, Lcom/google/firebase/database/core/Tag;

    iget-wide v1, p0, Lcom/google/firebase/database/core/SyncTree;->nextQueryTag:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/firebase/database/core/SyncTree;->nextQueryTag:J

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/core/Tag;-><init>(J)V

    return-object v0
.end method

.method private queryForListening(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 1

    .line 904
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 906
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private queryForTag(Lcom/google/firebase/database/core/Tag;)Lcom/google/firebase/database/core/view/QuerySpec;
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->tagToQueryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/view/QuerySpec;

    return-object p1
.end method

.method private removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Lcom/google/firebase/database/DatabaseError;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$14;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/SyncTree$14;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Z)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private removeTags(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            ">;)V"
        }
    .end annotation

    .line 892
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 893
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v1

    if-nez v1, :cond_0

    .line 895
    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/SyncTree;->tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 896
    :goto_1
    invoke-static {v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 897
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree;->queryToTagMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->tagToQueryMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setupListener(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/View;)V
    .locals 3

    .line 914
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 915
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/SyncTree;->tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v1

    .line 916
    new-instance v2, Lcom/google/firebase/database/core/SyncTree$ListenContainer;

    invoke-direct {v2, p0, p2}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/View;)V

    .line 918
    iget-object p2, p0, Lcom/google/firebase/database/core/SyncTree;->listenProvider:Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/SyncTree;->queryForListening(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    invoke-interface {p2, p1, v1, v2, v2}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V

    .line 920
    iget-object p1, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 925
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string p2, "If we\'re adding a query, it shouldn\'t be shadowed"

    .line 924
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void

    .line 929
    :cond_0
    new-instance p2, Lcom/google/firebase/database/core/SyncTree$15;

    invoke-direct {p2, p0}, Lcom/google/firebase/database/core/SyncTree$15;-><init>(Lcom/google/firebase/database/core/SyncTree;)V

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->foreach(Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)V

    return-void
.end method


# virtual methods
.method public ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lcom/google/firebase/database/core/utilities/Clock;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$3;

    move-object v2, p0

    move-wide v4, p1

    move v6, p3

    move v3, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/database/core/SyncTree$3;-><init>(Lcom/google/firebase/database/core/SyncTree;ZJZLcom/google/firebase/database/core/utilities/Clock;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/SyncTree;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Z)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/database/core/SyncTree$13;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/EventRegistration;Z)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyListenComplete(Lcom/google/firebase/database/core/Path;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$7;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/core/SyncTree$7;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyServerMerge(Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/firebase/database/core/SyncTree$6;-><init>(Lcom/google/firebase/database/core/SyncTree;Ljava/util/Map;Lcom/google/firebase/database/core/Path;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/database/core/SyncTree$5;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyServerRangeMerges(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/snapshot/RangeMerge;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/SyncPoint;

    if-nez v0, :cond_0

    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 335
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteView()Lcom/google/firebase/database/core/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getServerCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 338
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/RangeMerge;

    .line 339
    invoke-virtual {v1, v0}, Lcom/google/firebase/database/snapshot/RangeMerge;->applyTo(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/core/SyncTree;->applyServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 345
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public applyTaggedListenComplete(Lcom/google/firebase/database/core/Tag;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Tag;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$8;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/core/SyncTree$8;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyTaggedQueryMerge(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;",
            "Lcom/google/firebase/database/core/Tag;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$10;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/firebase/database/core/SyncTree$10;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyTaggedQueryOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/Tag;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$9;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/firebase/database/core/SyncTree$9;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyTaggedRangeMerges(Lcom/google/firebase/database/core/Path;Ljava/util/List;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/snapshot/RangeMerge;",
            ">;",
            "Lcom/google/firebase/database/core/Tag;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 352
    invoke-direct {p0, p3}, Lcom/google/firebase/database/core/SyncTree;->queryForTag(Lcom/google/firebase/database/core/Tag;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/Path;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 355
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/SyncPoint;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 356
    :goto_0
    const-string v5, "Missing sync point for query tag that we\'re tracking"

    invoke-static {v4, v5}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 357
    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/SyncPoint;->viewForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 358
    :goto_1
    const-string v1, "Missing view for query tag that we\'re tracking"

    invoke-static {v2, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/View;->getServerCache()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 360
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/RangeMerge;

    .line 361
    invoke-virtual {v1, v0}, Lcom/google/firebase/database/snapshot/RangeMerge;->applyTo(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_2

    .line 363
    :cond_2
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/firebase/database/core/SyncTree;->applyTaggedQueryOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 366
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public applyUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/CompoundWrite;JZ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/CompoundWrite;",
            "Lcom/google/firebase/database/core/CompoundWrite;",
            "JZ)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$2;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    move-wide v6, p4

    move v3, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/SyncTree$2;-><init>(Lcom/google/firebase/database/core/SyncTree;ZLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;JLcom/google/firebase/database/core/CompoundWrite;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public applyUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;JZZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "JZZ)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 190
    :goto_1
    const-string v1, "We shouldn\'t be persisting non-visible writes."

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$1;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    move-wide v6, p4

    move/from16 v9, p6

    move/from16 v3, p7

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/database/core/SyncTree$1;-><init>(Lcom/google/firebase/database/core/SyncTree;ZLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;JLcom/google/firebase/database/snapshot/Node;Z)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 984
    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/SyncPoint;

    .line 987
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p1

    .line 989
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    .line 990
    invoke-virtual {v3}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 991
    invoke-virtual {v1, v4}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 992
    invoke-static {v1, p1}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v5

    if-eqz v4, :cond_1

    .line 993
    invoke-virtual {v0, v4}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->emptyInstance()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 994
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/SyncPoint;

    if-eqz v4, :cond_2

    .line 996
    invoke-virtual {v4, v5}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 998
    :cond_2
    invoke-virtual {v3}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_0

    .line 999
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->pendingWriteTree:Lcom/google/firebase/database/core/WriteTree;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, p2, v1}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public calcCompleteEventCacheFromRoot(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/SyncPoint;

    if-eqz v0, :cond_0

    .line 965
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 968
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree;->pendingWriteTree:Lcom/google/firebase/database/core/WriteTree;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/firebase/database/core/WriteTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Ljava/util/List;Z)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    .line 971
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/core/SyncTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public getServerValue(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/snapshot/Node;
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/core/SyncTree$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/snapshot/Node;

    return-object p1
.end method

.method getSyncPointTree()Lcom/google/firebase/database/core/utilities/ImmutableTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Lcom/google/firebase/database/core/SyncPoint;",
            ">;"
        }
    .end annotation

    .line 1114
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keepSynced(Lcom/google/firebase/database/core/view/QuerySpec;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 851
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/core/SyncTree;->keepSynced(Lcom/google/firebase/database/core/view/QuerySpec;ZZ)V

    return-void
.end method

.method public keepSynced(Lcom/google/firebase/database/core/view/QuerySpec;ZZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 855
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    new-instance p2, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    invoke-direct {p2, p1}, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;-><init>(Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/database/core/SyncTree;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Z)Ljava/util/List;

    .line 859
    iget-object p2, p0, Lcom/google/firebase/database/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 860
    iget-object p2, p0, Lcom/google/firebase/database/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 861
    new-instance p2, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;

    invoke-direct {p2, p1}, Lcom/google/firebase/database/core/SyncTree$KeepSyncedEventRegistration;-><init>(Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Z)Ljava/util/List;

    .line 862
    iget-object p2, p0, Lcom/google/firebase/database/core/SyncTree;->keepSyncedQueries:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method synthetic lambda$getServerValue$0$com-google-firebase-database-core-SyncTree(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/snapshot/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 491
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    move v5, v3

    .line 500
    :goto_0
    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_5

    .line 501
    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/SyncPoint;

    if-eqz v6, :cond_3

    if-eqz v2, :cond_0

    goto :goto_1

    .line 506
    :cond_0
    invoke-virtual {v6, v4}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    :goto_1
    if-nez v5, :cond_2

    .line 508
    invoke-virtual {v6}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v5, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v5, v7

    .line 511
    :cond_3
    :goto_3
    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ""

    invoke-static {v6}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    .line 512
    :goto_4
    invoke-virtual {v1, v6}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    .line 513
    invoke-virtual {v4}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    goto :goto_0

    .line 516
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/SyncPoint;

    if-nez v1, :cond_6

    .line 518
    new-instance v1, Lcom/google/firebase/database/core/SyncPoint;

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    invoke-direct {v1, v4}, Lcom/google/firebase/database/core/SyncPoint;-><init>(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V

    .line 519
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {v4, v0, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    iput-object v4, p0, Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_5

    .line 524
    :cond_7
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/SyncPoint;->getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 527
    :goto_5
    new-instance v4, Lcom/google/firebase/database/core/view/CacheNode;

    if-eqz v2, :cond_8

    move-object v5, v2

    goto :goto_6

    .line 530
    :cond_8
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v5

    .line 531
    :goto_6
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v6

    .line 529
    invoke-static {v5, v6}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v5

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    move v7, v3

    :goto_7
    invoke-direct {v4, v5, v7, v3}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 535
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree;->pendingWriteTree:Lcom/google/firebase/database/core/WriteTree;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/core/WriteTree;->childWrites(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/WriteTreeRef;

    move-result-object v0

    .line 536
    invoke-virtual {v1, p1, v0, v4}, Lcom/google/firebase/database/core/SyncPoint;->getView(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/core/view/View;

    move-result-object p1

    .line 537
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/View;->getCompleteNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public persistenceServerCache(Lcom/google/firebase/database/Query;)Lcom/google/firebase/database/DataSnapshot;
    .locals 2

    .line 484
    invoke-virtual {p1}, Lcom/google/firebase/database/Query;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    invoke-virtual {p1}, Lcom/google/firebase/database/Query;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->serverCache(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    .line 483
    invoke-static {v0, p1}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    return-object p1
.end method

.method public removeAllEventRegistrations(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/QuerySpec;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 675
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAllWrites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$4;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/core/SyncTree$4;-><init>(Lcom/google/firebase/database/core/SyncTree;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 659
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 658
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 665
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    const/4 v1, 0x0

    .line 664
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setQueryActive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$11;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/core/SyncTree$11;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    new-instance v1, Lcom/google/firebase/database/core/SyncTree$12;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/core/SyncTree$12;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree;->queryToTagMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/Tag;

    return-object p1
.end method
