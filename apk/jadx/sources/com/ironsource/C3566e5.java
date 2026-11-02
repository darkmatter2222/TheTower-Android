package com.ironsource;

import android.content.Context;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.math.MathKt;

/* JADX INFO: renamed from: com.ironsource.e5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3566e5 {
    public static final C3566e5 a = new C3566e5();

    private C3566e5() {
    }

    private final int a(Context context, int i) {
        return MathKt.roundToInt(i / context.getResources().getDisplayMetrics().density);
    }

    public final int a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context, context.getResources().getDisplayMetrics().heightPixels);
    }

    public final int b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return a(context, context.getResources().getDisplayMetrics().widthPixels);
    }
}
