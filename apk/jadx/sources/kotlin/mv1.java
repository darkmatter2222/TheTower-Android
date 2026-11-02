package kotlin;

import com.google.android.gms.ads.mediation.NativeAdMapper;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class mv1 extends Lambda implements Function1 {
    public final /* synthetic */ qv1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mv1(qv1 qv1Var) {
        super(1);
        this.a = qv1Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        NativeAdMapper nativeAdMapper = (NativeAdMapper) obj;
        Intrinsics.checkNotNullParameter(nativeAdMapper, "nativeAdMapper");
        qv1 qv1Var = this.a;
        t12 t12Var = new t12(nativeAdMapper);
        qv1Var.getClass();
        Intrinsics.checkNotNullParameter(t12Var, "<set-?>");
        qv1Var.c = t12Var;
        return p005kotlin.Unit.INSTANCE;
    }
}
