package com.google.android.libraries.ads.mobile.sdk.common;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.tapjoy.TJAdUnitConstants;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u0012\u0010\u0004\u001a\u00028\u0000X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/BaseError;", "CodeT", "", "()V", "code", "getCode", "()Ljava/lang/Object;", TJAdUnitConstants.String.MESSAGE, "", "getMessage", "()Ljava/lang/String;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class BaseError<CodeT> {
    public abstract CodeT getCode();

    public abstract String getMessage();
}
