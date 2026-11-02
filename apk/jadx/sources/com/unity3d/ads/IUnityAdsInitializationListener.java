package com.unity3d.ads;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public interface IUnityAdsInitializationListener {
    void onInitializationComplete();

    void onInitializationFailed(UnityAds.UnityAdsInitializationError unityAdsInitializationError, String str);
}
