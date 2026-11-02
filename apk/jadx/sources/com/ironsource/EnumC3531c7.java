package com.ironsource;

import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: renamed from: com.ironsource.c7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public enum EnumC3531c7 {
    SendEvent(0),
    NativeController(1);

    private final int a;
    private static final /* synthetic */ EnumEntries f = EnumEntriesKt.enumEntries(a());
    public static final a b = new a(null);

    /* JADX INFO: renamed from: com.ironsource.c7$a */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0017  */
        /* JADX WARN: Code duplicated, block: B:12:0x001a A[RETURN] */
        public final EnumC3531c7 a(int i) {
            for (EnumC3531c7 enumC3531c7 : EnumC3531c7.values()) {
                if (enumC3531c7.c() == i) {
                    if (enumC3531c7 == null) {
                        return EnumC3531c7.SendEvent;
                    }
                    return enumC3531c7;
                }
            }
            enumC3531c7 = null;
            if (enumC3531c7 == null) {
                return EnumC3531c7.SendEvent;
            }
            return enumC3531c7;
        }
    }

    EnumC3531c7(int i) {
        this.a = i;
    }

    public static EnumEntries<EnumC3531c7> b() {
        return f;
    }

    public final int c() {
        return this.a;
    }
}
