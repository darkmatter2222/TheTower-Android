package com.ironsource.adqualitysdk.sdk;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public enum ISAdQualityDeviceIdType {
    NONE(0),
    GAID(1),
    IDFA(2);


    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int f38;

    ISAdQualityDeviceIdType(int i) {
        this.f38 = i;
    }

    @Deprecated
    public static ISAdQualityDeviceIdType fromInt(int i) {
        if (i == 0) {
            return NONE;
        }
        if (i == 1) {
            return GAID;
        }
        if (i != 2) {
            return null;
        }
        return IDFA;
    }

    @Deprecated
    public int getValue() {
        return this.f38;
    }
}
