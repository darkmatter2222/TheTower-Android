package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0733 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static C0733 f2714;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ArrayList f2717 = new ArrayList();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final ArrayList f2716 = new ArrayList();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0787 f2715 = new C0787(this);

    static {
        StringFog.decrypt("pUHLLZvx7+OBXMAnkfTw74BezCqR\n", "8iilSfSGo4o=\n");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized C0733 m2256() {
        if (f2714 == null) {
            f2714 = new C0733();
        }
        return f2714;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m2257(z0 z0Var) {
        synchronized (this) {
            this.f2716.remove(z0Var);
            if (this.f2716.size() == 0) {
                C0125 c0125M1912 = C0125.m1912();
                C0787 c0787 = this.f2715;
                c0125M1912.getClass();
                AbstractC0340.m2054(new C0166(c0125M1912, c0787));
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2258(z0 z0Var) {
        synchronized (this) {
            this.f2716.add(z0Var);
        }
        C0125 c0125M1912 = C0125.m1912();
        C0787 c0787 = this.f2715;
        c0125M1912.getClass();
        AbstractC0340.m2054(new C0175(c0125M1912, c0787));
        AbstractC0340.m2054(new C0779(this, z0Var));
    }
}
