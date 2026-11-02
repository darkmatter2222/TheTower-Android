package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Arrays;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.κ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0260 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] f1209;

    public C0260(byte[] bArr) {
        this.f1209 = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0260) {
            return Arrays.equals(this.f1209, ((C0260) obj).f1209);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1209);
    }

    public final String toString() {
        return StringFog.decrypt("Nx9A7j1DrFoaDlrpBla3SgQORPIbcbZbHi5A7VI=\n", "dnohim8m3y8=\n") + Arrays.toString(this.f1209) + AbstractJsonLexerKt.END_OBJ;
    }
}
