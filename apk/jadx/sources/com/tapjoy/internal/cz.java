package com.tapjoy.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class cz {
    public final cx a;

    public cz(cx cxVar) {
        this.a = cxVar;
    }

    public static void a(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }
}
