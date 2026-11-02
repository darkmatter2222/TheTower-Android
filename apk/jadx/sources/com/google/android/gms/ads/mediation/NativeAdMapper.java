package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.NativeAd;
import com.ironsource.C3510b4;
import com.ironsource.G5;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.List;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u0006\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u001a\b&\u0018\u00002\u00020\u0001Bì\u0001\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u000b\u0012\u0010\b\u0002\u0010,\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u00107\u001a\u0004\u0018\u00010%\u0012\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010G\u001a\u0004\u0018\u00010@\u0012\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010W\u001a\u0004\u0018\u00010P\u0012\t\b\u0002\u0010\u0088\u0001\u001a\u00020\u0014\u0012\n\b\u0002\u0010_\u001a\u0004\u0018\u00010X\u0012\n\b\u0002\u0010e\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010i\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010p\u001a\u0004\u0018\u00010\u0001\u0012\b\b\u0002\u0010x\u001a\u00020q\u0012\b\b\u0002\u0010}\u001a\u00020\u0014\u0012\t\b\u0002\u0010\u0081\u0001\u001a\u00020\u0014\u0012\t\b\u0002\u0010\u0087\u0001\u001a\u00020\u0019¢\u0006\u0006\b\u0089\u0001\u0010\u008a\u0001B\n\b\u0016¢\u0006\u0005\b\u0089\u0001\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ?\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\n2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00050\nH\u0017¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\bJ\u000f\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u0015\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0005¢\u0006\u0004\b\u0013\u0010\bJ\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001bR$\u0010#\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R*\u0010,\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R$\u00100\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u001e\u001a\u0004\b.\u0010 \"\u0004\b/\u0010\"R$\u00107\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R$\u0010;\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010\u001e\u001a\u0004\b9\u0010 \"\u0004\b:\u0010\"R$\u0010?\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010\u001e\u001a\u0004\b=\u0010 \"\u0004\b>\u0010\"R$\u0010G\u001a\u0004\u0018\u00010@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR$\u0010K\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010\u001e\u001a\u0004\bI\u0010 \"\u0004\bJ\u0010\"R$\u0010O\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010\u001e\u001a\u0004\bM\u0010 \"\u0004\bN\u0010\"R$\u0010W\u001a\u0004\u0018\u00010P8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR$\u0010_\u001a\u0004\u0018\u00010X8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R$\u0010e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010\bR$\u0010i\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\bf\u0010a\u001a\u0004\bg\u0010c\"\u0004\bh\u0010\bR$\u0010p\u001a\u0004\u0018\u00010\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bj\u0010k\u001a\u0004\bl\u0010m\"\u0004\bn\u0010oR\"\u0010x\u001a\u00020q8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\br\u0010s\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\"\u0010}\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\by\u0010z\u001a\u0004\b{\u0010\u0016\"\u0004\b|\u0010\u0018R$\u0010\u0081\u0001\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0013\n\u0004\b~\u0010z\u001a\u0004\b\u007f\u0010\u0016\"\u0005\b\u0080\u0001\u0010\u0018R(\u0010\u0087\u0001\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u0082\u0001\u0010\u0083\u0001\u001a\u0005\b\u0084\u0001\u0010\u001b\"\u0006\b\u0085\u0001\u0010\u0086\u0001¨\u0006\u008b\u0001"}, d2 = {"Lcom/google/android/gms/ads/mediation/NativeAdMapper;", "", "", "recordImpression", "()V", "Landroid/view/View;", "view", "handleClick", "(Landroid/view/View;)V", "containerView", "", "", "clickableAssetViews", "nonclickableAssetViews", "trackViews", "(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V", "untrackView", "destroy", "mediaView", "setMediaView", "", "hasVideoContent", "()Z", "setHasVideoContent", "(Z)V", "", "getDuration", "()F", "getCurrentTime", "a", "Ljava/lang/String;", "getHeadline", "()Ljava/lang/String;", "setHeadline", "(Ljava/lang/String;)V", "headline", "", "Lcom/google/android/gms/ads/nativead/NativeAd$Image;", "b", "Ljava/util/List;", "getImages", "()Ljava/util/List;", "setImages", "(Ljava/util/List;)V", "images", "c", "getBody", "setBody", C3510b4.i.E0, "d", "Lcom/google/android/gms/ads/nativead/NativeAd$Image;", "getIcon", "()Lcom/google/android/gms/ads/nativead/NativeAd$Image;", "setIcon", "(Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V", C3510b4.i.H0, "e", "getCallToAction", "setCallToAction", "callToAction", "f", "getAdvertiser", "setAdvertiser", C3510b4.i.F0, "", "g", "Ljava/lang/Double;", "getStarRating", "()Ljava/lang/Double;", "setStarRating", "(Ljava/lang/Double;)V", "starRating", "h", "getStore", "setStore", "store", "i", "getPrice", "setPrice", "price", "Lcom/google/android/gms/ads/VideoController;", "j", "Lcom/google/android/gms/ads/VideoController;", "getVideoController", "()Lcom/google/android/gms/ads/VideoController;", "setVideoController", "(Lcom/google/android/gms/ads/VideoController;)V", "videoController", "Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;", "l", "Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;", "getAttributionInfo", "()Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;", "setAttributionInfo", "(Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;)V", "attributionInfo", "m", "Landroid/view/View;", "getAdChoicesContent", "()Landroid/view/View;", "setAdChoicesContent", "adChoicesContent", G5.q, "getMediatedMediaView", "setMediatedMediaView", "mediatedMediaView", "o", "Ljava/lang/Object;", "getMediatedAd", "()Ljava/lang/Object;", "setMediatedAd", "(Ljava/lang/Object;)V", "mediatedAd", "Landroid/os/Bundle;", "p", "Landroid/os/Bundle;", "getExtras", "()Landroid/os/Bundle;", "setExtras", "(Landroid/os/Bundle;)V", HandleInvocationsFromAdViewer.KEY_EXTRAS, "q", "Z", "getOverrideImpressionRecording", "setOverrideImpressionRecording", "overrideImpressionRecording", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "getOverrideClickHandling", "setOverrideClickHandling", "overrideClickHandling", "s", "F", "getMediaContentAspectRatio", "setMediaContentAspectRatio", "(F)V", "mediaContentAspectRatio", "internalHasVideoContent", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/VideoController;ZLcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;ZZF)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public abstract class NativeAdMapper {

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
    private boolean k;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    private NativeAd.AdChoicesInfo attributionInfo;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    private View adChoicesContent;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    private View mediatedMediaView;

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

    public NativeAdMapper() {
        this(0);
    }

    public /* synthetic */ NativeAdMapper(int i) {
        this(null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, new Bundle(), false, false, 0.0f);
    }

    public NativeAdMapper(String str, List<? extends NativeAd.Image> list, String str2, NativeAd.Image image, String str3, String str4, Double d, String str5, String str6, VideoController videoController, boolean z, NativeAd.AdChoicesInfo adChoicesInfo, View view, View view2, Object obj, Bundle extras, boolean z2, boolean z3, float f) {
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
        this.k = z;
        this.attributionInfo = adChoicesInfo;
        this.adChoicesContent = view;
        this.mediatedMediaView = view2;
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

    public float getCurrentTime() {
        return 0.0f;
    }

    public float getDuration() {
        return 0.0f;
    }

    public final Bundle getExtras() {
        return this.extras;
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

    public final Object getMediatedAd() {
        return this.mediatedAd;
    }

    public final View getMediatedMediaView() {
        return this.mediatedMediaView;
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

    /* JADX INFO: renamed from: hasVideoContent, reason: from getter */
    public final boolean getK() {
        return this.k;
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

    public final void setHasVideoContent(boolean hasVideoContent) {
        this.k = hasVideoContent;
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

    public final void setMediaView(View mediaView) {
        Intrinsics.checkNotNullParameter(mediaView, "mediaView");
        this.mediatedMediaView = mediaView;
    }

    public final void setMediatedAd(Object obj) {
        this.mediatedAd = obj;
    }

    public final void setMediatedMediaView(View view) {
        this.mediatedMediaView = view;
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
