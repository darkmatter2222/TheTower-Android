package kotlin;

import com.ironsource.C3510b4;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class qn2 {
    public final ex0 a;

    public qn2(ex0 flags) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = flags;
    }

    public final long a() {
        ex0 ex0Var = this.a;
        ex0Var.getClass();
        Duration.Companion companion = Duration.INSTANCE;
        return ((Duration) ex0Var.a("gads:picture_in_picture:animation_duration_ms", wm2.a(300, DurationUnit.MILLISECONDS, "gads:picture_in_picture:animation_duration_ms", C3510b4.i.W), yr.j)).getRawValue();
    }

    public final int b() {
        ex0 ex0Var = this.a;
        return ((Number) ex0Var.a("gads:picture_in_picture:bottom_padding_dp", by0.a(ex0Var, "gads:picture_in_picture:bottom_padding_dp", C3510b4.i.W, 32), yr.f)).intValue();
    }

    public final int c() {
        ex0 ex0Var = this.a;
        return ((Number) ex0Var.a("gads:picture_in_picture:max_layout_retries", by0.a(ex0Var, "gads:picture_in_picture:max_layout_retries", C3510b4.i.W, 5), yr.f)).intValue();
    }

    public final int d() {
        ex0 ex0Var = this.a;
        return ((Number) ex0Var.a("gads:picture_in_picture:offset_dp", by0.a(ex0Var, "gads:picture_in_picture:offset_dp", C3510b4.i.W, 20), yr.f)).intValue();
    }

    public final int e() {
        ex0 ex0Var = this.a;
        return ((Number) ex0Var.a("gads:picture_in_picture:outer_clipping_radius_dp", by0.a(ex0Var, "gads:picture_in_picture:outer_clipping_radius_dp", C3510b4.i.W, 12), yr.f)).intValue();
    }

    public final int f() {
        ex0 ex0Var = this.a;
        return ((Number) ex0Var.a("gads:picture_in_picture:padding_dp", by0.a(ex0Var, "gads:picture_in_picture:padding_dp", C3510b4.i.W, 4), yr.f)).intValue();
    }
}
