package com.ironsource;

import android.app.Activity;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.o6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3746o6 implements J {
    private final Activity a;

    public C3746o6(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.a = activity;
    }

    @Override // com.ironsource.J
    public void a(C3710m6 fullscreenAdInstance) {
        Intrinsics.checkNotNullParameter(fullscreenAdInstance, "fullscreenAdInstance");
        fullscreenAdInstance.a(this.a);
    }
}
