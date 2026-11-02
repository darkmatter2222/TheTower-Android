package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.כּ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0929 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final ConcurrentHashMap f3326 = new ConcurrentHashMap();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] m2302() {
        C0952 c0952 = (C0952) this.f3326.get(1);
        if (c0952 == null) {
            throw new IllegalArgumentException(StringFog.decrypt("ZBS0r4aCqUdYW/+5mtC5TV8V8PyFn60CQR7t/Kq05QI=\n", "KnuU3OPw3yI=\n") + 1);
        }
        byte[] bArrM2333 = c0952.m2333();
        byte[] bArr = new byte[bArrM2333.length];
        System.arraycopy(bArrM2333, 0, bArr, 0, bArrM2333.length);
        return bArr;
    }
}
