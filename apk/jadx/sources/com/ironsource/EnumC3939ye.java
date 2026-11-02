package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;

/* JADX INFO: renamed from: com.ironsource.ye, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public enum EnumC3939ye {
    LEVEL_PLAY_INIT(0),
    EXTERNAL_MEDIATION_INIT(1);

    private static final /* synthetic */ EnumEntries e = EnumEntriesKt.enumEntries(a());
    private final int a;

    EnumC3939ye(int i) {
        this.a = i;
    }

    public static EnumEntries<EnumC3939ye> b() {
        return e;
    }

    public final int c() {
        return this.a;
    }
}
