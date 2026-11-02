package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Arrays;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ε, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0258 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final byte[] f1206;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] f1207;

    public C0258(byte[] bArr, byte[] bArr2) {
        this.f1207 = bArr;
        this.f1206 = bArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0258)) {
            return false;
        }
        C0258 c0258 = (C0258) obj;
        return Arrays.equals(this.f1207, c0258.f1207) && Arrays.equals(this.f1206, c0258.f1206);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f1206) + (Arrays.hashCode(this.f1207) * 31);
    }

    public final String toString() {
        return StringFog.decrypt("J/la+6oV4hEOwlfnlxH5Ahn5QPexEeQVKexL3L4E9QNf\n", "YokynsdwkHA=\n") + Arrays.toString(this.f1207) + StringFog.decrypt("DeO+a36CV1JqprdcZZpbQhw=\n", "IcPOHhzuPjE=\n") + Arrays.toString(this.f1206) + AbstractJsonLexerKt.END_OBJ;
    }
}
