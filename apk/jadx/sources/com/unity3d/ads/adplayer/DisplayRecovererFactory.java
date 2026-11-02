package com.unity3d.ads.adplayer;

import com.unity3d.ads.core.data.model.AdObject;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;

/* JADX INFO: compiled from: DisplayRecoverer.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bà\u0080\u0001\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\f"}, d2 = {"Lcom/unity3d/ads/adplayer/DisplayRecovererFactory;", "", "create", "Lcom/unity3d/ads/adplayer/DisplayRecoverer;", "opportunityId", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "showOptions", "Lcom/unity3d/ads/adplayer/AndroidShowOptions;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface DisplayRecovererFactory {
    DisplayRecoverer create(String opportunityId, AdObject adObject, AndroidShowOptions showOptions, CoroutineScope scope);
}
