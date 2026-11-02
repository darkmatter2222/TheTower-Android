package com.ironsource;

import java.util.Date;

/* JADX INFO: renamed from: com.ironsource.l5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3691l5 {
    private long a = new Date().getTime();

    public static long a(C3691l5 c3691l5) {
        if (c3691l5 == null) {
            return 0L;
        }
        return new Date().getTime() - c3691l5.a;
    }
}
