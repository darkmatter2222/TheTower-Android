package kotlin;

import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class r83 extends Lambda implements Function1 {
    public final /* synthetic */ u83 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r83(u83 u83Var) {
        super(1);
        this.a = u83Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        UnifiedNativeAdMapper unifiedNativeAdMapper = (UnifiedNativeAdMapper) obj;
        Intrinsics.checkNotNullParameter(unifiedNativeAdMapper, "unifiedNativeAdMapper");
        u83 u83Var = this.a;
        wv3 wv3Var = new wv3(unifiedNativeAdMapper);
        u83Var.getClass();
        Intrinsics.checkNotNullParameter(wv3Var, "<set-?>");
        u83Var.d = wv3Var;
        return p005kotlin.Unit.INSTANCE;
    }
}
