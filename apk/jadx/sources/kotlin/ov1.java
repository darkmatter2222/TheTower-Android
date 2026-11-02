package kotlin;

import com.google.android.gms.ads.mediation.MediationRewardedAd;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class ov1 extends Lambda implements Function1 {
    public final /* synthetic */ qv1 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ov1(qv1 qv1Var) {
        super(1);
        this.a = qv1Var;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        p005kotlin.Unit unit;
        MediationRewardedAd mediationAd = (MediationRewardedAd) obj;
        Intrinsics.checkNotNullParameter(mediationAd, "mediationAd");
        qv1 qv1Var = this.a;
        synchronized (qv1Var) {
            Intrinsics.checkNotNullParameter(mediationAd, "<set-?>");
            qv1Var.e = mediationAd;
            unit = p005kotlin.Unit.INSTANCE;
        }
        return unit;
    }
}
