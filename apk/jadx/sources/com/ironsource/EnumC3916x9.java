package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.x9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public enum EnumC3916x9 {
    NonBidder(1),
    Bidder(2),
    NotSupported(-1);

    private final int a;
    private static final /* synthetic */ EnumEntries g = EnumEntriesKt.enumEntries(a());
    public static final a b = new a(null);

    /* JADX INFO: renamed from: com.ironsource.x9$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0017  */
        /* JADX WARN: Code duplicated, block: B:12:0x001a A[RETURN] */
        public final EnumC3916x9 a(int i) {
            for (EnumC3916x9 enumC3916x9 : EnumC3916x9.values()) {
                if (enumC3916x9.a == i) {
                    if (enumC3916x9 == null) {
                        return EnumC3916x9.NotSupported;
                    }
                    return enumC3916x9;
                }
            }
            enumC3916x9 = null;
            if (enumC3916x9 == null) {
                return EnumC3916x9.NotSupported;
            }
            return enumC3916x9;
        }
    }

    EnumC3916x9(int i) {
        this.a = i;
    }

    public static EnumEntries<EnumC3916x9> b() {
        return g;
    }

    public final boolean b(EnumC3916x9 instanceType) {
        Intrinsics.checkNotNullParameter(instanceType, "instanceType");
        return instanceType.c() == this.a;
    }

    public final int c() {
        return this.a;
    }
}
