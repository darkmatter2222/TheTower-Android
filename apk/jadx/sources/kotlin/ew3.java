package kotlin;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@p005kotlin.Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\u0010\"\n\u0002\u0010(\n\u0002\b\b\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0005B!\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0005¢\u0006\u0004\b\f\u0010\rJ\"\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u0006H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bR&\u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00040\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lads_mobile_sdk/ew3;", "K", "V", "Lads_mobile_sdk/bw3;", "", "", "", "iterator", "()Ljava/util/Iterator;", "b", "Ljava/util/Set;", "delegate", "<init>", "(Ljava/util/Set;)V", "libs"}, k = 1, mv = {1, 9, 0})
public final class ew3<K, V> extends bw3<Map.Entry<? extends K, ? extends V>> implements Set<Map.Entry<? extends K, ? extends V>>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Set<Map.Entry<K, V>> delegate;

    @p005kotlin.Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0010(\n\u0002\u0010&\n\u0002\u0010\u000b\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u0003H\u0096\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"ads_mobile_sdk/ew3$a", "", "", "", "hasNext", "()Z", "b", "()Ljava/util/Map$Entry;", "libs"}, k = 1, mv = {1, 9, 0})
    public static final class a implements Iterator<Map.Entry<? extends K, ? extends V>>, KMappedMarker {
        private final /* synthetic */ Iterator<Map.Entry<K, V>> a;
        final /* synthetic */ Iterator<Map.Entry<K, V>> b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Iterator<? extends Map.Entry<? extends K, ? extends V>> it) {
            this.b = it;
            this.a = it;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return new fw3(this.b.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ew3(Set<? extends Map.Entry<? extends K, ? extends V>> delegate) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    public /* bridge */ boolean a(Map.Entry<? extends Object, ? extends Object> entry) {
        return super.contains(entry);
    }

    @Override // kotlin.bw3, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return a((Map.Entry) obj);
        }
        return false;
    }

    @Override // kotlin.bw3, java.util.Collection, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new a(this.delegate.iterator());
    }
}
