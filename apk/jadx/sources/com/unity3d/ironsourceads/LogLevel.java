package com.unity3d.ironsourceads;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes5.dex */
public enum LogLevel {
    NONE,
    ERROR,
    VERBOSE;

    private static final /* synthetic */ EnumEntries b = EnumEntriesKt.enumEntries(a());

    public static EnumEntries<LogLevel> getEntries() {
        return b;
    }
}
