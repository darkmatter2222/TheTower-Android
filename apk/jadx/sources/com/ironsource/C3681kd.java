package com.ironsource;

import java.util.Arrays;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.kd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3681kd {
    private boolean a;
    private String b;
    private boolean c;
    private int d;
    private int[] e;
    private int[] f;

    public C3681kd() {
        this(false, null, false, 0, null, null, 63, null);
    }

    public C3681kd(boolean z, String pixelEventsUrl, boolean z2, int i, int[] iArr, int[] iArr2) {
        Intrinsics.checkNotNullParameter(pixelEventsUrl, "pixelEventsUrl");
        this.a = z;
        this.b = pixelEventsUrl;
        this.c = z2;
        this.d = i;
        this.e = iArr;
        this.f = iArr2;
    }

    public /* synthetic */ C3681kd(boolean z, String str, boolean z2, int i, int[] iArr, int[] iArr2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? C3699ld.a : str, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? -1 : i, (i2 & 16) != 0 ? null : iArr, (i2 & 32) != 0 ? null : iArr2);
    }

    public static /* synthetic */ C3681kd a(C3681kd c3681kd, boolean z, String str, boolean z2, int i, int[] iArr, int[] iArr2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = c3681kd.a;
        }
        if ((i2 & 2) != 0) {
            str = c3681kd.b;
        }
        if ((i2 & 4) != 0) {
            z2 = c3681kd.c;
        }
        if ((i2 & 8) != 0) {
            i = c3681kd.d;
        }
        if ((i2 & 16) != 0) {
            iArr = c3681kd.e;
        }
        if ((i2 & 32) != 0) {
            iArr2 = c3681kd.f;
        }
        int[] iArr3 = iArr;
        int[] iArr4 = iArr2;
        return c3681kd.a(z, str, z2, i, iArr3, iArr4);
    }

    public final C3681kd a(boolean z, String pixelEventsUrl, boolean z2, int i, int[] iArr, int[] iArr2) {
        Intrinsics.checkNotNullParameter(pixelEventsUrl, "pixelEventsUrl");
        return new C3681kd(z, pixelEventsUrl, z2, i, iArr, iArr2);
    }

    public final void a(int i) {
        this.d = i;
    }

    public final void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.b = str;
    }

    public final void a(boolean z) {
        this.c = z;
    }

    public final void a(int[] iArr) {
        this.f = iArr;
    }

    public final boolean a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final void b(boolean z) {
        this.a = z;
    }

    public final void b(int[] iArr) {
        this.e = iArr;
    }

    public final boolean c() {
        return this.c;
    }

    public final int d() {
        return this.d;
    }

    public final int[] e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3681kd)) {
            return false;
        }
        C3681kd c3681kd = (C3681kd) obj;
        return this.a == c3681kd.a && Intrinsics.areEqual(this.b, c3681kd.b) && this.c == c3681kd.c && this.d == c3681kd.d && Intrinsics.areEqual(this.e, c3681kd.e) && Intrinsics.areEqual(this.f, c3681kd.f);
    }

    public final int[] f() {
        return this.f;
    }

    public final boolean g() {
        return this.c;
    }

    public final int h() {
        return this.d;
    }

    public int hashCode() {
        int iHashCode = ((((((Boolean.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + Boolean.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31;
        int[] iArr = this.e;
        int iHashCode2 = (iHashCode + (iArr == null ? 0 : Arrays.hashCode(iArr))) * 31;
        int[] iArr2 = this.f;
        return iHashCode2 + (iArr2 != null ? Arrays.hashCode(iArr2) : 0);
    }

    public final boolean i() {
        return this.a;
    }

    public final String j() {
        return this.b;
    }

    public final int[] k() {
        return this.f;
    }

    public final int[] l() {
        return this.e;
    }

    public String toString() {
        return "PixelSettings(pixelEventsEnabled=" + this.a + ", pixelEventsUrl=" + this.b + ", pixelEventsCompression=" + this.c + ", pixelEventsCompressionLevel=" + this.d + ", pixelOptOut=" + Arrays.toString(this.e) + ", pixelOptIn=" + Arrays.toString(this.f) + ")";
    }
}
