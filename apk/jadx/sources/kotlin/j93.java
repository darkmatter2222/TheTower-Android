package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import java.util.List;
import java.util.Optional;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class j93 implements rh3 {
    public final Optional a;
    public final Optional b;
    public final b93 c;
    public final j53 d;
    public final BaseRequest e;
    public final List f;

    public j93(ex0 flags, Optional optionalBannerRequest, Optional optionalSignalRequest, b93 rtbAdapterSignalCollector, j53 requestType, BaseRequest adRequest) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(optionalBannerRequest, "optionalBannerRequest");
        Intrinsics.checkNotNullParameter(optionalSignalRequest, "optionalSignalRequest");
        Intrinsics.checkNotNullParameter(rtbAdapterSignalCollector, "rtbAdapterSignalCollector");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.a = optionalBannerRequest;
        this.b = optionalSignalRequest;
        this.c = rtbAdapterSignalCollector;
        this.d = requestType;
        this.e = adRequest;
        this.f = flags.G0();
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.RTB_SIGNAL;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        i93 i93Var;
        if (continuation instanceof i93) {
            i93Var = (i93) continuation;
            int i = i93Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                i93Var.c = i - Integer.MIN_VALUE;
            } else {
                i93Var = new i93(this, continuation);
            }
        } else {
            i93Var = new i93(this, continuation);
        }
        Object objA = i93Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = i93Var.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            SignalRequest signalRequest = (SignalRequest) OptionalsKt.getOrNull(this.b);
            if (signalRequest != null && !this.f.contains(String.valueOf(signalRequest.getN().getNumber()))) {
                return new q01(new f93(CollectionsKt.emptyList()));
            }
            BannerRequest bannerRequest = (BannerRequest) OptionalsKt.getOrNull(this.a);
            AdSize adSize = bannerRequest != null ? bannerRequest.getCom.ironsource.b4.i.O java.lang.String() : null;
            b93 b93Var = this.c;
            j53 j53Var = this.d;
            BaseRequest baseRequest = this.e;
            i93Var.c = 1;
            objA = b93Var.a(adSize, j53Var, baseRequest, i93Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        return new q01(new f93((List) objA));
    }
}
