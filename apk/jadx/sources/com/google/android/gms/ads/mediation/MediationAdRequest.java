package com.google.android.gms.ads.mediation;

import android.location.Location;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import java.util.Date;
import java.util.Set;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated(message = "Use [com.google.android.gms.ads.mediation.Adapter] and [com.google.android.gms.ads.mediation.MediationAdConfiguration] instead.")
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\bg\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H'J\b\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H&J\n\u0010\t\u001a\u0004\u0018\u00010\nH&J\n\u0010\u000b\u001a\u0004\u0018\u00010\bH&J\b\u0010\f\u001a\u00020\rH'J\b\u0010\u000e\u001a\u00020\rH&J\b\u0010\u000f\u001a\u00020\u0005H&J\b\u0010\u0010\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationAdRequest;", "", "getBirthday", "Ljava/util/Date;", "getGender", "", "getKeywords", "", "", "getLocation", "Landroid/location/Location;", "getMaxAdContentRating", "isDesignedForFamilies", "", "isTesting", "taggedForChildDirectedTreatment", "taggedForUnderAgeTreatment", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MediationAdRequest {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationAdRequest$Companion;", "", "", "b", "I", "getTAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE", "()I", "TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE", "c", "getTAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE", "TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE", "d", "getTAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED", "TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        static final /* synthetic */ Companion a = new Companion();

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        private static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE.getValue();

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        private static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE.getValue();

        /* JADX INFO: renamed from: d, reason: from kotlin metadata */
        private static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED.getValue();

        private Companion() {
        }

        public final int getTAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE() {
            return TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE;
        }

        public final int getTAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE() {
            return TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE;
        }

        public final int getTAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED() {
            return TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED;
        }
    }

    @Deprecated(message = "This method is deprecated. No replacement.")
    Date getBirthday();

    @Deprecated(message = "This method is deprecated. No replacement.")
    int getGender();

    Set<String> getKeywords();

    Location getLocation();

    String getMaxAdContentRating();

    @Deprecated(message = "This method is deprecated. No replacement.")
    boolean isDesignedForFamilies();

    boolean isTesting();

    int taggedForChildDirectedTreatment();

    int taggedForUnderAgeTreatment();
}
