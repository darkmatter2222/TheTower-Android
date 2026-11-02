package kotlin;

import android.net.Uri;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ts0 implements Interceptor {
    public final ss0 a;
    public final ex0 b;

    public ts0(ss0 firebaseAnalyticsIds, ex0 flags) {
        Intrinsics.checkNotNullParameter(firebaseAnalyticsIds, "firebaseAnalyticsIds");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = firebaseAnalyticsIds;
        this.b = flags;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Uri.Builder builderAppendQueryParameter = Uri.parse(StringsKt.replace$default(chain.request().url().getUrl(), this.b.R(), this.a.c, false, 4, (Object) null)).buildUpon().appendQueryParameter("gmp_app_id", this.a.a).appendQueryParameter("fbs_aiid", this.a.b);
        if (builderAppendQueryParameter.build().getQueryParameter("fbs_aeid") == null) {
            builderAppendQueryParameter.appendQueryParameter("fbs_aeid", this.a.c);
        }
        Uri uriBuild = builderAppendQueryParameter.build();
        Request.Builder builder = new Request.Builder();
        String string = uriBuild.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return chain.proceed(builder.url(string).build());
    }
}
