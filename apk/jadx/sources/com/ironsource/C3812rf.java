package com.ironsource;

import android.content.Context;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.ironsource.rf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3812rf implements F1 {
    public static final C3812rf a = new C3812rf();
    private static final String b = "anr_reporter_watermark";

    private C3812rf() {
    }

    @Override // com.ironsource.F1
    public long a() {
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        if (applicationContext == null) {
            return -1L;
        }
        String strC = IronSourceUtils.c(applicationContext, b, "");
        Intrinsics.checkNotNullExpressionValue(strC, "getStringFromSharedPrefs(...)");
        Long longOrNull = StringsKt.toLongOrNull(strC);
        if (longOrNull != null) {
            return longOrNull.longValue();
        }
        return -1L;
    }

    @Override // com.ironsource.F1
    public void a(long j) {
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        if (applicationContext == null) {
            return;
        }
        IronSourceUtils.f(applicationContext, b, String.valueOf(j));
    }
}
