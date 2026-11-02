package com.google.android.libraries.ads.mobile.sdk.common;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Map;
import java.util.Set;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\"\n\u0002\b\u001d\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b'\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001b\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\bH\u0007¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\t0\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\r\u001a\u0004\b\u0018\u0010\u000fR#\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\b8\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u000bR\u0017\u0010\"\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001d\u0010%\u001a\b\u0012\u0004\u0012\u00020\t0\u00118\u0006¢\u0006\f\n\u0004\b#\u0010\u0013\u001a\u0004\b$\u0010\u0015R\u001d\u0010(\u001a\b\u0012\u0004\u0012\u00020\t0\u00118\u0006¢\u0006\f\n\u0004\b&\u0010\u0013\u001a\u0004\b'\u0010\u0015R\u0019\u0010+\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b)\u0010\r\u001a\u0004\b*\u0010\u000fR\u0019\u0010.\u001a\u0004\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b,\u0010\r\u001a\u0004\b-\u0010\u000fR\u0017\u00104\u001a\u00020/8\u0006¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u001a\u0010:\u001a\u0002058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109¨\u0006;"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;", "", "Ljava/lang/Class;", "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;", "adapterClass", "Landroid/os/Bundle;", "getAdSourceExtrasBundle", "(Ljava/lang/Class;)Landroid/os/Bundle;", "", "", "getAdSourceExtrasBundles", "()Ljava/util/Map;", "a", "Ljava/lang/String;", "getAdUnitId", "()Ljava/lang/String;", "adUnitId", "", "b", "Ljava/util/Set;", "getCategoryExclusions", "()Ljava/util/Set;", "categoryExclusions", "c", "getContentUrl", "contentUrl", "d", "Ljava/util/Map;", "getCustomTargeting", "customTargeting", "e", "Landroid/os/Bundle;", "getGoogleExtrasBundle", "()Landroid/os/Bundle;", "googleExtrasBundle", "f", "getKeywords", "keywords", "g", "getNeighboringContentUrls", "neighboringContentUrls", "i", "getPublisherProvidedId", "publisherProvidedId", "j", "getRequestAgent", "requestAgent", "", "k", "J", "getPlacementId", "()J", "placementId", "", "l", "Z", "getSkipUninitializedAdapters", "()Z", "skipUninitializedAdapters", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public abstract class BaseRequest {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String adUnitId;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Set categoryExclusions;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final String contentUrl;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final Map customTargeting;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final Bundle googleExtrasBundle;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final Set keywords;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final Set neighboringContentUrls;
    private final Map h;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final String publisherProvidedId;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private final String requestAgent;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private final long placementId;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    private final boolean skipUninitializedAdapters;

    protected BaseRequest(String str, Set categoryExclusions, String str2, Map customTargeting, Bundle googleExtrasBundle, Set keywords, Set neighboringContentUrls, Map adSourceExtrasBundles, String str3, String str4, long j, boolean z) {
        Intrinsics.checkNotNullParameter(categoryExclusions, "categoryExclusions");
        Intrinsics.checkNotNullParameter(customTargeting, "customTargeting");
        Intrinsics.checkNotNullParameter(googleExtrasBundle, "googleExtrasBundle");
        Intrinsics.checkNotNullParameter(keywords, "keywords");
        Intrinsics.checkNotNullParameter(neighboringContentUrls, "neighboringContentUrls");
        Intrinsics.checkNotNullParameter(adSourceExtrasBundles, "adSourceExtrasBundles");
        this.adUnitId = str;
        this.categoryExclusions = categoryExclusions;
        this.contentUrl = str2;
        this.customTargeting = customTargeting;
        this.googleExtrasBundle = googleExtrasBundle;
        this.keywords = keywords;
        this.neighboringContentUrls = neighboringContentUrls;
        this.h = adSourceExtrasBundles;
        this.publisherProvidedId = str3;
        this.requestAgent = str4;
        this.placementId = j;
        this.skipUninitializedAdapters = z;
    }

    public /* synthetic */ BaseRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, set, (i & 4) != 0 ? null : str2, map, bundle, set2, set3, map2, (i & 256) != 0 ? null : str3, (i & 512) != 0 ? null : str4, (i & 1024) != 0 ? 0L : j, (i & 2048) != 0 ? false : z);
    }

    public final Bundle getAdSourceExtrasBundle(Class<? extends MediationExtrasReceiver> adapterClass) {
        Intrinsics.checkNotNullParameter(adapterClass, "adapterClass");
        return Intrinsics.areEqual(adapterClass, AdMobAdapter.class) ? this.googleExtrasBundle : (Bundle) this.h.get(adapterClass.getName());
    }

    public final Map<String, Bundle> getAdSourceExtrasBundles() {
        return this.h;
    }

    public String getAdUnitId() {
        return this.adUnitId;
    }

    public final Set<String> getCategoryExclusions() {
        return this.categoryExclusions;
    }

    public final String getContentUrl() {
        return this.contentUrl;
    }

    public final Map<String, String> getCustomTargeting() {
        return this.customTargeting;
    }

    public final Bundle getGoogleExtrasBundle() {
        return this.googleExtrasBundle;
    }

    public final Set<String> getKeywords() {
        return this.keywords;
    }

    public final Set<String> getNeighboringContentUrls() {
        return this.neighboringContentUrls;
    }

    public final long getPlacementId() {
        return this.placementId;
    }

    public final String getPublisherProvidedId() {
        return this.publisherProvidedId;
    }

    public final String getRequestAgent() {
        return this.requestAgent;
    }

    public final boolean getSkipUninitializedAdapters() {
        return this.skipUninitializedAdapters;
    }
}
