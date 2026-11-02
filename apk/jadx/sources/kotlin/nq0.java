package kotlin;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class nq0 extends LinkedHashMap {
    public final int a;
    public final Object b;
    public final List c;

    public nq0(int i, ArrayList arrayList) {
        aa3 aa3Var = aa3.EVICTION_REASON_OVERFLOW;
        this.a = i;
        this.b = aa3Var;
        this.c = arrayList;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        if (size() <= this.a) {
            return false;
        }
        this.c.add(new p005kotlin.Pair(this.b, entry.getValue()));
        return true;
    }
}
