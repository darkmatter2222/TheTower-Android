package kotlin;

import java.util.Iterator;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@p005kotlin.Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000b\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u0004\u001a\u00020\u0003H\u0096\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00028\u0000H\u0096\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lads_mobile_sdk/cw3;", "E", "", "", "hasNext", "()Z", "next", "()Ljava/lang/Object;", "delegate", "<init>", "(Ljava/util/Iterator;)V", "libs"}, k = 1, mv = {1, 9, 0})
public final class cw3<E> implements Iterator<E>, KMappedMarker {
    private final /* synthetic */ Iterator<E> a;

    /* JADX WARN: Multi-variable type inference failed */
    public cw3(Iterator<? extends E> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.a = delegate;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.Iterator
    public E next() {
        return this.a.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
