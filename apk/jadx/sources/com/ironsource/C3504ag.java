package com.ironsource;

import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ag, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3504ag {
    private String a;

    /* JADX WARN: Multi-variable type inference failed */
    public C3504ag() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public C3504ag(String str) {
        this.a = str;
    }

    public /* synthetic */ C3504ag(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    public static /* synthetic */ C3504ag a(C3504ag c3504ag, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = c3504ag.a;
        }
        return c3504ag.a(str);
    }

    public final C3504ag a(String str) {
        return new C3504ag(str);
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.a;
    }

    public final void b(String str) {
        this.a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3504ag) && Intrinsics.areEqual(this.a, ((C3504ag) obj).a);
    }

    public int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "TestSuiteSettings(controllerUrl=" + this.a + ")";
    }
}
