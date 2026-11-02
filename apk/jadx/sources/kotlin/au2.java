package kotlin;

import com.google.common.collect.ForwardingQueue;
import java.util.Collection;
import java.util.LinkedList;
import java.util.Queue;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class au2 extends ForwardingQueue {
    public final LinkedList a;
    public final Mutex b;

    public /* synthetic */ au2() {
        this(new LinkedList());
    }

    public au2(LinkedList preloadedAdItemList) {
        Intrinsics.checkNotNullParameter(preloadedAdItemList, "preloadedAdItemList");
        this.a = preloadedAdItemList;
        this.b = MutexKt.Mutex$default(false, 1, null);
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
    public final boolean add(Object obj) {
        yt2 itemToAdd = (yt2) obj;
        Intrinsics.checkNotNullParameter(itemToAdd, "itemToAdd");
        return ((Boolean) BuildersKt__BuildersKt.runBlocking$default(null, new zt2(this, itemToAdd, null), 1, null)).booleanValue();
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof yt2) {
            return super.contains((yt2) obj);
        }
        return false;
    }

    @Override // com.google.common.collect.ForwardingQueue, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public final Object delegate() {
        return this.a;
    }

    @Override // com.google.common.collect.ForwardingQueue, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public final Collection delegate() {
        return this.a;
    }

    @Override // com.google.common.collect.ForwardingQueue, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public final Queue delegate() {
        return this.a;
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
    public final /* bridge */ boolean remove(Object obj) {
        if (obj instanceof yt2) {
            return super.remove((yt2) obj);
        }
        return false;
    }
}
