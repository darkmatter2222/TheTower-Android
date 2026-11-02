package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes4.dex */
public enum He {
    NOT_INIT,
    INIT_IN_PROGRESS,
    INIT_FAILED,
    INITIATED;

    private static final /* synthetic */ EnumEntries f = EnumEntriesKt.enumEntries(a());

    public static EnumEntries<He> b() {
        return f;
    }
}
