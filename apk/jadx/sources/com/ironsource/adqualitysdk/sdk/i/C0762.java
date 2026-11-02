package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᵚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0762 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final List f2821;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean f2822;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean f2823;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean f2824;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean f2825;

    public C0762(boolean z, boolean z2, boolean z3, boolean z4, ArrayList arrayList) {
        this.f2825 = z;
        this.f2824 = z2;
        this.f2823 = z3;
        this.f2822 = z4;
        this.f2821 = Collections.unmodifiableList(new ArrayList(arrayList));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0762.class != obj.getClass()) {
            return false;
        }
        C0762 c0762 = (C0762) obj;
        if (this.f2825 == c0762.f2825 && this.f2824 == c0762.f2824 && this.f2823 == c0762.f2823 && this.f2822 == c0762.f2822) {
            return this.f2821.equals(c0762.f2821);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2821.hashCode() + ((((((((this.f2825 ? 1 : 0) * 31) + (this.f2824 ? 1 : 0)) * 31) + (this.f2823 ? 1 : 0)) * 31) + (this.f2822 ? 1 : 0)) * 31);
    }

    public final String toString() {
        return StringFog.decrypt("JoiIk73w6UYBkpqTpurqcQqVjou7/u1QKZSSg67B4VcKhY+Cq7g=\n", "b+b758+FhCM=\n") + this.f2825 + StringFog.decrypt("ccycpLIzylU4iLGynibGUjiIyA==\n", "Xez11+pDpSY=\n") + this.f2824 + StringFog.decrypt("ckzQTu9jv2o5C9xP6nKpfj0E3FmW\n", "Xmy5PasG3R8=\n") + this.f2823 + StringFog.decrypt("KdkxCL/UWVV2khwehtBdSGCdZQ==\n", "BflYe/K1Pjw=\n") + this.f2822 + StringFog.decrypt("Orys653XZNxloQ==\n", "Fpzfgvq5BbA=\n") + this.f2821 + AbstractJsonLexerKt.END_OBJ;
    }
}
