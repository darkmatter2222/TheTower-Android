package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᐧ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0533 {

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static volatile boolean f2218;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static volatile C0533 f2219;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2222 = StringFog.decrypt("YhmcpA==\n", "FmvpwaybFfQ=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f2221 = StringFog.decrypt("ht+oDIM=\n", "4L7Ef+YWQCk=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final List f2220 = Arrays.asList(StringFog.decrypt("f+E=\n", "FocLG+1KdSs=\n"), StringFog.decrypt("eSrO6A==\n", "HEa9jY98GM8=\n"), StringFog.decrypt("6ZKRMA==\n", "h+f9XGE4r1c=\n"), StringFog.decrypt("GuAgmYJZ\n", "aIVU7PA3XdE=\n"), StringFog.decrypt("w0l2qaM=\n", "sDwGzNG+6hg=\n"), StringFog.decrypt("xjHG\n", "skO/a08Z3bg=\n"), StringFog.decrypt("77f3Gqs=\n", "jNaDecM54cE=\n"));

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0534[] f2228 = new C0534[128];

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0534[] f2227 = new C0534[128];

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final HashMap f2226 = new HashMap();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final HashMap f2225 = new HashMap();

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final HashMap f2224 = new HashMap();

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final HashMap f2223 = new HashMap();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean f2229 = f2218;

    public C0533() {
        String strDecrypt = StringFog.decrypt("DyJoFioDkpALJG4AKFXF5HMzawY=\n", "Lh9UKAEuuL8=\n");
        for (int i = 0; i < strDecrypt.length(); i++) {
            char cCharAt = strDecrypt.charAt(i);
            this.f2228[cCharAt] = new C0534(EnumC0984.f3505, String.valueOf(cCharAt));
        }
        for (String str : Arrays.asList(StringFog.decrypt("1LA=\n", "6Y0LElF6eGk=\n"), StringFog.decrypt("Ia8=\n", "AJLGHPmFPU8=\n"), StringFog.decrypt("XnY=\n", "Ykt6W7IZRdY=\n"), StringFog.decrypt("FZs=\n", "K6YRu9m4oXA=\n"), StringFog.decrypt("o+w=\n", "iMePPB+TtN0=\n"), StringFog.decrypt("R7w=\n", "apE2t/4CWEA=\n"), StringFog.decrypt("6t8=\n", "lqOIzwdis0c=\n"), StringFog.decrypt("6rU=\n", "zJNVlx5PgWE=\n"))) {
            this.f2227[str.charAt(0)] = new C0534(EnumC0984.f3505, str);
        }
        for (String str2 : f2220) {
            this.f2226.put(str2, new C0534(EnumC0984.f3507, str2));
        }
        HashMap map = this.f2226;
        String strDecrypt2 = StringFog.decrypt("p5n/hA==\n", "0+uK4WM8jlM=\n");
        EnumC0984 enumC0984 = EnumC0984.f3501;
        map.put(strDecrypt2, new C0534(enumC0984, StringFog.decrypt("d3pvrA==\n", "AwgayQYjTLE=\n")));
        this.f2226.put(StringFog.decrypt("60qTdAY=\n", "jSv/B2M4Q8U=\n"), new C0534(enumC0984, StringFog.decrypt("zgoZ4X0=\n", "qGt1khinTus=\n")));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized void m2116() {
        C0533 c0533 = f2219;
        f2219 = null;
        if (c0533 != null) {
            c0533.m2120();
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized C0534 m2117(String str) {
        EnumC0984 enumC0984;
        if (this.f2229) {
            return m2123(this.f2226, EnumC0984.f3506, str);
        }
        if (f2222.equals(str) || f2221.equals(str)) {
            enumC0984 = EnumC0984.f3501;
        } else {
            enumC0984 = f2220.contains(str) ? EnumC0984.f3507 : EnumC0984.f3506;
        }
        return new C0534(enumC0984, str);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized C0534 m2118(String str) {
        return m2123(this.f2225, EnumC0984.f3504, str);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized C0534 m2119(String str) {
        return m2123(this.f2224, EnumC0984.f3503, str);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized void m2120() {
        this.f2226.clear();
        this.f2225.clear();
        this.f2224.clear();
        this.f2223.clear();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0534 m2121(char c, char c2) {
        return !this.f2229 ? new C0534(EnumC0984.f3505, "" + c + c2) : this.f2227[c];
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized C0534 m2122(String str) {
        return m2123(this.f2224, EnumC0984.f3502, str);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0534 m2123(HashMap map, EnumC0984 enumC0984, String str) {
        if (!this.f2229) {
            return new C0534(enumC0984, str);
        }
        C0534 c0534 = (C0534) map.get(str);
        if (c0534 != null) {
            return c0534;
        }
        C0534 c0535 = new C0534(enumC0984, str);
        map.put(str, c0535);
        return c0535;
    }
}
