package kotlin;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlinx.coroutines.Deferred;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
public final class g81 {
    public String b;
    public p53 d;
    public Deferred e;
    public String f;
    public int a = -1;
    public Map c = new LinkedHashMap();

    /* JADX WARN: Code duplicated, block: B:14:0x004d  */
    public final g81 a(Map map) {
        Map linkedHashMap;
        if (map != null) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry : map.entrySet()) {
                p005kotlin.Pair pair = p005kotlin.TuplesKt.to((String) entry.getKey(), CollectionsKt.joinToString$default((List) entry.getValue(), ", ", null, null, 0, null, null, 62, null));
                if (pair != null) {
                    arrayList.add(pair);
                }
            }
            Map map2 = MapsKt.toMap(arrayList);
            if (map2 == null || (linkedHashMap = MapsKt.toMutableMap(map2)) == null) {
                linkedHashMap = new LinkedHashMap();
            }
        } else {
            linkedHashMap = new LinkedHashMap();
        }
        this.c = linkedHashMap;
        return this;
    }

    public final h81 a() {
        int i = this.a;
        if (i >= 0) {
            return new h81(i, this.b, this.c, this.d, this.e, this.f, 0);
        }
        throw new IllegalStateException(("Invalid status code: " + i).toString());
    }
}
