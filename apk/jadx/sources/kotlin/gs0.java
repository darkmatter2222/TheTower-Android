package kotlin;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gs0 implements xd, h73 {
    public final BaseRequest a;
    public final ls0 b;
    public final i2 c;
    public final CoroutineScope d;

    public gs0(BaseRequest baseRequest, ls0 firebaseAnalyticsAdapter, i2 adConfiguration, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(firebaseAnalyticsAdapter, "firebaseAnalyticsAdapter");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.a = baseRequest;
        this.b = firebaseAnalyticsAdapter;
        this.c = adConfiguration;
        this.d = backgroundScope;
    }

    @Override // kotlin.h73
    public final Object a(RewardItem rewardItem, Continuation continuation) {
        String adUnitId;
        Object objA = this.b.a("generateEventId");
        String string = objA != null ? objA.toString() : null;
        if (string != null && (adUnitId = this.a.getAdUnitId()) != null) {
            Bundle bundleBundleOf = BundleKt.bundleOf(p005kotlin.TuplesKt.to("_ai", adUnitId), p005kotlin.TuplesKt.to("reward_type", rewardItem.getType()), p005kotlin.TuplesKt.to("reward_value", Boxing.boxInt(rewardItem.getAmount())));
            Bundle bundle = this.c.q;
            is0 is0Var = is0.b;
            bundle.putBundle("_ar", bundleBundleOf);
            CoroutineScope coroutineScope = this.d;
            fs0 block = new fs0(this, bundle, string, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return p005kotlin.Unit.INSTANCE;
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.xd
    public final Object b(boolean z, Continuation continuation) {
        String adUnitId = this.a.getAdUnitId();
        if (adUnitId == null) {
            return p005kotlin.Unit.INSTANCE;
        }
        CoroutineScope coroutineScope = this.d;
        es0 block = new es0(this, adUnitId, z, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return p005kotlin.Unit.INSTANCE;
    }
}
