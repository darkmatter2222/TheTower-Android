package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.sy3;
import p005kotlin.Metadata;
import p005kotlin.annotation.AnnotationRetention;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0014\b&\u0018\u00002\u00020\u0001:\u00017B[\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u0012\u0006\u0010\u001d\u001a\u00020\u0018\u0012\u0006\u0010 \u001a\u00020\u0018\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\b\u0010)\u001a\u0004\u0018\u00010$\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u00101\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u00104\u001a\u00020\u0012¢\u0006\u0004\b5\u00106J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\u0007J\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\n\u001a\u00020\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0017\u001a\u00020\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010 \u001a\u00020\u00188\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001a\u001a\u0004\b\u001f\u0010\u001cR\u001a\u0010#\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010\u0004R\u001c\u0010)\u001a\u0004\u0018\u00010$8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010\u0007R\u001a\u0010\b\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b-\u0010+\u001a\u0004\b.\u0010\u0007R\u001c\u00101\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b/\u0010\u0014\u001a\u0004\b0\u0010\u0016R\u001a\u00104\u001a\u00020\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b2\u0010\u0014\u001a\u0004\b3\u0010\u0016¨\u00068"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;", "", "", "isTestRequest", "()Z", "", "taggedForChildDirectedTreatment", "()I", "taggedForUnderAgeTreatment", "Landroid/content/Context;", "context", "Landroid/view/View;", "getWatermarkView", "(Landroid/content/Context;)Landroid/view/View;", "a", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "", "b", "Ljava/lang/String;", "getBidResponse", "()Ljava/lang/String;", "bidResponse", "Landroid/os/Bundle;", "c", "Landroid/os/Bundle;", "getServerParameters", "()Landroid/os/Bundle;", "serverParameters", "d", "getMediationExtras", "mediationExtras", "e", "Z", "isTesting", "Landroid/location/Location;", "f", "Landroid/location/Location;", "getLocation", "()Landroid/location/Location;", FirebaseAnalytics.Param.LOCATION, "g", "I", "getTaggedForChildDirectedTreatment", "h", "getTaggedForUnderAgeTreatment", "i", "getMaxAdContentRating", "maxAdContentRating", "j", "getWatermark", "watermark", "<init>", "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V", "TagForChildDirectedTreatment", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public abstract class MediationAdConfiguration {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Context context;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String bidResponse;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final Bundle serverParameters;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final Bundle mediationExtras;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final boolean isTesting;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final Location location;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final int taggedForChildDirectedTreatment;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final int taggedForUnderAgeTreatment;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final String maxAdContentRating;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private final String watermark;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationAdConfiguration$TagForChildDirectedTreatment;", "", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Retention(RetentionPolicy.SOURCE)
    @p005kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    public @interface TagForChildDirectedTreatment {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.a;
        public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
        public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
        public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationAdConfiguration$TagForChildDirectedTreatment$Companion;", "", "", "TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE", "I", "TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE", "TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
        public static final class Companion {
            public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
            public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
            public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
            static final /* synthetic */ Companion a = new Companion();

            private Companion() {
            }
        }
    }

    public MediationAdConfiguration(Context context, String bidResponse, Bundle serverParameters, Bundle mediationExtras, boolean z, Location location, int i, int i2, String str, String watermark) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bidResponse, "bidResponse");
        Intrinsics.checkNotNullParameter(serverParameters, "serverParameters");
        Intrinsics.checkNotNullParameter(mediationExtras, "mediationExtras");
        Intrinsics.checkNotNullParameter(watermark, "watermark");
        this.context = context;
        this.bidResponse = bidResponse;
        this.serverParameters = serverParameters;
        this.mediationExtras = mediationExtras;
        this.isTesting = z;
        this.location = location;
        this.taggedForChildDirectedTreatment = i;
        this.taggedForUnderAgeTreatment = i2;
        this.maxAdContentRating = str;
        this.watermark = watermark;
    }

    public String getBidResponse() {
        return this.bidResponse;
    }

    public Context getContext() {
        return this.context;
    }

    public Location getLocation() {
        return this.location;
    }

    public String getMaxAdContentRating() {
        return this.maxAdContentRating;
    }

    public Bundle getMediationExtras() {
        return this.mediationExtras;
    }

    public Bundle getServerParameters() {
        return this.serverParameters;
    }

    public int getTaggedForChildDirectedTreatment() {
        return this.taggedForChildDirectedTreatment;
    }

    public int getTaggedForUnderAgeTreatment() {
        return this.taggedForUnderAgeTreatment;
    }

    public String getWatermark() {
        return this.watermark;
    }

    public final View getWatermarkView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ImageView imageView = new ImageView(context);
        sy3.a(context, imageView, getWatermark());
        return imageView;
    }

    public final boolean isTestRequest() {
        return getIsTesting();
    }

    /* JADX INFO: renamed from: isTesting, reason: from getter */
    public boolean getIsTesting() {
        return this.isTesting;
    }

    public final int taggedForChildDirectedTreatment() {
        return getTaggedForChildDirectedTreatment();
    }

    public final int taggedForUnderAgeTreatment() {
        return getTaggedForUnderAgeTreatment();
    }
}
