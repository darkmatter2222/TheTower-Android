package com.google.android.libraries.ads.mobile.sdk.pip;

import android.app.Activity;
import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import com.ironsource.C3510b4;
import kotlin.a01;
import kotlin.a03;
import kotlin.cm1;
import kotlin.fq;
import kotlin.jn2;
import kotlin.jq;
import kotlin.ln2;
import kotlin.vf0;
import kotlin.zz0;
import kotlin.zz2;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017J\b\u0010\u0010\u001a\u00020\u0011H&J\u001a\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0016H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\tX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0012\u0010\f\u001a\u00020\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0018À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "adEventCallback", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;", "getAdEventCallback", "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;", "setAdEventCallback", "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;)V", C3510b4.i.L, "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;", "getPosition", "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPosition;", "presentationScope", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;", "getPresentationScope", "()Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdPresentationScope;", "hide", "", "show", "activity", "Landroid/app/Activity;", "options", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdOptions;", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PictureInPictureAd extends Ad {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\u0006\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\bH\u0007¢\u0006\u0004\b\u0006\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd$Companion;", "", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;", "adRequest", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAd;", "load", "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;", "adLoadCallback", "", "(Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }

        public final Object load(PictureInPictureAdRequest pictureInPictureAdRequest, Continuation<? super AdLoadResult<? extends PictureInPictureAd>> continuation) {
            a01.a.getClass();
            zz2 zz2VarA = ((a03) ((vf0) zz0.a()).t3.get()).a(((vf0) zz0.a()).b, pictureInPictureAdRequest);
            return jq.a.b(zz2VarA, new fq(new jn2(pictureInPictureAdRequest, zz2VarA, null), null), continuation);
        }

        @JvmStatic
        public final void load(PictureInPictureAdRequest adRequest, AdLoadCallback<PictureInPictureAd> adLoadCallback) {
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            Intrinsics.checkNotNullParameter(adRequest, "adRequest");
            Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
            a01.a.getClass();
            ((cm1) ((vf0) zz0.a()).q3.get()).a((Function1) new ln2(((a03) ((vf0) zz0.a()).t3.get()).a(((vf0) zz0.a()).b, adRequest), adLoadCallback, adRequest, null));
        }
    }

    @JvmStatic
    static void load(PictureInPictureAdRequest pictureInPictureAdRequest, AdLoadCallback<PictureInPictureAd> adLoadCallback) {
        INSTANCE.load(pictureInPictureAdRequest, adLoadCallback);
    }

    PictureInPictureAdEventCallback getAdEventCallback();

    PictureInPictureAdPosition getPosition();

    PictureInPictureAdPresentationScope getPresentationScope();

    void hide();

    void setAdEventCallback(PictureInPictureAdEventCallback pictureInPictureAdEventCallback);

    void show(Activity activity, PictureInPictureAdOptions options);
}
