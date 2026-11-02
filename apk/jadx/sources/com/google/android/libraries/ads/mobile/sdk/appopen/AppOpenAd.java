package com.google.android.libraries.ads.mobile.sdk.appopen;

import android.app.Activity;
import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import java.util.Map;
import kotlin.a01;
import kotlin.by2;
import kotlin.cm1;
import kotlin.fq;
import kotlin.j53;
import kotlin.jq;
import kotlin.lk;
import kotlin.nk;
import kotlin.pk;
import kotlin.sk;
import kotlin.th0;
import kotlin.vf0;
import kotlin.vh0;
import kotlin.zx2;
import kotlin.zz0;
import p005kotlin.Deprecated;
import p005kotlin.DeprecationLevel;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016J\n\u0010\b\u001a\u0004\u0018\u00010\tH'J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&J\u001c\u0010\u000e\u001a\u00020\u000b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010H'J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0017À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAd;", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "adEventCallback", "Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;", "getAdEventCallback", "()Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;", "setAdEventCallback", "(Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdEventCallback;)V", "getView", "Landroid/view/View;", "setImmersiveMode", "", "immersiveModeEnabled", "", "setImpressionData", "impressionData", "", "", "", "show", "activity", "Landroid/app/Activity;", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AppOpenAd extends Ad {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\u0006\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0007¢\u0006\u0004\b\u0006\u0010\u000bJ%\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAd$Companion;", "", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "adRequest", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", "Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAd;", "load", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;", "adLoadCallback", "", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "", "adResponse", "loadFromAdResponse", "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }

        public final Object load(AdRequest adRequest, Continuation<? super AdLoadResult<? extends AppOpenAd>> continuation) {
            sk.d.getClass();
            a01.a.getClass();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adRequest.getClass();
            j53 j53Var = j53.e;
            Boolean bool = Boolean.FALSE;
            return jq.a.b((zx2) new vh0(vf0Var, adRequest, adRequest, j53Var, bool, bool).i.get(), new fq(new lk(null), null), continuation);
        }

        @JvmStatic
        public final void load(AdRequest adRequest, AdLoadCallback<AppOpenAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            sk.d.getClass();
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            zz0 zz0Var = a01.a;
            zz0Var.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            zz0Var.getClass();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adRequest.getClass();
            j53 j53Var = j53.e;
            Boolean bool = Boolean.FALSE;
            cm1Var.a((Function1) new nk((zx2) new vh0(vf0Var, adRequest, adRequest, j53Var, bool, bool).i.get(), adLoadCallback, null));
        }

        @JvmStatic
        public final void loadFromAdResponse(String adResponse, AdLoadCallback<AppOpenAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            sk.d.getClass();
            Intrinsics.checkNotNullParameter(adResponse, "adResponse");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            a01.a.getClass();
            cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            adResponse.getClass();
            cm1Var.a((Function1) new pk((by2) new th0(vf0Var, j53.e, adResponse, Boolean.FALSE).h.get(), adLoadCallback, null));
        }
    }

    @JvmStatic
    static void load(AdRequest adRequest, AdLoadCallback<AppOpenAd> adLoadCallback) {
        INSTANCE.load(adRequest, adLoadCallback);
    }

    @JvmStatic
    static void loadFromAdResponse(String str, AdLoadCallback<AppOpenAd> adLoadCallback) {
        INSTANCE.loadFromAdResponse(str, adLoadCallback);
    }

    AppOpenAdEventCallback getAdEventCallback();

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Hidden API used via reflection.")
    /* synthetic */ View getView();

    void setAdEventCallback(AppOpenAdEventCallback appOpenAdEventCallback);

    void setImmersiveMode(boolean immersiveModeEnabled);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Hidden API used via reflection.")
    /* synthetic */ void setImpressionData(Map impressionData);

    void show(Activity activity);
}
