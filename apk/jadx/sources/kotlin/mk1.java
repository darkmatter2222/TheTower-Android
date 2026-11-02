package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.iconad.IconAdLoadCallback;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mk1 extends ei1 {
    public static final lk1 b = new lk1();
    public final AdLoadCallback a;

    public mk1(AdLoadCallback iconAdLoadCallback) {
        Intrinsics.checkNotNullParameter(iconAdLoadCallback, "iconAdLoadCallback");
        this.a = iconAdLoadCallback;
    }

    @Override // kotlin.ei1
    public final Object a(zh1 zh1Var, Continuation continuation) {
        AdLoadResult adLoadResultA = lk1.a((xz1) zh1Var);
        if (adLoadResultA instanceof AdLoadResult.Success) {
            this.a.onAdLoaded(((AdLoadResult.Success) adLoadResultA).getAd());
        } else if (adLoadResultA instanceof AdLoadResult.Failure) {
            this.a.onAdFailedToLoad(((AdLoadResult.Failure) adLoadResultA).getError());
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ei1
    public final void a() {
        AdLoadCallback adLoadCallback = this.a;
        IconAdLoadCallback iconAdLoadCallback = adLoadCallback instanceof IconAdLoadCallback ? (IconAdLoadCallback) adLoadCallback : null;
        if (iconAdLoadCallback != null) {
            iconAdLoadCallback.onAdLoadingCompleted();
        }
    }

    @Override // kotlin.ei1
    public final void a(LoadAdError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.onAdFailedToLoad(error);
    }
}
