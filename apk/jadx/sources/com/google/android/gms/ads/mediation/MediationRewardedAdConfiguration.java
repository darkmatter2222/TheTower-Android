package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.G5;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0011\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\u0006\u0010\u001a\u001a\u00020\u0017\u0012\b\u0010!\u001a\u0004\u0018\u00010\u001c\u0012\u0006\u0010'\u001a\u00020\"\u0012\u0006\u0010*\u001a\u00020\"\u0012\b\u0010-\u001a\u0004\u0018\u00010\b\u0012\u0006\u00100\u001a\u00020\b¢\u0006\u0004\b1\u00102R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u0015\u0010\u0012R\u001a\u0010\u001a\u001a\u00020\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010!\u001a\u0004\u0018\u00010\u001c8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001a\u0010'\u001a\u00020\"8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u001a\u0010*\u001a\u00020\"8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b(\u0010$\u001a\u0004\b)\u0010&R\u001c\u0010-\u001a\u0004\u0018\u00010\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b+\u0010\n\u001a\u0004\b,\u0010\fR\u001a\u00100\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b.\u0010\n\u001a\u0004\b/\u0010\f¨\u00063"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;", "Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;", "Landroid/content/Context;", "k", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "", "l", "Ljava/lang/String;", "getBidResponse", "()Ljava/lang/String;", "bidResponse", "Landroid/os/Bundle;", "m", "Landroid/os/Bundle;", "getServerParameters", "()Landroid/os/Bundle;", "serverParameters", G5.q, "getMediationExtras", "mediationExtras", "", "o", "Z", "isTesting", "()Z", "Landroid/location/Location;", "p", "Landroid/location/Location;", "getLocation", "()Landroid/location/Location;", FirebaseAnalytics.Param.LOCATION, "", "q", "I", "getTaggedForChildDirectedTreatment", "()I", "taggedForChildDirectedTreatment", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "getTaggedForUnderAgeTreatment", "taggedForUnderAgeTreatment", "s", "getMaxAdContentRating", "maxAdContentRating", "t", "getWatermark", "watermark", "<init>", "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class MediationRewardedAdConfiguration extends MediationAdConfiguration {

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private final Context context;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata */
    private final String bidResponse;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata */
    private final Bundle serverParameters;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    private final Bundle mediationExtras;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final boolean isTesting;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final Location location;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private final int taggedForChildDirectedTreatment;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private final int taggedForUnderAgeTreatment;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private final String maxAdContentRating;

    /* JADX INFO: renamed from: t, reason: from kotlin metadata */
    private final String watermark;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediationRewardedAdConfiguration(Context context, String bidResponse, Bundle serverParameters, Bundle mediationExtras, boolean z, Location location, int i, int i2, String str, String watermark) {
        super(context, bidResponse, serverParameters, mediationExtras, z, location, i, i2, str, watermark);
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

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public String getBidResponse() {
        return this.bidResponse;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public Context getContext() {
        return this.context;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public Location getLocation() {
        return this.location;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public String getMaxAdContentRating() {
        return this.maxAdContentRating;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public Bundle getMediationExtras() {
        return this.mediationExtras;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public Bundle getServerParameters() {
        return this.serverParameters;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public int getTaggedForChildDirectedTreatment() {
        return this.taggedForChildDirectedTreatment;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public int getTaggedForUnderAgeTreatment() {
        return this.taggedForUnderAgeTreatment;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    public String getWatermark() {
        return this.watermark;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdConfiguration
    /* JADX INFO: renamed from: isTesting, reason: from getter */
    public boolean getIsTesting() {
        return this.isTesting;
    }
}
