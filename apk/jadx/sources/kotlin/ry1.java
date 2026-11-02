package kotlin;

import android.net.Uri;
import com.ironsource.C3510b4;
import java.io.File;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ry1 implements oy1 {
    public static final long d;
    public static final long e;
    public final ex0 a;
    public final zw3 b;
    public final e01 c;

    static {
        Duration.Companion companion = Duration.INSTANCE;
        d = DurationKt.toDuration(60, DurationUnit.SECONDS);
        e = Duration.m4381getInWholeSecondsimpl(DurationKt.toDuration(1, DurationUnit.HOURS));
    }

    public ry1(ex0 flags, zw3 userAgentProvider, e01 httpClient) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.a = flags;
        this.b = userAgentProvider;
        this.c = httpClient;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a8, code lost:
    
        if (r13 == r3) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.r31 r11, android.webkit.WebResourceRequest r12, p005kotlin.coroutines.Continuation r13) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ry1.a(ads_mobile_sdk.r31, android.webkit.WebResourceRequest, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final String a(Uri uri, r31 r31Var) {
        String path = uri.getPath();
        if (path == null || !StringsKt.equals(new File(path).getName(), "mraid.js", true)) {
            return null;
        }
        if (r31Var.o.get()) {
            ex0 ex0Var = this.a;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gad:mraid:url_expanded_banner", C3510b4.i.W);
            Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js", "defaultValue");
            return (String) ex0Var.a("gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_expanded_banner.js", yr.o);
        }
        if (r31Var.e().a == u14.FULLSCREEN) {
            ex0 ex0Var2 = this.a;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gad:mraid:url_interstitial", C3510b4.i.W);
            Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js", "defaultValue");
            return (String) ex0Var2.a("gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_interstitial.js", yr.o);
        }
        ex0 ex0Var3 = this.a;
        ex0Var3.getClass();
        Intrinsics.checkNotNullParameter("gad:mraid:url_banner", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js", "defaultValue");
        return (String) ex0Var3.a("gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/mraid/v3/mraid_app_banner.js", yr.o);
    }
}
