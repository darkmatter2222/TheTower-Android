package com.google.android.libraries.ads.mobile.sdk.common;

import android.os.Bundle;
import com.ironsource.C3908x1;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;
import java.util.Set;
import p005kotlin.Metadata;
import p005kotlin.annotation.AnnotationRetention;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001:\u0003\u001a\u001b\u001cB\u0099\u0001\b\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\r0\u000b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u001d"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;", "", "m", "Ljava/lang/String;", "getAdUnitId", "()Ljava/lang/String;", "adUnitId", "", "categoryExclusions", "contentUrl", "", "customTargeting", "Landroid/os/Bundle;", "googleExtrasBundle", "keywords", "neighboringContentUrls", "adSourceExtrasBundles", "publisherProvidedId", "requestAgent", "", "placementId", "", "skipUninitializedAdapters", "<init>", "(Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Landroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JZ)V", "Builder", "ErrorCode", "com/google/android/libraries/ads/mobile/sdk/common/b", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public class AdRequest extends BaseRequest {

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    private final String adUnitId;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\u0007\u001a\u00020\u0000H\u0014¨\u0006\b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;", "adUnitId", "", "(Ljava/lang/String;)V", "build", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", C3908x1.o, "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends BaseAdRequestBuilder<Builder> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId) {
            super(adUnitId);
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        }

        public final AdRequest build() {
            String strB = getA();
            if (strB != null) {
                return new AdRequest(strB, getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), getK(), getL());
            }
            throw new IllegalArgumentException("Ad unit ID cannot be null.".toString());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode;", "", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @p005kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface ErrorCode {
        public static final int APP_ID_MISSING = 4;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.a;
        public static final int INTERNAL_ERROR = 0;
        public static final int INVALID_AD_STRING = 6;
        public static final int INVALID_REQUEST = 1;
        public static final int MEDIATION_NO_FILL = 5;
        public static final int NETWORK_ERROR = 2;
        public static final int NO_FILL = 3;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\u000b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$ErrorCode$Companion;", "", "", "INTERNAL_ERROR", "I", "INVALID_REQUEST", "NETWORK_ERROR", "NO_FILL", "APP_ID_MISSING", "MEDIATION_NO_FILL", "INVALID_AD_STRING", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
        public static final class Companion {
            public static final int APP_ID_MISSING = 4;
            public static final int INTERNAL_ERROR = 0;
            public static final int INVALID_AD_STRING = 6;
            public static final int INVALID_REQUEST = 1;
            public static final int MEDIATION_NO_FILL = 5;
            public static final int NETWORK_ERROR = 2;
            public static final int NO_FILL = 3;
            static final /* synthetic */ Companion a = new Companion();

            private Companion() {
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected AdRequest(String adUnitId, Set<String> categoryExclusions, String str, Map<String, String> customTargeting, Bundle googleExtrasBundle, Set<String> keywords, Set<String> neighboringContentUrls, Map<String, Bundle> adSourceExtrasBundles, String str2, String str3, long j, boolean z) {
        super(adUnitId, categoryExclusions, str, customTargeting, googleExtrasBundle, keywords, neighboringContentUrls, adSourceExtrasBundles, str2, str3, j, z);
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(categoryExclusions, "categoryExclusions");
        Intrinsics.checkNotNullParameter(customTargeting, "customTargeting");
        Intrinsics.checkNotNullParameter(googleExtrasBundle, "googleExtrasBundle");
        Intrinsics.checkNotNullParameter(keywords, "keywords");
        Intrinsics.checkNotNullParameter(neighboringContentUrls, "neighboringContentUrls");
        Intrinsics.checkNotNullParameter(adSourceExtrasBundles, "adSourceExtrasBundles");
        this.adUnitId = adUnitId;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequest
    public String getAdUnitId() {
        return this.adUnitId;
    }
}
