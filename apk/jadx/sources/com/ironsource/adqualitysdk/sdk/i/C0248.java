package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ι, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0248 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public boolean f1190;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public boolean f1191;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public boolean f1192;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Object f1193;

    public C0248(Object obj) {
        this.f1193 = obj;
    }

    public final String toString() {
        return this.f1193 instanceof String ? AbstractC0897.m2299("IQ==\n", "A1tL1wayQt0=\n", new StringBuilder().append(StringFog.decrypt("Gw==\n", "OdAS6mWYMic=\n")).append(this.f1193)) : this.f1193 + "";
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Number m1986() {
        Object obj = this.f1193;
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof Double) {
            return (Double) obj;
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m1987() {
        Object obj = this.f1193;
        if (obj == null) {
            return false;
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() != 0;
        }
        if (obj instanceof Long) {
            return ((Long) obj).longValue() != 0;
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue() != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
        if (obj instanceof String) {
            return !TextUtils.isEmpty((String) obj);
        }
        return true;
    }
}
