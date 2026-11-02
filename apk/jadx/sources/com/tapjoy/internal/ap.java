package com.tapjoy.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class ap<E> implements ar<E> {
    private final List<E> a;

    public ap(List<E> list) {
        this.a = list;
    }

    @Override // com.tapjoy.internal.ar
    public final E a(int i) {
        return this.a.get(i);
    }

    @Override // java.util.Queue, java.util.Collection
    public final boolean add(E e) {
        return this.a.add(e);
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        return this.a.addAll(collection);
    }

    @Override // com.tapjoy.internal.ar
    public final void b(int i) {
        aq.a(this.a, i);
    }

    @Override // java.util.Collection
    public final void clear() {
        this.a.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.a.contains(obj);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        return this.a.containsAll(collection);
    }

    @Override // java.util.Queue
    public final E element() {
        E ePeek = peek();
        if (ePeek != null) {
            return ePeek;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        return this.a.equals(obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return this.a.iterator();
    }

    @Override // java.util.Queue
    public final boolean offer(E e) {
        return this.a.add(e);
    }

    @Override // java.util.Queue
    public final E peek() {
        if (this.a.isEmpty()) {
            return null;
        }
        return this.a.get(0);
    }

    @Override // java.util.Queue
    public final E poll() {
        if (this.a.isEmpty()) {
            return null;
        }
        return this.a.remove(0);
    }

    @Override // java.util.Queue
    public final E remove() {
        E ePoll = poll();
        if (ePoll != null) {
            return ePoll;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        return this.a.remove(obj);
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        return this.a.removeAll(collection);
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        return this.a.retainAll(collection);
    }

    @Override // java.util.Collection
    public final int size() {
        return this.a.size();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return this.a.toArray();
    }

    @Override // java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) this.a.toArray(tArr);
    }
}
