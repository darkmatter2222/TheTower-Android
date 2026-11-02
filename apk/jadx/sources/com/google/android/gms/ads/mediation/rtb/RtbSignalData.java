package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.ironsource.C3510b4;
import com.ironsource.C3635i2;
import java.util.List;
import kotlin.h93;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000b\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b-\u0010.J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J@\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0011\u001a\u00020\u00052\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\u000b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u001aHÖ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001f\u0010 R\u0017\u0010\u0011\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010\u0007R\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010\nR\u0017\u0010\u0013\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010\rR\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010\u0010¨\u0006/"}, d2 = {"Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;", "", "Lcom/google/android/gms/ads/mediation/MediationConfiguration;", "getConfiguration", "()Lcom/google/android/gms/ads/mediation/MediationConfiguration;", "Landroid/content/Context;", "component1", "()Landroid/content/Context;", "", "component2", "()Ljava/util/List;", "Landroid/os/Bundle;", "component3", "()Landroid/os/Bundle;", "Lcom/google/android/gms/ads/AdSize;", "component4", "()Lcom/google/android/gms/ads/AdSize;", "context", "configurations", "networkExtras", C3510b4.i.O, "copy", "(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "a", "Landroid/content/Context;", "getContext", "b", "Ljava/util/List;", "getConfigurations", "c", "Landroid/os/Bundle;", "getNetworkExtras", "d", "Lcom/google/android/gms/ads/AdSize;", "getAdSize", "<init>", "(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class RtbSignalData {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Context context;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final List configurations;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final Bundle networkExtras;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final AdSize adSize;

    public RtbSignalData(Context context, List<MediationConfiguration> configurations, Bundle networkExtras, AdSize adSize) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        Intrinsics.checkNotNullParameter(networkExtras, "networkExtras");
        this.context = context;
        this.configurations = configurations;
        this.networkExtras = networkExtras;
        this.adSize = adSize;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Context getContext() {
        return this.context;
    }

    public final List<MediationConfiguration> component2() {
        return this.configurations;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Bundle getNetworkExtras() {
        return this.networkExtras;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final AdSize getAdSize() {
        return this.adSize;
    }

    public final RtbSignalData copy(Context context, List<MediationConfiguration> configurations, Bundle networkExtras, AdSize adSize) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        Intrinsics.checkNotNullParameter(networkExtras, "networkExtras");
        return new RtbSignalData(context, configurations, networkExtras, adSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RtbSignalData)) {
            return false;
        }
        RtbSignalData rtbSignalData = (RtbSignalData) other;
        return Intrinsics.areEqual(this.context, rtbSignalData.context) && Intrinsics.areEqual(this.configurations, rtbSignalData.configurations) && Intrinsics.areEqual(this.networkExtras, rtbSignalData.networkExtras) && Intrinsics.areEqual(this.adSize, rtbSignalData.adSize);
    }

    public final AdSize getAdSize() {
        return this.adSize;
    }

    @Deprecated(message = "Use [RtbSignalData.configurations] instead.")
    public final MediationConfiguration getConfiguration() {
        return (MediationConfiguration) CollectionsKt.firstOrNull(this.configurations);
    }

    public final List<MediationConfiguration> getConfigurations() {
        return this.configurations;
    }

    public final Context getContext() {
        return this.context;
    }

    public final Bundle getNetworkExtras() {
        return this.networkExtras;
    }

    public int hashCode() {
        int iHashCode = (this.networkExtras.hashCode() + h93.a(this.configurations, this.context.hashCode() * 31, 31)) * 31;
        AdSize adSize = this.adSize;
        return iHashCode + (adSize == null ? 0 : adSize.hashCode());
    }

    public String toString() {
        return "RtbSignalData(context=" + this.context + ", configurations=" + this.configurations + ", networkExtras=" + this.networkExtras + ", adSize=" + this.adSize + ")";
    }
}
