package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.ironsource.C3510b4;
import com.ironsource.G5;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.List;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u0006\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0007\n\u0002\b\n\b&\u0018\u00002\u00020\u0001Bê\u0001\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u000105\u0012\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010E\u0012\b\b\u0002\u0010T\u001a\u00020M\u0012\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010U\u0012\n\b\u0002\u0010b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010m\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010u\u001a\u00020n\u0012\b\b\u0002\u0010y\u001a\u00020M\u0012\b\b\u0002\u0010}\u001a\u00020M\u0012\t\b\u0002\u0010\u0085\u0001\u001a\u00020~¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001B\n\b\u0016¢\u0006\u0005\b\u0086\u0001\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ?\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\n2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\nH\u0017¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\bJ\u000f\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0004R$\u0010\u0018\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R*\u0010!\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010%\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0013\u001a\u0004\b#\u0010\u0015\"\u0004\b$\u0010\u0017R$\u0010,\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R$\u00100\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0013\u001a\u0004\b.\u0010\u0015\"\u0004\b/\u0010\u0017R$\u00104\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u0010\u0013\u001a\u0004\b2\u0010\u0015\"\u0004\b3\u0010\u0017R$\u0010<\u001a\u0004\u0018\u0001058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R$\u0010@\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010\u0013\u001a\u0004\b>\u0010\u0015\"\u0004\b?\u0010\u0017R$\u0010D\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010\u0013\u001a\u0004\bB\u0010\u0015\"\u0004\bC\u0010\u0017R$\u0010L\u001a\u0004\u0018\u00010E8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\"\u0010T\u001a\u00020M8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR$\u0010\\\u001a\u0004\u0018\u00010U8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010[R$\u0010b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010\bR$\u0010f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bc\u0010^\u001a\u0004\bd\u0010`\"\u0004\be\u0010\bR$\u0010m\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bg\u0010h\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\"\u0010u\u001a\u00020n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR\"\u0010y\u001a\u00020M8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bv\u0010O\u001a\u0004\bw\u0010Q\"\u0004\bx\u0010SR\"\u0010}\u001a\u00020M8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010O\u001a\u0004\b{\u0010Q\"\u0004\b|\u0010SR(\u0010\u0085\u0001\u001a\u00020~8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001¨\u0006\u0088\u0001"}, d2 = {"Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;", "", "", "recordImpression", "()V", "Landroid/view/View;", "view", "handleClick", "(Landroid/view/View;)V", "containerView", "", "", "clickableAssetViews", "nonclickableAssetViews", "trackViews", "(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V", "untrackView", "destroy", "a", "Ljava/lang/String;", "getHeadline", "()Ljava/lang/String;", "setHeadline", "(Ljava/lang/String;)V", "headline", "", "Lcom/google/android/gms/ads/formats/NativeAd$Image;", "b", "Ljava/util/List;", "getImages", "()Ljava/util/List;", "setImages", "(Ljava/util/List;)V", "images", "c", "getBody", "setBody", C3510b4.i.E0, "d", "Lcom/google/android/gms/ads/formats/NativeAd$Image;", "getIcon", "()Lcom/google/android/gms/ads/formats/NativeAd$Image;", "setIcon", "(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V", C3510b4.i.H0, "e", "getCallToAction", "setCallToAction", "callToAction", "f", "getAdvertiser", "setAdvertiser", C3510b4.i.F0, "", "g", "Ljava/lang/Double;", "getStarRating", "()Ljava/lang/Double;", "setStarRating", "(Ljava/lang/Double;)V", "starRating", "h", "getStore", "setStore", "store", "i", "getPrice", "setPrice", "price", "Lcom/google/android/gms/ads/VideoController;", "j", "Lcom/google/android/gms/ads/VideoController;", "getVideoController", "()Lcom/google/android/gms/ads/VideoController;", "setVideoController", "(Lcom/google/android/gms/ads/VideoController;)V", "videoController", "", "k", "Z", "getHasVideoContent", "()Z", "setHasVideoContent", "(Z)V", "hasVideoContent", "Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;", "l", "Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;", "getAttributionInfo", "()Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;", "setAttributionInfo", "(Lcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;)V", "attributionInfo", "m", "Landroid/view/View;", "getAdChoicesContent", "()Landroid/view/View;", "setAdChoicesContent", "adChoicesContent", G5.q, "getMediaView", "setMediaView", "mediaView", "o", "Ljava/lang/Object;", "getMediatedAd", "()Ljava/lang/Object;", "setMediatedAd", "(Ljava/lang/Object;)V", "mediatedAd", "Landroid/os/Bundle;", "p", "Landroid/os/Bundle;", "getExtras", "()Landroid/os/Bundle;", "setExtras", "(Landroid/os/Bundle;)V", HandleInvocationsFromAdViewer.KEY_EXTRAS, "q", "getOverrideImpressionRecording", "setOverrideImpressionRecording", "overrideImpressionRecording", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "getOverrideClickHandling", "setOverrideClickHandling", "overrideClickHandling", "", "s", "F", "getMediaContentAspectRatio", "()F", "setMediaContentAspectRatio", "(F)V", "mediaContentAspectRatio", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/formats/NativeAd$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/VideoController;ZLcom/google/android/gms/ads/formats/NativeAd$AdChoicesInfo;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;ZZF)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public abstract class UnifiedNativeAdMapper {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private String headline;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private List images;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private String body;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private NativeAd.Image icon;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private String callToAction;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private String advertiser;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private Double starRating;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private String store;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private String price;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private VideoController videoController;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private boolean hasVideoContent;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    private NativeAd.AdChoicesInfo attributionInfo;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    private View adChoicesContent;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    private View mediaView;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private Object mediatedAd;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private Bundle extras;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private boolean overrideImpressionRecording;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private boolean overrideClickHandling;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private float mediaContentAspectRatio;

    public UnifiedNativeAdMapper() {
        this(0);
    }

    public /* synthetic */ UnifiedNativeAdMapper(int i) {
        this(null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, new Bundle(), false, false, 0.0f);
    }

    public UnifiedNativeAdMapper(String str, List<? extends NativeAd.Image> list, String str2, NativeAd.Image image, String str3, String str4, Double d, String str5, String str6, VideoController videoController, boolean z, NativeAd.AdChoicesInfo adChoicesInfo, View view, View view2, Object obj, Bundle extras, boolean z2, boolean z3, float f) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.headline = str;
        this.images = list;
        this.body = str2;
        this.icon = image;
        this.callToAction = str3;
        this.advertiser = str4;
        this.starRating = d;
        this.store = str5;
        this.price = str6;
        this.videoController = videoController;
        this.hasVideoContent = z;
        this.attributionInfo = adChoicesInfo;
        this.adChoicesContent = view;
        this.mediaView = view2;
        this.mediatedAd = obj;
        this.extras = extras;
        this.overrideImpressionRecording = z2;
        this.overrideClickHandling = z3;
        this.mediaContentAspectRatio = f;
    }

    public void destroy() {
    }

    public final View getAdChoicesContent() {
        return this.adChoicesContent;
    }

    public final String getAdvertiser() {
        return this.advertiser;
    }

    public final NativeAd.AdChoicesInfo getAttributionInfo() {
        return this.attributionInfo;
    }

    public final String getBody() {
        return this.body;
    }

    public final String getCallToAction() {
        return this.callToAction;
    }

    public final Bundle getExtras() {
        return this.extras;
    }

    public final boolean getHasVideoContent() {
        return this.hasVideoContent;
    }

    public final String getHeadline() {
        return this.headline;
    }

    public final NativeAd.Image getIcon() {
        return this.icon;
    }

    public final List<NativeAd.Image> getImages() {
        return this.images;
    }

    public final float getMediaContentAspectRatio() {
        return this.mediaContentAspectRatio;
    }

    public final View getMediaView() {
        return this.mediaView;
    }

    public final Object getMediatedAd() {
        return this.mediatedAd;
    }

    public final boolean getOverrideClickHandling() {
        return this.overrideClickHandling;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.overrideImpressionRecording;
    }

    public final String getPrice() {
        return this.price;
    }

    public final Double getStarRating() {
        return this.starRating;
    }

    public final String getStore() {
        return this.store;
    }

    public final VideoController getVideoController() {
        return this.videoController;
    }

    public void handleClick(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    public void recordImpression() {
    }

    public final void setAdChoicesContent(View view) {
        this.adChoicesContent = view;
    }

    public final void setAdvertiser(String str) {
        this.advertiser = str;
    }

    public final void setAttributionInfo(NativeAd.AdChoicesInfo adChoicesInfo) {
        this.attributionInfo = adChoicesInfo;
    }

    public final void setBody(String str) {
        this.body = str;
    }

    public final void setCallToAction(String str) {
        this.callToAction = str;
    }

    public final void setExtras(Bundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "<set-?>");
        this.extras = bundle;
    }

    public final void setHasVideoContent(boolean z) {
        this.hasVideoContent = z;
    }

    public final void setHeadline(String str) {
        this.headline = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.icon = image;
    }

    public final void setImages(List<? extends NativeAd.Image> list) {
        this.images = list;
    }

    public final void setMediaContentAspectRatio(float f) {
        this.mediaContentAspectRatio = f;
    }

    public final void setMediaView(View view) {
        this.mediaView = view;
    }

    public final void setMediatedAd(Object obj) {
        this.mediatedAd = obj;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.overrideClickHandling = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.overrideImpressionRecording = z;
    }

    public final void setPrice(String str) {
        this.price = str;
    }

    public final void setStarRating(Double d) {
        this.starRating = d;
    }

    public final void setStore(String str) {
        this.store = str;
    }

    public final void setVideoController(VideoController videoController) {
        this.videoController = videoController;
    }

    public void trackViews(View containerView, Map<String, View> clickableAssetViews, Map<String, View> nonclickableAssetViews) {
        Intrinsics.checkNotNullParameter(containerView, "containerView");
        Intrinsics.checkNotNullParameter(clickableAssetViews, "clickableAssetViews");
        Intrinsics.checkNotNullParameter(nonclickableAssetViews, "nonclickableAssetViews");
    }

    public void untrackView(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }
}
