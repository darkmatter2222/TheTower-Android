package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes4.dex */
public enum Pd {
    CAN_RECOVER("Can recover"),
    NO_LOADED_ADS("No loaded ad"),
    MAX_ATTEMPTS_REACHED("Fail to show"),
    FEATURE_DISABLED("Recovery feature is disabled");

    private static final /* synthetic */ EnumEntries g = EnumEntriesKt.enumEntries(a());
    private final String a;

    Pd(String str) {
        this.a = str;
    }

    public static EnumEntries<Pd> b() {
        return g;
    }

    public final String c() {
        return this.a;
    }
}
