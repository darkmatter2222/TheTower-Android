package com.google.android.libraries.ads.mobile.sdk.common;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder;
import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.tapjoy.TJAdUnitConstants;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.f01;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0004\b'\u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u0002J\u000f\u0010\u0003\u001a\u00028\u0000H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00028\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000b\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u000b\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\u00052\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\r¢\u0006\u0004\b\u000b\u0010\u000fJ\u0015\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\u0005¢\u0006\u0004\b\u0011\u0010\bJ\u001b\u0010\u0014\u001a\u00028\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00020\u0005¢\u0006\u0004\b\u0017\u0010\bJ\u0015\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\bJ%\u0010\u001f\u001a\u00028\u00002\u000e\u0010\u001c\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001b0\u001a2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010\"\u001a\u00028\u00002\u0006\u0010!\u001a\u00020\u001d¢\u0006\u0004\b\"\u0010#J\u0015\u0010%\u001a\u00028\u00002\u0006\u0010$\u001a\u00020\u0005¢\u0006\u0004\b%\u0010\bJ\u0017\u0010(\u001a\u00028\u00002\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)¨\u0006*"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "skipUninitializedAdapters", "()Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", "", "keyword", "addKeyword", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", C3510b4.i.W, "value", "putCustomTargeting", "(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", "", TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", "contentUrl", "setContentUrl", "", "neighboringContentUrls", "setNeighboringContentUrls", "(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", "requestAgent", "setRequestAgent", "categoryExclusion", "addCategoryExclusion", "Ljava/lang/Class;", "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;", "adapterClass", "Landroid/os/Bundle;", "adSourceExtras", "putAdSourceExtrasBundle", "(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", "extraBundle", "setGoogleExtrasBundle", "(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", "publisherProvidedId", "setPublisherProvidedId", "", "placementId", "setPlacementId", "(J)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public abstract class BaseRequestBuilder<T extends BaseRequestBuilder<T>> {
    private String a;
    private String c;
    private String i;
    private String j;
    private long k;
    private boolean l;
    private final LinkedHashSet b = new LinkedHashSet();
    private final LinkedHashMap d = new LinkedHashMap();
    private Bundle e = new Bundle();
    private final HashSet f = new HashSet();
    private final HashSet g = new HashSet();
    private final LinkedHashMap h = new LinkedHashMap();

    protected BaseRequestBuilder(String str) {
        this.a = str;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    protected final LinkedHashMap getH() {
        return this.h;
    }

    protected final void a(String str) {
        this.a = str;
    }

    public final T addCategoryExclusion(String categoryExclusion) {
        Intrinsics.checkNotNullParameter(categoryExclusion, "categoryExclusion");
        this.b.add(categoryExclusion);
        return (T) self();
    }

    public final T addKeyword(String keyword) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        this.f.add(keyword);
        return (T) self();
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    protected final String getA() {
        return this.a;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    protected final LinkedHashSet getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    protected final String getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    protected final LinkedHashMap getD() {
        return this.d;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    protected final Bundle getE() {
        return this.e;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    protected final HashSet getF() {
        return this.f;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    protected final HashSet getG() {
        return this.g;
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    protected final long getK() {
        return this.k;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    protected final String getI() {
        return this.i;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    protected final String getJ() {
        return this.j;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    protected final boolean getL() {
        return this.l;
    }

    public final T putAdSourceExtrasBundle(Class<? extends MediationExtrasReceiver> adapterClass, Bundle adSourceExtras) {
        Intrinsics.checkNotNullParameter(adapterClass, "adapterClass");
        Intrinsics.checkNotNullParameter(adSourceExtras, "adSourceExtras");
        if (Intrinsics.areEqual(adapterClass, AdMobAdapter.class)) {
            Bundle bundleDeepCopy = adSourceExtras.deepCopy();
            Intrinsics.checkNotNullExpressionValue(bundleDeepCopy, "deepCopy(...)");
            this.e = bundleDeepCopy;
            return (T) self();
        }
        LinkedHashMap linkedHashMap = this.h;
        String name = adapterClass.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        Bundle bundleDeepCopy2 = adSourceExtras.deepCopy();
        Intrinsics.checkNotNullExpressionValue(bundleDeepCopy2, "deepCopy(...)");
        linkedHashMap.put(name, bundleDeepCopy2);
        return (T) self();
    }

    public final T putCustomTargeting(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        this.d.put(key, value);
        return (T) self();
    }

    public final T putCustomTargeting(String key, List<String> values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        this.d.put(key, CollectionsKt.joinToString$default(values, FacebookConstants.PLACEMENT_IDS_SEPARATOR, null, null, 0, null, null, 62, null));
        return (T) self();
    }

    protected abstract BaseRequestBuilder self();

    public final T setContentUrl(String contentUrl) {
        Intrinsics.checkNotNullParameter(contentUrl, "contentUrl");
        if (contentUrl.length() <= 0) {
            throw new IllegalArgumentException("Content URL must be non-empty.".toString());
        }
        this.c = contentUrl;
        return (T) self();
    }

    public final T setGoogleExtrasBundle(Bundle extraBundle) {
        Intrinsics.checkNotNullParameter(extraBundle, "extraBundle");
        Bundle bundleDeepCopy = extraBundle.deepCopy();
        Intrinsics.checkNotNull(bundleDeepCopy);
        this.e = bundleDeepCopy;
        return (T) self();
    }

    public final T setNeighboringContentUrls(Set<String> neighboringContentUrls) {
        Intrinsics.checkNotNullParameter(neighboringContentUrls, "neighboringContentUrls");
        this.g.clear();
        for (String str : neighboringContentUrls) {
            if (str.length() == 0) {
                Splitter splitter = f01.a;
                f01.c("Neighboring content URL should not be empty.", null);
            } else {
                this.g.add(str);
            }
        }
        return (T) self();
    }

    public T setPlacementId(long placementId) {
        this.k = placementId;
        return (T) self();
    }

    public final T setPublisherProvidedId(String publisherProvidedId) {
        Intrinsics.checkNotNullParameter(publisherProvidedId, "publisherProvidedId");
        this.i = publisherProvidedId;
        return (T) self();
    }

    public final T setRequestAgent(String requestAgent) {
        Intrinsics.checkNotNullParameter(requestAgent, "requestAgent");
        this.j = requestAgent;
        return (T) self();
    }

    public final T skipUninitializedAdapters() {
        this.l = true;
        return (T) self();
    }
}
