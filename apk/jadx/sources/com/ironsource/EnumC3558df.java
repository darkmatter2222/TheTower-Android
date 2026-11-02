package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: renamed from: com.ironsource.df, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public enum EnumC3558df {
    Off(0),
    CurrentlyLoadedAds(1),
    CurrentlyLoadedAdsAndFullHistory(2);

    private final int a;
    private static final /* synthetic */ EnumEntries g = EnumEntriesKt.enumEntries(a());
    public static final a b = new a(null);

    /* JADX INFO: renamed from: com.ironsource.df$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0017  */
        /* JADX WARN: Code duplicated, block: B:12:0x001a A[RETURN] */
        public final EnumC3558df a(int i) {
            for (EnumC3558df enumC3558df : EnumC3558df.values()) {
                if (enumC3558df.a == i) {
                    if (enumC3558df == null) {
                        return EnumC3558df.CurrentlyLoadedAds;
                    }
                    return enumC3558df;
                }
            }
            enumC3558df = null;
            if (enumC3558df == null) {
                return EnumC3558df.CurrentlyLoadedAds;
            }
            return enumC3558df;
        }
    }

    EnumC3558df(int i) {
        this.a = i;
    }

    public static EnumEntries<EnumC3558df> b() {
        return g;
    }

    public final int c() {
        return this.a;
    }
}
