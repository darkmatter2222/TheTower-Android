package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.І, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0283 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final Charset f1449 = Charset.forName(StringFog.decrypt("os/iVtk=\n", "95uke+ErdVw=\n"));

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m2031(byte[] bArr, C0308 c0308, C1016 c1016) {
        if (bArr.length < 29) {
            throw new IllegalArgumentException(AbstractC0897.m2299("noyQhSVN\n", "vu7p8UA+8C0=\n", new StringBuilder().append(StringFog.decrypt("ZapsgcKZnicXu3CejYSFLUW7JdE=\n", "N88f8a337UI=\n")).append(bArr.length)));
        }
        int i = (bArr[0] & 255) + 1;
        if (i > bArr.length) {
            throw new IllegalArgumentException(StringFog.decrypt("/2J4STAEu8qNc3lMMQmp28hjK1grSqbAw2Ru\n", "rQcLOV9qyK8=\n"));
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 1, i);
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, i, bArr.length);
        if (bArrCopyOfRange2.length < 16) {
            throw new IllegalArgumentException(StringFog.decrypt("zLYj8kc9L6O+pyL3RjA9svu3cONccz+v7rs18Fw2JLI=\n", "ntNQgihTXMY=\n"));
        }
        c1016.getClass();
        byte[] bArr2 = C1016.f3588;
        byte[] bArr3 = new byte[bArr2.length + 3];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        bArr3[bArr2.length] = (byte) 0;
        bArr3[bArr2.length + 1] = (byte) 1;
        bArr3[bArr2.length + 2] = (byte) 2;
        return c1016.m2408(c1016.m2407(c0308.f1549, bArrCopyOfRange, bArr3), bArrCopyOfRange, bArrCopyOfRange2, c0308.f1550.getBytes(f1449));
    }
}
