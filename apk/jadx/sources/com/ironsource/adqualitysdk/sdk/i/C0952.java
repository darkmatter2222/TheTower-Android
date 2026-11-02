package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Arrays;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭨ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0952 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] f3390;

    public C0952(byte[] bArr) {
        if (bArr.length != 65) {
            throw new IllegalArgumentException(StringFog.decrypt("oEN3G2oiTCGVTzUadjIYapJTNUE2YQ4zhFNmVys0AimfW2UFZjIfL5QWRjJAcEVm0FF6AyM=\n", "8DYVdwNBbEo=\n") + Integer.valueOf(bArr.length));
        }
        if (bArr[0] != 4) {
            throw new IllegalArgumentException(StringFog.decrypt("2SqCZGITuIjsJsBlfgPsw/orgXp/UO+K/TfAOHNArMOhKo5rZB3okewsk21vUOiM4DGUIQ==\n", "iV/gCAtwmOM=\n"));
        }
        this.f3390 = Arrays.copyOf(bArr, bArr.length);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C0952 m2332(String str) {
        if (str.startsWith(StringFog.decrypt("uGY=\n", "iB48zdsxdFc=\n")) || str.startsWith(StringFog.decrypt("NZw=\n", "BcSFLZ5x8JM=\n"))) {
            str = str.substring(2);
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException(StringFog.decrypt("llP8XIBYI8qwUaQRhl8lg7ZX8hnTSSfGsBboGZ1LJcs=\n", "3jaEfPMsUaM=\n"));
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return new C0952(bArr);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0952)) {
            return false;
        }
        C0952 c0952 = (C0952) obj;
        c0952.getClass();
        return Arrays.equals(this.f3390, c0952.f3390);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f3390) + 31;
    }

    public final String toString() {
        return StringFog.decrypt("erntnH8UrJ9Upd2rJw==\n", "MdyUzxpg1/Q=\n") + 1 + StringFog.decrypt("t45S5j2OIufQy1vRJpYu96Y=\n", "m64ik1/iS4Q=\n") + Arrays.toString(this.f3390) + AbstractJsonLexerKt.END_OBJ;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] m2333() {
        byte[] bArr = this.f3390;
        return Arrays.copyOf(bArr, bArr.length);
    }
}
