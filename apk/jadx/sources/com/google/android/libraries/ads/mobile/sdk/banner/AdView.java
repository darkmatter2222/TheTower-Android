package com.google.android.libraries.ads.mobile.sdk.banner;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadResult;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.common.base.Splitter;
import com.ironsource.adapters.admob.AdMobConstants;
import kotlin.a01;
import kotlin.bd;
import kotlin.bz2;
import kotlin.cd;
import kotlin.cm1;
import kotlin.cz2;
import kotlin.dd;
import kotlin.f01;
import kotlin.fq;
import kotlin.j53;
import kotlin.jq;
import kotlin.qo;
import kotlin.uo;
import kotlin.vf0;
import kotlin.vo;
import kotlin.wh0;
import kotlin.xh0;
import kotlin.zy2;
import kotlin.zz0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!B\u001b\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\b\u0010#\u001a\u0004\u0018\u00010\"¢\u0006\u0004\b \u0010$B#\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\b\u0010#\u001a\u0004\u0018\u00010\"\u0012\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b \u0010'B+\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\b\u0010#\u001a\u0004\u0018\u00010\"\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020%¢\u0006\u0004\b \u0010)J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\f\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u001c\u0010\u001d\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;", "Landroid/widget/FrameLayout;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "newSize", "", "resize", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;", "adRequest", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;", "adLoadCallback", AdMobConstants.Logs.LOAD_AD, "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "", "adResponse", "loadFromAdResponse", "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "bannerAd", "Landroid/app/Activity;", "activity", "registerBannerAd", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;Landroid/app/Activity;)V", "getBannerAd", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;", "unregisterBannerAd", "destroy", "()V", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class AdView extends FrameLayout {
    private BannerAd a;
    private AdSize b;
    private Channel c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void a() {
        Channel channel = this.c;
        if (channel != null) {
            a01.a.getClass();
            BuildersKt__Builders_commonKt.launch$default((CoroutineScope) ((vf0) zz0.a()).u.get(), null, null, new cd(channel, null), 3, null);
        }
    }

    static /* synthetic */ void a(AdView adView, BannerAd bannerAd) {
        Context context = adView.getContext();
        adView.a(bannerAd, context instanceof Activity ? (Activity) context : null);
    }

    private final void a(BannerAd bannerAd, Activity activity) {
        removeAllViews();
        this.a = bannerAd;
        this.b = bannerAd.getAdSize();
        b();
        View view = activity == null ? bannerAd.getView() : bannerAd.getView(activity);
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            String adapterClassName = bannerAd.getResponseInfo().getAdapterClassName();
            Splitter splitter = f01.a;
            f01.c("Banner view provided from " + adapterClassName + " already has a parent view. Removing its old parent.", null);
            ((ViewGroup) parent).removeView(view);
        }
        addView(view);
    }

    private final void b() {
        AdSize adSize = this.b;
        if (this.a == null && adSize != null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            int height = adSize.getHeight();
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intrinsics.checkNotNullParameter(context, "<this>");
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
            setMinimumHeight((int) Math.ceil(TypedValue.applyDimension(1, height, displayMetrics)));
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            int width = adSize.getWidth();
            Intrinsics.checkNotNullParameter(context2, "<this>");
            Intrinsics.checkNotNullParameter(context2, "<this>");
            DisplayMetrics displayMetrics2 = context2.getResources().getDisplayMetrics();
            Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
            setMinimumWidth((int) Math.ceil(TypedValue.applyDimension(1, width, displayMetrics2)));
        } else {
            setMinimumHeight(0);
            setMinimumWidth(0);
        }
        requestLayout();
    }

    public final void destroy() {
        BannerAd bannerAd = this.a;
        unregisterBannerAd();
        if (bannerAd != null) {
            bannerAd.destroy();
        }
    }

    /* JADX INFO: renamed from: getBannerAd, reason: from getter */
    public final BannerAd getA() {
        return this.a;
    }

    public final void loadAd(BannerAdRequest adRequest, AdLoadCallback<BannerAd> adLoadCallback) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        a();
        bd adLoadCallback2 = new bd(adLoadCallback, this);
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adLoadCallback2, "adLoadCallback");
        zz0 zz0Var = a01.a;
        zz0Var.getClass();
        cm1 cm1Var = (cm1) ((vf0) zz0.a()).q3.get();
        zz0Var.getClass();
        xh0 xh0Var = new xh0(((vf0) zz0.a()).c);
        xh0Var.d = j53.f;
        cz2 cz2VarA = ((bz2) ((bz2) ((bz2) ((bz2) xh0Var.a((AdRequest) adRequest)).a((BaseRequest) adRequest)).a((BannerRequest) adRequest).a(adRequest).b(false)).a(false)).a();
        cm1Var.a((Function1) new qo(cz2VarA, adLoadCallback2, this, true, null));
        this.c = cz2VarA.c();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object loadFromAdResponse(String str, Continuation<? super AdLoadResult<? extends BannerAd>> continuation) {
        dd ddVar;
        AdView adView;
        if (continuation instanceof dd) {
            ddVar = (dd) continuation;
            int i = ddVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                ddVar.d = i - Integer.MIN_VALUE;
            } else {
                ddVar = new dd(this, continuation);
            }
        } else {
            ddVar = new dd(this, continuation);
        }
        Object objB = ddVar.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = ddVar.d;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objB);
            a();
            ddVar.a = this;
            ddVar.d = 1;
            jq jqVar = jq.a;
            a01.a.getClass();
            vf0 vf0Var = ((vf0) zz0.a()).c;
            str.getClass();
            objB = jqVar.b((zy2) new wh0(vf0Var, j53.f, str, Boolean.FALSE).i.get(), new fq(new uo(null), null), ddVar);
            if (objB != coroutine_suspended) {
                adView = this;
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            AdLoadResult adLoadResult = (AdLoadResult) ddVar.a;
            ResultKt.throwOnFailure(objB);
            return adLoadResult;
        }
        adView = (AdView) ddVar.a;
        ResultKt.throwOnFailure(objB);
        AdLoadResult adLoadResult2 = (AdLoadResult) objB;
        if (adLoadResult2 instanceof AdLoadResult.Success) {
            a01.a.getClass();
            CoroutineContext coroutineContext = (CoroutineContext) ((vf0) zz0.a()).w.get();
            b bVar = new b(adView, adLoadResult2, null);
            ddVar.a = adLoadResult2;
            ddVar.d = 2;
            if (BuildersKt.withContext(coroutineContext, bVar, ddVar) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return adLoadResult2;
    }

    public final void loadFromAdResponse(String adResponse, AdLoadCallback<BannerAd> adLoadCallback) {
        Intrinsics.checkNotNullParameter(adResponse, "adResponse");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        a();
        this.c = vo.a(adResponse, new bd(adLoadCallback, this));
    }

    public final void registerBannerAd(BannerAd bannerAd, Activity activity) {
        Intrinsics.checkNotNullParameter(bannerAd, "bannerAd");
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (Intrinsics.areEqual(this.a, bannerAd)) {
            return;
        }
        a();
        a(bannerAd, activity);
    }

    public final void resize(AdSize newSize) {
        Intrinsics.checkNotNullParameter(newSize, "newSize");
        this.b = newSize;
        b();
        BannerAd bannerAd = this.a;
        if (bannerAd != null) {
            bannerAd.a(newSize);
        }
    }

    public final BannerAd unregisterBannerAd() {
        BannerAd bannerAd = this.a;
        this.a = null;
        removeAllViews();
        a();
        b();
        return bannerAd;
    }
}
