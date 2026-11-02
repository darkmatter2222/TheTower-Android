package kotlin;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class kq0 {
    public final CoroutineScope a;
    public final Map b;
    public final ub3 c;

    public kq0(CoroutineScope scope, Map listeners, ub3 serialEventQueue) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        Intrinsics.checkNotNullParameter(serialEventQueue, "serialEventQueue");
        this.a = scope;
        this.b = listeners;
        this.c = serialEventQueue;
    }

    public static p005kotlin.Pair a(Map map, jq0 predicate) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (((Boolean) predicate.invoke(entry)).booleanValue()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            } else {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        return new p005kotlin.Pair(linkedHashMap, linkedHashMap2);
    }

    public final Map f() {
        return this.b;
    }

    public final CoroutineScope g() {
        return this.a;
    }

    public final ub3 i() {
        return this.c;
    }
}
