package kotlin;

import androidx.webkit.WebViewFeature;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rz3 {
    public static boolean a() {
        Intrinsics.checkNotNullParameter("MULTI_PROFILE", "feature");
        return WebViewFeature.isFeatureSupported("MULTI_PROFILE");
    }
}
