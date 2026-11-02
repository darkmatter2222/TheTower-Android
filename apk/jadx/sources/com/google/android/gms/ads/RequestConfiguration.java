package com.google.android.gms.ads;

import com.ironsource.adapters.admob.AdMobConstants;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.annotation.AnnotationRetention;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u001f2\u00020\u0001:\u0004\u001f !\"B9\b\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0017¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006#"}, d2 = {"Lcom/google/android/gms/ads/RequestConfiguration;", "", "", "a", "I", "getTagForChildDirectedTreatment", "()I", "tagForChildDirectedTreatment", "b", "getTagForUnderAgeOfConsent", "tagForUnderAgeOfConsent", "", "c", "Ljava/lang/String;", "getMaxAdContentRating", "()Ljava/lang/String;", "maxAdContentRating", "", "d", "Ljava/util/List;", "getTestDeviceIds", "()Ljava/util/List;", "testDeviceIds", "Lcom/google/android/gms/ads/AgeRestrictedTreatment;", "e", "Lcom/google/android/gms/ads/AgeRestrictedTreatment;", "getAgeRestrictedTreatment", "()Lcom/google/android/gms/ads/AgeRestrictedTreatment;", "ageRestrictedTreatment", "<init>", "(IILjava/lang/String;Ljava/util/List;Lcom/google/android/gms/ads/AgeRestrictedTreatment;)V", "Companion", AdMobConstants.NETWORK_DATA_CONTENT_RATING, "TagForChildDirectedTreatment", "TagForUnderAgeOfConsent", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class RequestConfiguration {
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final int tagForChildDirectedTreatment;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final int tagForUnderAgeOfConsent;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final String maxAdContentRating;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final List testDeviceIds;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final AgeRestrictedTreatment ageRestrictedTreatment;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/google/android/gms/ads/RequestConfiguration$MaxAdContentRating;", "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @p005kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface MaxAdContentRating {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/google/android/gms/ads/RequestConfiguration$TagForChildDirectedTreatment;", "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @p005kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/google/android/gms/ads/RequestConfiguration$TagForUnderAgeOfConsent;", "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @p005kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface TagForUnderAgeOfConsent {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public RequestConfiguration(int i, int i2, String maxAdContentRating, List<String> testDeviceIds) {
        this(i, i2, maxAdContentRating, testDeviceIds, 0);
        Intrinsics.checkNotNullParameter(maxAdContentRating, "maxAdContentRating");
        Intrinsics.checkNotNullParameter(testDeviceIds, "testDeviceIds");
    }

    public /* synthetic */ RequestConfiguration(int i, int i2, String str, List list, int i3) {
        this(i, i2, str, (List<String>) list, AgeRestrictedTreatment.UNSPECIFIED);
    }

    public RequestConfiguration(int i, int i2, String maxAdContentRating, List<String> testDeviceIds, AgeRestrictedTreatment ageRestrictedTreatment) {
        Intrinsics.checkNotNullParameter(maxAdContentRating, "maxAdContentRating");
        Intrinsics.checkNotNullParameter(testDeviceIds, "testDeviceIds");
        Intrinsics.checkNotNullParameter(ageRestrictedTreatment, "ageRestrictedTreatment");
        this.tagForChildDirectedTreatment = i;
        this.tagForUnderAgeOfConsent = i2;
        this.maxAdContentRating = maxAdContentRating;
        this.testDeviceIds = testDeviceIds;
        this.ageRestrictedTreatment = ageRestrictedTreatment;
    }

    public final AgeRestrictedTreatment getAgeRestrictedTreatment() {
        return this.ageRestrictedTreatment;
    }

    public final String getMaxAdContentRating() {
        return this.maxAdContentRating;
    }

    public final int getTagForChildDirectedTreatment() {
        return this.tagForChildDirectedTreatment;
    }

    public final int getTagForUnderAgeOfConsent() {
        return this.tagForUnderAgeOfConsent;
    }

    public final List<String> getTestDeviceIds() {
        return this.testDeviceIds;
    }
}
