package kotlin;

import android.content.Context;
import com.google.android.play.core.hsdp.service.HsdpDeepLinkService;
import com.google.android.play.core.hsdp.service.HsdpPrewarmRequest;
import com.ironsource.C3510b4;
import java.util.Map;
import kotlinx.coroutines.TimeoutKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class p61 {
    public final Context a;
    public final ex0 b;
    public final p005kotlin.Lazy c;

    public p61(Context context, ex0 flags) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = context;
        this.b = flags;
        this.c = p005kotlin.LazyKt.lazy(new k61(this));
    }

    public final Object a(HsdpPrewarmRequest hsdpPrewarmRequest, jo2 jo2Var) {
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        Duration.Companion companion = Duration.INSTANCE;
        return TimeoutKt.withTimeoutOrNull(Duration.m4378getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:hsdp_prewarm_timeout:ms", wm2.a(60, DurationUnit.SECONDS, "gads:hsdp_prewarm_timeout:ms", C3510b4.i.W), yr.j)).getRawValue()), new o61(this, hsdpPrewarmRequest, null), jo2Var);
    }

    public final Object a(String str, String str2, Map map, boolean z, vg2 vg2Var) {
        ex0 ex0Var = this.b;
        ex0Var.getClass();
        Duration.Companion companion = Duration.INSTANCE;
        return TimeoutKt.withTimeoutOrNull(Duration.m4378getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:hsdp_open_timeout:ms", wm2.a(60, DurationUnit.SECONDS, "gads:hsdp_open_timeout:ms", C3510b4.i.W), yr.j)).getRawValue()), new m61(this, str, str2, map, z, null), vg2Var);
    }

    public final void a(String targetAppPackageName) {
        Intrinsics.checkNotNullParameter(targetAppPackageName, "targetAppPackageName");
        synchronized (((HsdpDeepLinkService) this.c.getValue())) {
            ((HsdpDeepLinkService) this.c.getValue()).endSession(targetAppPackageName);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }
}
