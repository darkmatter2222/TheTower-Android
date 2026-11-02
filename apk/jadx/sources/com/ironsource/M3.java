package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public enum M3 {
    Day("d", 86400000),
    Hour("h", 3600000),
    Second("s", 1000);

    private final String a;
    private final long b;
    private static final /* synthetic */ EnumEntries h = EnumEntriesKt.enumEntries(a());
    public static final a c = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final M3 a(String str) {
            for (M3 m3 : M3.values()) {
                if (Intrinsics.areEqual(m3.a, str)) {
                    return m3;
                }
            }
            return null;
        }
    }

    M3(String str, long j) {
        this.a = str;
        this.b = j;
    }

    public static /* synthetic */ long a(M3 m3, Integer num, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: inMilliseconds");
        }
        if ((i & 1) != 0) {
            num = 1;
        }
        return m3.a(num);
    }

    public static EnumEntries<M3> b() {
        return h;
    }

    public final long a(Integer num) {
        return ((long) (num != null ? num.intValue() : 1)) * this.b;
    }
}
