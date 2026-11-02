package kotlin;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnAdMetadataChangedListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.gson.JsonObject;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class v51 implements a51 {
    public final String a;
    public final long b;
    public final h51 c;
    public final cw2 d;
    public final f0 e;
    public final Context f;
    public un1 g;

    public v51(String adUnitId, long j, h51 afmaMessenger, rf0 provider, f0 activityTracker, Context context) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(afmaMessenger, "afmaMessenger");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = adUnitId;
        this.b = j;
        this.c = afmaMessenger;
        this.d = provider;
        this.e = activityTracker;
        this.f = context;
    }

    public static final void a(v51 this$0, RewardItem rewardItem) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(rewardItem, "rewardItem");
        h51 h51Var = this$0.c;
        long j = this$0.b;
        h51Var.getClass();
        Intrinsics.checkNotNullParameter(rewardItem, "rewardItem");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("eventCategory", "rewarded");
        jsonObject.addProperty("event", "onUserEarnedReward");
        jsonObject.addProperty("objectId", Long.valueOf(j));
        jsonObject.addProperty(IronSourceConstants.EVENTS_REWARD_AMOUNT, Integer.valueOf(rewardItem.getAmount()));
        jsonObject.addProperty("rewardType", rewardItem.getType());
        h51Var.a(jsonObject);
    }

    @Override // kotlin.a51
    public final void a() {
        un1 un1Var = this.g;
        if (un1Var == null) {
            h51 h51Var = this.c;
            long j = this.b;
            int value = FullScreenContentError.ErrorCode.H5_SHOW_AD_NOT_LOADED.getValue();
            h51Var.getClass();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("eventCategory", "rewarded");
            jsonObject.addProperty("event", "onRewardedAdFailedToShow");
            jsonObject.addProperty("objectId", Long.valueOf(j));
            jsonObject.addProperty("errorCode", Integer.valueOf(value));
            h51Var.a(jsonObject);
            return;
        }
        fm0 fm0VarJ = un1Var.j();
        u51 u51Var = new u51(this);
        synchronized (fm0VarJ) {
            fm0VarJ.i = u51Var;
            fm0VarJ.a((AdEventCallback) u51Var);
            fm0VarJ.a((OnAdMetadataChangedListener) u51Var);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
        Context contextG = this.e.g();
        if (contextG == null) {
            contextG = this.f;
        }
        un1Var.a(contextG, new OnUserEarnedRewardListener() { // from class: ads_mobile_sdk.v51$$ExternalSyntheticLambda0
            @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener
            public final void onUserEarnedReward(RewardItem rewardItem) {
                v51.a(this.f$0, rewardItem);
            }
        });
    }

    @Override // kotlin.a51
    public final void a(s51 h5LoadParams) {
        Intrinsics.checkNotNullParameter(h5LoadParams, "h5LoadParams");
        s03 s03Var = (s03) this.d.get();
        j53 j53Var = j53.j;
        li0 li0Var = (li0) s03Var;
        li0Var.getClass();
        li0Var.d = j53Var;
        ((o03) ((li0) ((s03) ((li0) ((s03) ((li0) ((s03) ((li0) ((s03) li0Var.a(h5LoadParams.a))).a((BaseRequest) h5LoadParams.a))).b(false))).a(false))).b().i.get()).a(new t51(this));
    }

    @Override // kotlin.a51
    public final void dispose() {
        un1 un1Var = this.g;
        if (un1Var != null) {
            un1Var.destroy();
        }
        this.g = null;
    }

    @Override // kotlin.a51
    public final String getAdUnitId() {
        return this.a;
    }
}
