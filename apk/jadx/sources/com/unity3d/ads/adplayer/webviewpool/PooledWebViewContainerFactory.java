package com.unity3d.ads.adplayer.webviewpool;

import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;

/* JADX INFO: compiled from: PooledWebViewContainerFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bà\u0080\u0001\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/adplayer/webviewpool/PooledWebViewContainerFactory;", "", "create", "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "entry", "Lcom/unity3d/ads/adplayer/webviewpool/PoolEntry;", "adPlayerScope", "Lkotlinx/coroutines/CoroutineScope;", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface PooledWebViewContainerFactory {
    AndroidWebViewContainer create(PoolEntry entry, CoroutineScope adPlayerScope, AdObject adObject);
}
