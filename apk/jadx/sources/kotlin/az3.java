package kotlin;

import android.content.Context;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import androidx.webkit.WebViewStartUpConfig;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CancellableContinuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class az3 {
    public static final AtomicBoolean a = new AtomicBoolean(false);
    public static final AtomicBoolean b = new AtomicBoolean(true);
    public static final AtomicBoolean c = new AtomicBoolean(true);
    public static final AtomicBoolean d = new AtomicBoolean(true);
    public static final AtomicBoolean e = new AtomicBoolean(true);

    public static void a(Context context, Executor executor, boolean z, Set profiles, wz3 wz3Var) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(profiles, "profiles");
        if (!a.compareAndSet(false, true)) {
            if (wz3Var != null) {
                vy3 result = new vy3();
                Intrinsics.checkNotNullParameter(result, "result");
                CancellableContinuation cancellableContinuation = wz3Var.a;
                p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
                cancellableContinuation.resumeWith(p005kotlin.Result.m3022constructorimpl(new q01(result)));
                return;
            }
            return;
        }
        try {
            WebViewStartUpConfig.Builder builder = new WebViewStartUpConfig.Builder(executor);
            builder.setShouldRunUiThreadStartUpTasks(z);
            try {
                builder.setProfilesToLoadDuringStartup(profiles);
            } catch (Throwable unused) {
            }
            WebViewCompat.startUpWebView(context, builder.build(), new yy3(wz3Var));
        } catch (Throwable unused2) {
            if (wz3Var != null) {
                vy3 result2 = new vy3();
                Intrinsics.checkNotNullParameter(result2, "result");
                CancellableContinuation cancellableContinuation2 = wz3Var.a;
                p005kotlin.Result.Companion companion2 = p005kotlin.Result.INSTANCE;
                cancellableContinuation2.resumeWith(p005kotlin.Result.m3022constructorimpl(new q01(result2)));
            }
        }
    }

    public static boolean a(rz3 featureWrapper) {
        Intrinsics.checkNotNullParameter(featureWrapper, "featureWrapper");
        if (!b.get()) {
            return false;
        }
        try {
            featureWrapper.getClass();
            Intrinsics.checkNotNullParameter(WebViewFeature.ADD_QUIC_HINTS_V1, "feature");
            return WebViewFeature.isFeatureSupported(WebViewFeature.ADD_QUIC_HINTS_V1);
        } catch (Throwable unused) {
            b.set(false);
            return false;
        }
    }

    public static boolean b(rz3 featureWrapper) {
        Intrinsics.checkNotNullParameter(featureWrapper, "featureWrapper");
        if (!e.get()) {
            return false;
        }
        try {
            featureWrapper.getClass();
            Intrinsics.checkNotNullParameter(WebViewFeature.PRERENDER_WITH_URL, "feature");
            return WebViewFeature.isFeatureSupported(WebViewFeature.PRERENDER_WITH_URL);
        } catch (Throwable unused) {
            e.set(false);
            return false;
        }
    }

    public static boolean c(rz3 featureWrapper) {
        Intrinsics.checkNotNullParameter(featureWrapper, "featureWrapper");
        if (!d.get()) {
            return false;
        }
        try {
            featureWrapper.getClass();
            Intrinsics.checkNotNullParameter("PREFETCH_URL_V5", "feature");
            return WebViewFeature.isFeatureSupported("PREFETCH_URL_V5");
        } catch (Throwable unused) {
            d.set(false);
            return false;
        }
    }
}
