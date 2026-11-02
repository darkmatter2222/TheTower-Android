package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: renamed from: com.ironsource.u9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public enum EnumC3862u9 {
    APP_ACTIVITY(0),
    DIRECT_INTENT(1);

    private final int a;
    private static final /* synthetic */ EnumEntries f = EnumEntriesKt.enumEntries(a());
    public static final a b = new a(null);

    /* JADX INFO: renamed from: com.ironsource.u9$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0017  */
        /* JADX WARN: Code duplicated, block: B:12:0x001a A[RETURN] */
        public final EnumC3862u9 a(int i) {
            for (EnumC3862u9 enumC3862u9 : EnumC3862u9.values()) {
                if (enumC3862u9.c() == i) {
                    if (enumC3862u9 == null) {
                        return EnumC3862u9.APP_ACTIVITY;
                    }
                    return enumC3862u9;
                }
            }
            enumC3862u9 = null;
            if (enumC3862u9 == null) {
                return EnumC3862u9.APP_ACTIVITY;
            }
            return enumC3862u9;
        }
    }

    EnumC3862u9(int i) {
        this.a = i;
    }

    public static EnumEntries<EnumC3862u9> b() {
        return f;
    }

    public final int c() {
        return this.a;
    }
}
