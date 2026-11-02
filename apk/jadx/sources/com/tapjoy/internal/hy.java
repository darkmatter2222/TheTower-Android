package com.tapjoy.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.C3832t;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
abstract class hy implements gv {
    private static final String[] a;

    static {
        String[] strArr = {C3832t.j, FirebaseAnalytics.Event.PURCHASE, "custom_action"};
        a = strArr;
        Arrays.sort(strArr);
    }

    hy() {
    }

    @Nullable
    public static hy a(String str, bh bhVar) {
        if (C3832t.j.equals(str)) {
            return (hy) bhVar.a(ii.a);
        }
        if (FirebaseAnalytics.Event.PURCHASE.equals(str)) {
            return (hy) bhVar.a(ig.a);
        }
        return null;
    }

    public static boolean a(String str) {
        return Arrays.binarySearch(a, str) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.tapjoy.internal.gv
    public final void a(gw gwVar) {
        if (this instanceof gz) {
            gz gzVar = (gz) this;
            gwVar.a(gzVar.a(), gzVar.b());
        } else if (this instanceof ha) {
            ha haVar = (ha) this;
            gwVar.a(haVar.a(), haVar.b(), haVar.c(), haVar.d());
        }
    }
}
