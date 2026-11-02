package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.C3635i2;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.CollectionToArray;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.TypeIntrinsics;
import p005kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@p005kotlin.Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010*\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0003*\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u0004B\u001d\b\u0007\u0012\u0012\u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040(¢\u0006\u0004\b4\u00105B\u0017\b\u0017\u0012\f\u00101\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0004\b4\u00106J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\r\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J%\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001aH\u0096\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001d2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001e\u0010 J\u001a\u0010\"\u001a\u00020\u00052\b\u0010!\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\"\u0010\nJ\u000f\u0010#\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'R \u0010+\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u001e\u0010.\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00028\u00000\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u0014\u00103\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u0010$¨\u00067"}, d2 = {"Lads_mobile_sdk/lo0;", "E", "", "P", "", "", "isEmpty", "()Z", "element", "contains", "(Ljava/lang/Object;)Z", "", "elements", "containsAll", "(Ljava/util/Collection;)Z", "", FirebaseAnalytics.Param.INDEX, "get", "(I)Ljava/lang/Object;", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "fromIndex", "toIndex", "subList", "(II)Ljava/util/List;", "", "iterator", "()Ljava/util/Iterator;", "", "listIterator", "()Ljava/util/ListIterator;", "(I)Ljava/util/ListIterator;", C3635i2.d, "equals", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lkotlin/Function0;", "a", "Lkotlin/jvm/functions/Function0;", "delegateSupplier", "b", "Ljava/util/List;", "memoizedDelegate", "c", "()Ljava/util/List;", "delegate", "d", "size", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "(Ljava/util/List;)V", "libs"}, k = 1, mv = {1, 9, 0})
public final class lo0<E, P> implements List<E>, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Function0<List<E>> delegateSupplier;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private List<? extends E> memoizedDelegate;

    /* JADX WARN: Illegal instructions before constructor call */
    public lo0(List<? extends E> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Function0 function0 = Function0.a;
        Intrinsics.checkNotNull(function0, "null cannot be cast to non-null type kotlin.Function0<kotlin.collections.List<E of com.google.protobuf.kotlin.DslList>>");
        this((Function0) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function0, 0));
        this.memoizedDelegate = delegate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public lo0(Function0<? extends List<? extends E>> delegateSupplier) {
        Intrinsics.checkNotNullParameter(delegateSupplier, "delegateSupplier");
        this.delegateSupplier = delegateSupplier;
    }

    private final List<E> c() {
        List<? extends E> list = this.memoizedDelegate;
        if (list != null) {
            return list;
        }
        yh1.e eVar = (List<? extends E>) this.delegateSupplier.invoke();
        this.memoizedDelegate = eVar;
        return eVar;
    }

    @Override // java.util.List
    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object element) {
        return c().contains(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return c().containsAll(elements);
    }

    public int d() {
        return c().size();
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object other) {
        return Intrinsics.areEqual(c(), other);
    }

    @Override // java.util.List
    public E get(int index) {
        return c().get(index);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return c().hashCode();
    }

    @Override // java.util.List
    public int indexOf(Object element) {
        return c().indexOf(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return c().isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new cw3(c().iterator());
    }

    @Override // java.util.List
    public int lastIndexOf(Object element) {
        return c().lastIndexOf(element);
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new dw3(c().listIterator());
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int index) {
        return new dw3(c().listIterator(index));
    }

    @Override // java.util.List
    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<E> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return d();
    }

    @Override // java.util.List
    public void sort(Comparator<? super E> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List<E> subList(int fromIndex, int toIndex) {
        return c().subList(fromIndex, toIndex);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    public String toString() {
        return c().toString();
    }
}
