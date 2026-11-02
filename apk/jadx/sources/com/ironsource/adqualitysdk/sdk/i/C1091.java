package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1091 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0774 f3829;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0929 f3830;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C1016 f3831;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final Charset f3828 = Charset.forName(StringFog.decrypt("aG2kQ1c=\n", "PTnibm9TNYU=\n"));

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final Charset f3827 = Charset.forName(StringFog.decrypt("Z3zsPIGbRR0=\n", "Mi/BfdLYDFQ=\n"));

    public C1091(C1016 c1016, C0929 c0929, C0774 c0774) {
        this.f3831 = c1016;
        this.f3830 = c0929;
        this.f3829 = c0774;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m2442(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length + 20 + bArr2.length + 2 + bArr3.length + 4 + bArr4.length);
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.write(StringFog.decrypt("dCpFjg==\n", "IWsB344GqlY=\n").getBytes(f3827));
            dataOutputStream.writeByte(1);
            dataOutputStream.writeShort(1);
            dataOutputStream.writeLong(j);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(2);
            dataOutputStream.writeByte(1);
            dataOutputStream.writeByte(bArr.length);
            dataOutputStream.write(bArr);
            dataOutputStream.writeByte(bArr2.length);
            dataOutputStream.write(bArr2);
            dataOutputStream.writeShort(bArr3.length);
            dataOutputStream.write(bArr3);
            dataOutputStream.writeInt(bArr4.length);
            dataOutputStream.write(bArr4);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(StringFog.decrypt("ixI7opWITWWiUyGrgoUMfaQJN+6Vght0oRwiqw==\n", "zXNSzvDsbRE=\n"), e);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] m2443(String str, String str2, long j, C0693 c0693) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(StringFog.decrypt("MJ8QujQxmicBkBM=\n", "VfF0yltY9FM=\n"), str);
            jSONObject.put(StringFog.decrypt("hPnPEpQngIOY8w==\n", "952kRPFV8+o=\n"), this.f3829.f2895);
            jSONObject.put(StringFog.decrypt("fnsCOa8iPVV3\n", "HwtycMtqXCY=\n"), this.f3829.f2894);
            jSONObject.put(StringFog.decrypt("HyJ7McIwTFoJ\n", "bUcKRKdDOBM=\n"), str2);
            jSONObject.put(StringFog.decrypt("Pcpi2mKC9kU5\n", "SaMPvxH2lyg=\n"), j);
            jSONObject.put(StringFog.decrypt("cGr6MF4/4FpgQuI0Xj4=\n", "GQSOVTlNiS4=\n"), c0693.m2250());
            return jSONObject.toString().getBytes(f3828);
        } catch (Exception e) {
            throw new RuntimeException(StringFog.decrypt("DA2lit5XSHUlTK6T0l8MIQstiMbxYCdP\n", "SmzM5rszaAE=\n"), e);
        }
    }
}
