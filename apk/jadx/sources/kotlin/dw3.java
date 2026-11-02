package kotlin;

import java.util.ListIterator;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@p005kotlin.Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010*\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0004\u001a\u00020\u0003H\u0096\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0003H\u0096\u0001¢\u0006\u0004\b\u0006\u0010\u0005J\u0010\u0010\u0007\u001a\u00028\u0000H\u0096\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00028\u0000H\u0096\u0001¢\u0006\u0004\b\f\u0010\bJ\u0010\u0010\r\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b\r\u0010\u000b¨\u0006\u0011"}, d2 = {"Lads_mobile_sdk/dw3;", "E", "", "", "hasNext", "()Z", "hasPrevious", "next", "()Ljava/lang/Object;", "", "nextIndex", "()I", "previous", "previousIndex", "delegate", "<init>", "(Ljava/util/ListIterator;)V", "libs"}, k = 1, mv = {1, 9, 0})
public final class dw3<E> implements ListIterator<E>, KMappedMarker {
    private final /* synthetic */ ListIterator<E> a;

    /* JADX WARN: Multi-variable type inference failed */
    public dw3(ListIterator<? extends E> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.a = delegate;
    }

    @Override // java.util.ListIterator
    public void add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.a.hasNext();
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public E next() {
        return this.a.next();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.a.nextIndex();
    }

    @Override // java.util.ListIterator
    public E previous() {
        return this.a.previous();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public void set(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
