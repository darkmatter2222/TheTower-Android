package com.ironsource;

import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Ie {
    private static Boolean b;
    public static final Ie a = new Ie();
    private static He c = He.NOT_INIT;

    private Ie() {
    }

    public final synchronized He a() {
        return c;
    }

    public final synchronized void a(He he) {
        Intrinsics.checkNotNullParameter(he, "<set-?>");
        c = he;
    }

    public final void a(boolean z) {
        b = Boolean.valueOf(z);
    }

    public final He b() {
        Boolean bool = b;
        if (bool == null || Intrinsics.areEqual(bool, Boolean.FALSE)) {
            return He.NOT_INIT;
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            return c;
        }
        throw new NoWhenBranchMatchedException();
    }
}
