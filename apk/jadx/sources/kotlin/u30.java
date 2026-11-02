package kotlin;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class u30 implements jr0 {
    public final dw2 a;

    public u30(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        PackageInfo packageInfo;
        Context context = (Context) this.a.get();
        Intrinsics.checkNotNullParameter(context, "context");
        PackageManager packageManager = context.getPackageManager();
        return Integer.valueOf((packageManager == null || (packageInfo = packageManager.getPackageInfo(context.getPackageName(), 128)) == null) ? 0 : packageInfo.versionCode);
    }
}
