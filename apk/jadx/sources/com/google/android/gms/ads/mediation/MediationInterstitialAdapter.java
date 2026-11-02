package com.google.android.gms.ads.mediation;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.C3510b4;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated(message = "Use [com.google.android.gms.ads.mediation.Adapter] instead.")
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\tH&J\b\u0010\r\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;", "Lcom/google/android/gms/ads/mediation/MediationAdapter;", "requestInterstitialAd", "", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;", "serverParameters", "Landroid/os/Bundle;", "mediationAdRequest", "Lcom/google/android/gms/ads/mediation/MediationAdRequest;", "mediationExtras", C3510b4.h.H, "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MediationInterstitialAdapter extends MediationAdapter {
    void requestInterstitialAd(Context context, MediationInterstitialListener listener, Bundle serverParameters, MediationAdRequest mediationAdRequest, Bundle mediationExtras);

    void showInterstitial();
}
