package com.unity3d.ads.adplayer;

import com.tapjoy.TJAdUnitConstants;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: AdPlayerError.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\b\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0001\u0001\u0007¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/adplayer/AdPlayerError;", "Ljava/lang/Exception;", "Lkotlin/Exception;", TJAdUnitConstants.String.MESSAGE, "", "<init>", "(Ljava/lang/String;)V", "Lcom/unity3d/ads/adplayer/LoadWebViewError;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AdPlayerError extends Exception {
    private AdPlayerError(String str) {
        super(str);
    }

    public /* synthetic */ AdPlayerError(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }
}
