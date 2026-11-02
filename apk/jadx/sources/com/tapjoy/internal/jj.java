package com.tapjoy.internal;

/* JADX INFO: loaded from: classes5.dex */
final class jj {
    static ji a;
    static long b;

    private jj() {
    }

    static ji a() {
        synchronized (jj.class) {
            ji jiVar = a;
            if (jiVar == null) {
                return new ji();
            }
            a = jiVar.f;
            jiVar.f = null;
            b -= 8192;
            return jiVar;
        }
    }

    static void a(ji jiVar) {
        if (jiVar.f != null || jiVar.g != null) {
            throw new IllegalArgumentException();
        }
        if (jiVar.d) {
            return;
        }
        synchronized (jj.class) {
            long j = b;
            if (j + 8192 > 65536) {
                return;
            }
            b = j + 8192;
            jiVar.f = a;
            jiVar.c = 0;
            jiVar.b = 0;
            a = jiVar;
        }
    }
}
