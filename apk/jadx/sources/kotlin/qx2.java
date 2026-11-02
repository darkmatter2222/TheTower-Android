package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class qx2 implements sx2 {
    public final LoadAdError a;

    public qx2(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a = error;
    }

    public final LoadAdError a() {
        return this.a;
    }
}
