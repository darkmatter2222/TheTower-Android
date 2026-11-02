package kotlin;

import com.ironsource.C3510b4;
import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
@p005kotlin.Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010&\n\u0002\b\t\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B\u001b\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0006\u001a\u00028\u00008\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\b\u001a\u00028\u00018\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\f"}, d2 = {"Lads_mobile_sdk/fw3;", "K", "V", "", "getKey", "()Ljava/lang/Object;", C3510b4.i.W, "getValue", "value", "delegate", "<init>", "(Ljava/util/Map$Entry;)V", "libs"}, k = 1, mv = {1, 9, 0})
public final class fw3<K, V> implements Map.Entry<K, V>, KMappedMarker {
    private final /* synthetic */ Map.Entry<K, V> a;

    /* JADX WARN: Multi-variable type inference failed */
    public fw3(Map.Entry<? extends K, ? extends V> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.a = delegate;
    }

    @Override // java.util.Map.Entry
    public K getKey() {
        return this.a.getKey();
    }

    @Override // java.util.Map.Entry
    public V getValue() {
        return this.a.getValue();
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
