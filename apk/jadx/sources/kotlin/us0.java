package kotlin;

import android.net.Uri;
import java.net.URL;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class us0 {
    public static final URL a(URL url, ss0 firebaseAnalyticsIds, ex0 ex0Var) {
        String strR;
        Intrinsics.checkNotNullParameter(url, "<this>");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsIds, "firebaseAnalyticsIds");
        String string = url.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        if (ex0Var == null || (strR = ex0Var.R()) == null) {
            strR = "%5Bgw_fbsaeid%5D";
        }
        Uri.Builder builderBuildUpon = Uri.parse(StringsKt.replace$default(string, strR, firebaseAnalyticsIds.c, false, 4, (Object) null)).buildUpon();
        builderBuildUpon.appendQueryParameter("gmp_app_id", firebaseAnalyticsIds.a);
        builderBuildUpon.appendQueryParameter("fbs_aiid", firebaseAnalyticsIds.b);
        if (builderBuildUpon.build().getQueryParameter("fbs_aeid") == null) {
            builderBuildUpon.appendQueryParameter("fbs_aeid", firebaseAnalyticsIds.c);
        }
        return new URL(builderBuildUpon.build().toString());
    }
}
