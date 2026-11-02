package com.unity3d.ads;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public interface IUnityAdsLoadListener {
    void onUnityAdsAdLoaded(String str);

    void onUnityAdsFailedToLoad(String str, UnityAds.UnityAdsLoadError unityAdsLoadError, String str2);
}
