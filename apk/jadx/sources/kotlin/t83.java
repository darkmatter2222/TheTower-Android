package kotlin;

import com.google.android.gms.ads.mediation.MediationRewardedAd;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class t83 extends Lambda implements Function1 {
    public final /* synthetic */ u83 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t83(u83 u83Var) {
        super(1);
        this.a = u83Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        MediationRewardedAd mediationAd = (MediationRewardedAd) obj;
        Intrinsics.checkNotNullParameter(mediationAd, "mediationAd");
        u83 u83Var = this.a;
        u83Var.getClass();
        Intrinsics.checkNotNullParameter(mediationAd, "<set-?>");
        u83Var.f = mediationAd;
        return p005kotlin.Unit.INSTANCE;
    }
}
