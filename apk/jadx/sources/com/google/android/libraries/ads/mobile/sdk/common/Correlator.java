package com.google.android.libraries.ads.mobile.sdk.common;

import kotlin.a01;
import kotlin.j40;
import kotlin.vf0;
import kotlin.zz0;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/Correlator;", "", "", "generateCorrelator", "()Ljava/lang/String;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class Correlator {
    public static final Correlator INSTANCE = new Correlator();

    private Correlator() {
    }

    @JvmStatic
    public static final String generateCorrelator() {
        a01.a.getClass();
        return ((j40) ((vf0) zz0.a()).u3.get()).a();
    }
}
