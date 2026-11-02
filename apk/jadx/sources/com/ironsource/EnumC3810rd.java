package com.ironsource;

/* JADX INFO: renamed from: com.ironsource.rd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public enum EnumC3810rd {
    PER_DAY("d"),
    PER_HOUR("h");

    public String a;

    EnumC3810rd(String str) {
        this.a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.a;
    }
}
