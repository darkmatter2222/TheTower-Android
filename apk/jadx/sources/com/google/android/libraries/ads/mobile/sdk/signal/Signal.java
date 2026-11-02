package com.google.android.libraries.ads.mobile.sdk.signal;

import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;", "", "", "a", "Ljava/lang/String;", "getSignalString", "()Ljava/lang/String;", "signalString", "<init>", "(Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class Signal {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String signalString;

    public Signal(String signalString) {
        Intrinsics.checkNotNullParameter(signalString, "signalString");
        this.signalString = signalString;
    }

    public final String getSignalString() {
        return this.signalString;
    }
}
