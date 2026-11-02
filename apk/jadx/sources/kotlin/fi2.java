package kotlin;

import android.content.Context;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fi2 {
    public final ex0 a;
    public final Context b;
    public final p005kotlin.Lazy c;
    public final p005kotlin.Lazy d;
    public final p005kotlin.Lazy e;

    public fi2(Context context, ex0 flags) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = flags;
        this.b = context;
        this.c = p005kotlin.LazyKt.lazy(new di2(this));
        this.d = p005kotlin.LazyKt.lazy(new ei2(this));
        this.e = p005kotlin.LazyKt.lazy(new ci2(this));
    }

    public final void a() {
        try {
            Object value = this.c.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            ii2 ii2Var = (ii2) ((hi2) value);
            ii2Var.getClass();
            synchronized (ii2.class) {
                ii2Var.f.a(ii2Var.c);
                ii2Var.f.a(ii2Var.a);
            }
        } catch (Exception e) {
            xs3.a("Exception while clearing PAIDV1", e, 4);
        }
    }

    public final void b() {
        try {
            Object value = this.d.getValue();
            Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
            ki2 ki2Var = (ki2) ((ji2) value);
            ki2Var.getClass();
            synchronized (ki2.class) {
                x41 x41Var = ki2Var.f;
                if (x41Var.b.contains(ki2Var.a)) {
                    ki2Var.f.a(ki2Var.c);
                    ki2Var.f.a(ki2Var.a);
                }
            }
        } catch (Exception e) {
            xs3.a("Exception while clearing PAIDV2", e, 4);
        }
    }
}
