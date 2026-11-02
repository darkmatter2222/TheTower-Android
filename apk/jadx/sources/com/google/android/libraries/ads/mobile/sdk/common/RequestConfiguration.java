package com.google.android.libraries.ads.mobile.sdk.common;

import android.content.Context;
import com.ironsource.adapters.admob.AdMobConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.m21;
import kotlin.o21;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u0000 .2\u00020\u0001:\u0006/.0123J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001d\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00198\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010%\u001a\u00020 8\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001c\u0010+\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u0011\u0010-\u001a\u00020&8F¢\u0006\u0006\u001a\u0004\b,\u0010*¨\u00064"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "", "Landroid/content/Context;", "context", "", "isTestDevice", "(Landroid/content/Context;)Z", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;", "getTagForChildDirectedTreatment", "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;", "tagForChildDirectedTreatment", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;", "b", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;", "getTagForUnderAgeOfConsent", "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;", "tagForUnderAgeOfConsent", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;", "c", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;", "getMaxAdContentRating", "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;", "maxAdContentRating", "", "", "d", "Ljava/util/List;", "getTestDeviceIds", "()Ljava/util/List;", "testDeviceIds", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;", "e", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;", "getPublisherPrivacyPersonalizationState", "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;", "publisherPrivacyPersonalizationState", "Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;", "f", "Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;", "getAgeRestrictedTreatmentInternal", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;", "ageRestrictedTreatmentInternal", "getAgeRestrictedTreatment", "ageRestrictedTreatment", "Companion", "Builder", AdMobConstants.NETWORK_DATA_CONTENT_RATING, "PublisherPrivacyPersonalizationState", "TagForChildDirectedTreatment", "TagForUnderAgeOfConsent", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class RequestConfiguration {
    public static final String MAX_AD_CONTENT_RATING_KEY = "max_ad_content_rating";

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final TagForChildDirectedTreatment tagForChildDirectedTreatment;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final TagForUnderAgeOfConsent tagForUnderAgeOfConsent;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final MaxAdContentRating maxAdContentRating;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final List testDeviceIds;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final AgeRestrictedTreatment ageRestrictedTreatmentInternal;
    private final boolean g;

    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0014\u001a\u00020\u00002\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;", "", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;", "tagForChildDirectedTreatment", "setTagForChildDirectedTreatment", "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;", "tagForUnderAgeOfConsent", "setTagForUnderAgeOfConsent", "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;", "maxAdContentRating", "setMaxAdContentRating", "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;", "", "", "testDeviceIds", "setTestDeviceIds", "(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;", "publisherPrivacyPersonalizationState", "setPublisherPrivacyPersonalizationState", "(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;", "ageRestrictedTreatment", "setAgeRestrictedTreatment", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AgeRestrictedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;", "<init>", "()V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private AgeRestrictedTreatment f;
        private TagForChildDirectedTreatment a = TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED;
        private TagForUnderAgeOfConsent b = TagForUnderAgeOfConsent.TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED;
        private MaxAdContentRating c = MaxAdContentRating.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        private final ArrayList d = CollectionsKt.arrayListOf("B3EEABB8EE11C2BE770B684D95219ECB");
        private PublisherPrivacyPersonalizationState e = PublisherPrivacyPersonalizationState.DEFAULT;
        private boolean g = true;

        public final /* synthetic */ Builder a(boolean z) {
            this.g = z;
            return this;
        }

        public final RequestConfiguration build() {
            return new RequestConfiguration(this.a, this.b, this.c, this.d, this.e, this.f, this.g, 0);
        }

        public final Builder setAgeRestrictedTreatment(AgeRestrictedTreatment ageRestrictedTreatment) {
            this.f = ageRestrictedTreatment;
            return this;
        }

        public final Builder setMaxAdContentRating(MaxAdContentRating maxAdContentRating) {
            Intrinsics.checkNotNullParameter(maxAdContentRating, "maxAdContentRating");
            this.c = maxAdContentRating;
            return this;
        }

        public final Builder setPublisherPrivacyPersonalizationState(PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState) {
            Intrinsics.checkNotNullParameter(publisherPrivacyPersonalizationState, "publisherPrivacyPersonalizationState");
            this.e = publisherPrivacyPersonalizationState;
            return this;
        }

        @Deprecated(message = "Use setAgeRestrictedTreatment instead.")
        public final Builder setTagForChildDirectedTreatment(TagForChildDirectedTreatment tagForChildDirectedTreatment) {
            Intrinsics.checkNotNullParameter(tagForChildDirectedTreatment, "tagForChildDirectedTreatment");
            this.a = tagForChildDirectedTreatment;
            return this;
        }

        @Deprecated(message = "Use setAgeRestrictedTreatment instead.")
        public final Builder setTagForUnderAgeOfConsent(TagForUnderAgeOfConsent tagForUnderAgeOfConsent) {
            Intrinsics.checkNotNullParameter(tagForUnderAgeOfConsent, "tagForUnderAgeOfConsent");
            this.b = tagForUnderAgeOfConsent;
            return this;
        }

        public final Builder setTestDeviceIds(List<String> testDeviceIds) {
            Intrinsics.checkNotNullParameter(testDeviceIds, "testDeviceIds");
            this.d.clear();
            this.d.addAll(testDeviceIds);
            this.d.add("B3EEABB8EE11C2BE770B684D95219ECB");
            return this;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$MaxAdContentRating[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$MaxAdContentRating[]) from 0x0042: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$MaxAdContentRating[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;", "", "", "a", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "value", "MAX_AD_CONTENT_RATING_UNSPECIFIED", "MAX_AD_CONTENT_RATING_G", "MAX_AD_CONTENT_RATING_PG", "MAX_AD_CONTENT_RATING_T", "MAX_AD_CONTENT_RATING_MA", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class MaxAdContentRating {
        MAX_AD_CONTENT_RATING_UNSPECIFIED(""),
        MAX_AD_CONTENT_RATING_G(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_G),
        MAX_AD_CONTENT_RATING_PG(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_PG),
        MAX_AD_CONTENT_RATING_T(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_T),
        MAX_AD_CONTENT_RATING_MA(com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_MA);

        private static final /* synthetic */ EnumEntries c;

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final String value;

        static {
            c = EnumEntriesKt.enumEntries(maxAdContentRatingArr);
        }

        private MaxAdContentRating(String str) {
            super(str, i);
            this.value = str;
        }

        public static EnumEntries d() {
            return c;
        }

        public static MaxAdContentRating[] values() {
            return (MaxAdContentRating[]) b.clone();
        }

        public final String getValue() {
            return this.value;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$PublisherPrivacyPersonalizationState[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$PublisherPrivacyPersonalizationState[]) from 0x0024: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$PublisherPrivacyPersonalizationState[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$PublisherPrivacyPersonalizationState;", "", "", "a", "I", "getValue", "()I", "value", "DEFAULT", "ENABLED", "DISABLED", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class PublisherPrivacyPersonalizationState {
        DEFAULT(0),
        ENABLED(1),
        DISABLED(2);

        private static final /* synthetic */ EnumEntries c;

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final int value;

        static {
            c = EnumEntriesKt.enumEntries(publisherPrivacyPersonalizationStateArr);
        }

        private PublisherPrivacyPersonalizationState(int i) {
            super(str, i);
            this.value = i;
        }

        public static EnumEntries d() {
            return c;
        }

        public static PublisherPrivacyPersonalizationState[] values() {
            return (PublisherPrivacyPersonalizationState[]) b.clone();
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$TagForChildDirectedTreatment[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$TagForChildDirectedTreatment[]) from 0x0025: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$TagForChildDirectedTreatment[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\t\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;", "", "", "a", "I", "getValue", "()I", "value", "TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED", "TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE", "TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    @Deprecated(message = "Use Builder.setAgeRestrictedTreatment instead.")
    public static final class TagForChildDirectedTreatment {
        TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED(-1),
        TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE(0),
        TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE(1);


        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final int value;

        static {
            EnumEntriesKt.enumEntries(tagForChildDirectedTreatmentArr);
        }

        private TagForChildDirectedTreatment(int i) {
            super(str, i);
            this.value = i;
        }

        public static TagForChildDirectedTreatment[] values() {
            return (TagForChildDirectedTreatment[]) b.clone();
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$TagForUnderAgeOfConsent[], still in use, count: 1, list:
  (r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$TagForUnderAgeOfConsent[]) from 0x0025: INVOKE (r0v1 com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration$TagForUnderAgeOfConsent[]) STATIC call: kotlin.enums.EnumEntriesKt.enumEntries(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:<E extends java.lang.Enum<E>>:(E extends java.lang.Enum<E>[]):kotlin.enums.EnumEntries<E extends java.lang.Enum<E>> (m)]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\t\b\u0087\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;", "", "", "a", "I", "getValue", "()I", "value", "TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED", "TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE", "TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    @Deprecated(message = "Use Builder.setAgeRestrictedTreatment instead.")
    public static final class TagForUnderAgeOfConsent {
        TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED(-1),
        TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE(0),
        TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE(1);


        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final int value;

        static {
            EnumEntriesKt.enumEntries(tagForUnderAgeOfConsentArr);
        }

        private TagForUnderAgeOfConsent(int i) {
            super(str, i);
            this.value = i;
        }

        public static TagForUnderAgeOfConsent[] values() {
            return (TagForUnderAgeOfConsent[]) b.clone();
        }

        public final int getValue() {
            return this.value;
        }
    }

    private RequestConfiguration(TagForChildDirectedTreatment tagForChildDirectedTreatment, TagForUnderAgeOfConsent tagForUnderAgeOfConsent, MaxAdContentRating maxAdContentRating, ArrayList arrayList, PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState, AgeRestrictedTreatment ageRestrictedTreatment, boolean z) {
        this.tagForChildDirectedTreatment = tagForChildDirectedTreatment;
        this.tagForUnderAgeOfConsent = tagForUnderAgeOfConsent;
        this.maxAdContentRating = maxAdContentRating;
        this.testDeviceIds = arrayList;
        this.publisherPrivacyPersonalizationState = publisherPrivacyPersonalizationState;
        this.ageRestrictedTreatmentInternal = ageRestrictedTreatment;
        this.g = z;
    }

    public /* synthetic */ RequestConfiguration(TagForChildDirectedTreatment tagForChildDirectedTreatment, TagForUnderAgeOfConsent tagForUnderAgeOfConsent, MaxAdContentRating maxAdContentRating, ArrayList arrayList, PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState, AgeRestrictedTreatment ageRestrictedTreatment, boolean z, int i) {
        this(tagForChildDirectedTreatment, tagForUnderAgeOfConsent, maxAdContentRating, arrayList, publisherPrivacyPersonalizationState, ageRestrictedTreatment, z);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final /* synthetic */ boolean getG() {
        return this.g;
    }

    public final Builder b() {
        return new Builder().setTagForChildDirectedTreatment(this.tagForChildDirectedTreatment).setTagForUnderAgeOfConsent(this.tagForUnderAgeOfConsent).setMaxAdContentRating(this.maxAdContentRating).setPublisherPrivacyPersonalizationState(this.publisherPrivacyPersonalizationState).setTestDeviceIds(this.testDeviceIds).setAgeRestrictedTreatment(this.ageRestrictedTreatmentInternal).a(this.g);
    }

    public final AgeRestrictedTreatment getAgeRestrictedTreatment() {
        AgeRestrictedTreatment ageRestrictedTreatment = this.ageRestrictedTreatmentInternal;
        return ageRestrictedTreatment == null ? AgeRestrictedTreatment.UNSPECIFIED : ageRestrictedTreatment;
    }

    public final AgeRestrictedTreatment getAgeRestrictedTreatmentInternal() {
        return this.ageRestrictedTreatmentInternal;
    }

    public final MaxAdContentRating getMaxAdContentRating() {
        return this.maxAdContentRating;
    }

    public final PublisherPrivacyPersonalizationState getPublisherPrivacyPersonalizationState() {
        return this.publisherPrivacyPersonalizationState;
    }

    public final TagForChildDirectedTreatment getTagForChildDirectedTreatment() {
        return this.tagForChildDirectedTreatment;
    }

    public final TagForUnderAgeOfConsent getTagForUnderAgeOfConsent() {
        return this.tagForUnderAgeOfConsent;
    }

    public final List<String> getTestDeviceIds() {
        return this.testDeviceIds;
    }

    public final boolean isTestDevice(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        List list = this.testDeviceIds;
        m21 m21Var = o21.f;
        return CollectionsKt.contains(list, m21.a(context));
    }
}
