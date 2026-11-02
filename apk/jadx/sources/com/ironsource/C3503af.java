package com.ironsource;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.af, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3503af implements P8, P8.a {
    private final Map<String, Integer> a = new HashMap();
    private final Map<String, Integer> b = new HashMap();

    @Override // com.ironsource.P8.a
    public void a(P8.b smash) {
        Intrinsics.checkNotNullParameter(smash, "smash");
        synchronized (this) {
            String strC = smash.c();
            if (this.a.containsKey(strC)) {
                Map<String, Integer> map = this.a;
                Integer num = map.get(strC);
                Intrinsics.checkNotNull(num);
                map.put(strC, Integer.valueOf(num.intValue() + 1));
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // com.ironsource.P8.a
    public void a(List<? extends P8.b> smashes) {
        Intrinsics.checkNotNullParameter(smashes, "smashes");
        for (P8.b bVar : smashes) {
            this.a.put(bVar.c(), 0);
            this.b.put(bVar.c(), Integer.valueOf(bVar.b()));
        }
    }

    @Override // com.ironsource.P8
    public boolean a() {
        for (String str : this.b.keySet()) {
            Intrinsics.checkNotNullExpressionValue(str, "next(...)");
            String str2 = str;
            Integer num = this.a.get(str2);
            Intrinsics.checkNotNull(num);
            int iIntValue = num.intValue();
            Integer num2 = this.b.get(str2);
            Intrinsics.checkNotNull(num2);
            if (iIntValue < num2.intValue()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0029  */
    @Override // com.ironsource.P8
    public boolean b(P8.b smash) {
        boolean z;
        Intrinsics.checkNotNullParameter(smash, "smash");
        synchronized (this) {
            String strC = smash.c();
            if (this.a.containsKey(strC)) {
                Integer num = this.a.get(strC);
                Intrinsics.checkNotNull(num);
                if (num.intValue() >= smash.b()) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        return z;
    }
}
