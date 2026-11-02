package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.z4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public enum EnumC3947z4 {
    IADS("iads"),
    UADS("uads"),
    SHARED("shared"),
    NONE("none");

    private final String a;
    private static final /* synthetic */ EnumEntries h = EnumEntriesKt.enumEntries(a());
    public static final a b = new a(null);

    /* JADX INFO: renamed from: com.ironsource.z4$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001b  */
        /* JADX WARN: Code duplicated, block: B:12:0x001e A[RETURN] */
        @JvmStatic
        public final EnumC3947z4 a(String str) {
            for (EnumC3947z4 enumC3947z4 : EnumC3947z4.values()) {
                if (Intrinsics.areEqual(enumC3947z4.c(), str)) {
                    if (enumC3947z4 == null) {
                        return EnumC3947z4.NONE;
                    }
                    return enumC3947z4;
                }
            }
            enumC3947z4 = null;
            if (enumC3947z4 == null) {
                return EnumC3947z4.NONE;
            }
            return enumC3947z4;
        }
    }

    EnumC3947z4(String str) {
        this.a = str;
    }

    @JvmStatic
    public static final EnumC3947z4 a(String str) {
        return b.a(str);
    }

    public static EnumEntries<EnumC3947z4> b() {
        return h;
    }

    public final String c() {
        return this.a;
    }
}
