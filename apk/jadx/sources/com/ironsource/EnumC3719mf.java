package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;

/* JADX INFO: renamed from: com.ironsource.mf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public enum EnumC3719mf {
    LoadSuccess(0),
    ShowSuccess(1),
    ShowFailed(2),
    Destroyed(3),
    LoadRequest(-1);

    private static final /* synthetic */ EnumEntries h = EnumEntriesKt.enumEntries(a());
    private final int a;

    EnumC3719mf(int i) {
        this.a = i;
    }

    public static EnumEntries<EnumC3719mf> c() {
        return h;
    }

    public final int b() {
        return this.a;
    }
}
