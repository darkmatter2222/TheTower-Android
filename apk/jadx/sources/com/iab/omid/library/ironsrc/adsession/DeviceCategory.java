package com.iab.omid.library.ironsrc.adsession;

import com.ironsource.C3635i2;
import com.tapjoy.TapjoyConstants;

/* JADX INFO: loaded from: classes4.dex */
public enum DeviceCategory {
    CTV("ctv"),
    MOBILE(TapjoyConstants.TJC_CONNECTION_TYPE_MOBILE),
    OTHER(C3635i2.d);

    private final String deviceCategory;

    DeviceCategory(String str) {
        this.deviceCategory = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.deviceCategory;
    }
}
