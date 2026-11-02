package kotlin;

import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c51 extends FunctionReferenceImpl implements Function2 {
    public c51(f51 f51Var) {
        super(2, f51Var, f51.class, "rewardedAd", "rewardedAd(Ljava/lang/String;J)Lcom/google/android/libraries/ads/mobile/sdk/internal/h5/H5RewardedAd;", 0);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String p0 = (String) obj;
        long jLongValue = ((Number) obj2).longValue();
        Intrinsics.checkNotNullParameter(p0, "p0");
        zf0 zf0Var = (zf0) ((n51) ((f51) this.receiver).d.get());
        zf0Var.d = Long.valueOf(jLongValue);
        p0.getClass();
        zf0Var.c = p0;
        kq2.a(zf0Var.d, Long.class);
        vf0 vf0Var = zf0Var.a;
        yf0 yf0Var = zf0Var.b;
        return new v51(zf0Var.c, zf0Var.d.longValue(), new h51(yf0Var.a, (ex0) yf0Var.b.t.get(), (CoroutineScope) yf0Var.b.x.get()), vf0Var.Z0, (f0) vf0Var.E.get(), vf0Var.b);
    }
}
