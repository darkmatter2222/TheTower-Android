package com.tapjoy.internal;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* JADX INFO: loaded from: classes5.dex */
public final class gl {
    public static final gl a = new gl(0, 0, 0, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
    public final long b;
    public final long c;
    public final double d;
    public long e;
    private final long f;

    public gl(long j, long j2, long j3, double d) {
        this.f = j;
        this.b = j2;
        this.c = j3;
        this.d = d;
        this.e = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            gl glVar = (gl) obj;
            if (this.f == glVar.f && this.b == glVar.b && this.c == glVar.c && this.d == glVar.d && this.e == glVar.e) {
                return true;
            }
        }
        return false;
    }
}
