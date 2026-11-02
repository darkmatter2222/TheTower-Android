package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import com.google.android.gms.ads.AdFormat;
import com.ironsource.C3635i2;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationConfiguration;", "", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "Lcom/google/android/gms/ads/AdFormat;", "a", "Lcom/google/android/gms/ads/AdFormat;", "getFormat", "()Lcom/google/android/gms/ads/AdFormat;", "format", "Landroid/os/Bundle;", "b", "Landroid/os/Bundle;", "getServerParameters", "()Landroid/os/Bundle;", "serverParameters", "<init>", "(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class MediationConfiguration {
    public static final String CUSTOM_EVENT_SERVER_PARAMETER_FIELD = "parameter";

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final AdFormat format;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final Bundle serverParameters;

    public MediationConfiguration(AdFormat format, Bundle serverParameters) {
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(serverParameters, "serverParameters");
        this.format = format;
        this.serverParameters = serverParameters;
    }

    public boolean equals(Object other) {
        if (!(other instanceof MediationConfiguration)) {
            return false;
        }
        MediationConfiguration mediationConfiguration = (MediationConfiguration) other;
        return this.format == mediationConfiguration.format && Intrinsics.areEqual(this.serverParameters, mediationConfiguration.serverParameters);
    }

    public final AdFormat getFormat() {
        return this.format;
    }

    public final Bundle getServerParameters() {
        return this.serverParameters;
    }
}
