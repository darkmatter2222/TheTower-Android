package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hv, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C2559hv {
    public static byte[] A03;
    public static String[] A04 = {"qrfVbd1szZXpaDF37YBKa4KhlCSXMUG1", "LkToUZmjnXYZ8zAlX3Xd5XpVpJ", "dtos9hlSZw1wcSUNcIngEfvfSBjQ8801", "XhFG69f7NGNAgvflFzGrLtN8mvEZnyz9", "LNKnnczfI0BTymblElxatI2JefMXQZ8f", "RNTbsFCRARL3UTDGiYOwBDK6a7E4R9Rl", "924ahyjdKPQTYV2ptSpaB83FGt4ck9U2", "GlkbZBsmC7Tu4fyGBblC"};
    public static final C2567i3 A05;
    public final InterfaceC2884nG A00;
    public final C2532hT A01;
    public final String A02;

    static {
        A02();
        A05 = new C2567i3(null);
    }

    public C2559hv(String str, InterfaceC2884nG interfaceC2884nG, String str2, Uri uri, long j) {
        C1h.A09(str, A00(36, 11, 96));
        C1h.A09(interfaceC2884nG, A00(1, 14, 11));
        C1h.A09(str2, A00(176, 9, 88));
        C1h.A09(uri, A00(144, 9, 64));
        this.A02 = str;
        this.A00 = interfaceC2884nG;
        this.A01 = new C2532hT(str2, this.A02, uri, j);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
        }
        return new String(bArrCopyOfRange);
    }

    private final Map<String, String> A01() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(A00(ModuleDescriptor.MODULE_VERSION, 10, 124), this.A01.A08());
        linkedHashMap.put(A00(231, 14, 95), this.A01.A09());
        linkedHashMap.put(A00(153, 10, 99), this.A01.A03().toString());
        linkedHashMap.put(A00(128, 16, 6), String.valueOf(this.A01.A02()));
        String strA07 = this.A01.A07();
        if (strA07 != null) {
            linkedHashMap.put(A00(163, 13, 58), strA07);
        }
        String strA06 = this.A01.A06();
        if (strA06 != null) {
            if (A04[6].charAt(5) == 'K') {
                throw new RuntimeException();
            }
            A04[2] = "1kiLS9m4B5YIiG73t75Tmj0nSl7nxM5C";
            linkedHashMap.put(A00(47, 16, 40), strA06);
        }
        return linkedHashMap;
    }

    public static void A02() {
        if (A04[4].charAt(10) == 'P') {
            throw new RuntimeException();
        }
        A04[1] = "hrwg9pJtvjpdrcC873Yu2v";
        A03 = new byte[]{43, Ascii.CR, 8, 41, Ascii.SUB, 9, 2, Ascii.CAN, 33, Ascii.CR, 2, Ascii.CR, Ascii.VT, 9, Ascii.RS, 107, 124, 125, 125, 102, 103, 93, 112, 121, 108, Base64.padSymbol, 42, 43, 43, 48, 49, 0, 43, 38, 47, 58, 100, 107, 110, 98, 105, 115, 83, 104, 108, 98, 105, 44, 32, 33, 59, 42, 33, 59, Ascii.DLE, 42, 33, 44, 32, 43, 38, 33, 40, 54, 33, 33, 60, 33, Ascii.FF, 48, 60, 55, 54, 48, 39, 39, 58, 39, 10, 49, 58, 56, 52, 60, 59, 112, 103, 103, 122, 103, 74, 120, 112, 102, 102, 116, 114, 112, Ascii.NAK, 6, Ascii.NAK, Ascii.RS, 4, 47, Ascii.RS, 17, Ascii.GS, Ascii.NAK, 42, 44, 32, 40, Ascii.DC2, 40, 33, 44, Base64.padSymbol, 62, 40, 41, Ascii.DC2, 57, 36, 32, 40, Ascii.DC2, 32, 62, 17, Ascii.CR, 0, Ascii.CAN, 0, 3, Ascii.CR, 4, 62, Ascii.ETB, 4, 19, Ascii.DC2, 8, Ascii.SO, Ascii.SI, 85, 66, 74, 72, 83, 66, 114, 85, 78, 118, 97, 105, 107, 112, 97, 91, 113, 118, 109, 47, 56, 46, 50, 40, 47, 62, 56, 2, 41, 36, 45, 56, 76, 90, 76, 76, 86, 80, 81, 118, 91, 104, 126, 104, 104, 114, 116, 117, 68, 114, 127, 118, 109, 119, 97, 106, 93, 122, 93, 108, 109, 112, 111, 99, 110, 107, 120, 103, 102, 35, 56, 34, 52, 63, 8, 46, 8, 57, 56, 37, 58, 54, 59, 62, 45, 50, 51, 76, 74, 89, 91, 83, 81, 86, 95, 103, 76, 87, 83, 93, 86, Ascii.GS, Ascii.SI, 8, Ascii.FS, 3, Ascii.SI, Ascii.GS, 53, 6, 5, Ascii.VT, Ascii.SO, 53, Ascii.RS, 3, 7, Ascii.SI, 53, 7, Ascii.EM};
    }

    private final void A03(EnumC2891nN enumC2891nN, Map<String, String> map) {
        map.put(A00(98, 10, 23), enumC2891nN.A03());
        this.A00.ACf(this.A02, map);
    }

    public final void A04() {
        Map<String, String> mapA01 = A01();
        Long lA04 = this.A01.A04();
        if (lA04 != null) {
            mapA01.put(A00(108, 20, 42), String.valueOf(lA04.longValue()));
        }
        A03(EnumC2891nN.A0g, mapA01);
    }

    public final void A05() {
        this.A01.A0A();
        Map<String, String> mapA01 = A01();
        mapA01.put(A00(108, 20, 42), A00(0, 1, 124));
        A03(EnumC2891nN.A0h, mapA01);
    }

    public final void A06() {
        this.A01.A0C();
        A03(EnumC2891nN.A0j, A01());
    }

    public final void A07() {
        this.A01.A0C();
        A03(EnumC2891nN.A0l, A01());
    }

    public final void A08() {
        Map<String, String> mapA01 = A01();
        Long lA04 = this.A01.A04();
        if (lA04 != null) {
            mapA01.put(A00(108, 20, 42), String.valueOf(lA04.longValue()));
        }
        A03(EnumC2891nN.A0f, mapA01);
    }

    public final void A09() {
        A03(EnumC2891nN.A0m, A01());
    }

    public final void A0A(float f, float f2, int i, int i2) {
        if (A05.A00(f, f2, i, i2)) {
            Map<String, String> mapA01 = A01();
            mapA01.put(A00(195, 18, 101), String.valueOf(f / i));
            mapA01.put(A00(213, 18, 48), String.valueOf(f2 / i2));
            Long lA04 = this.A01.A04();
            if (lA04 != null) {
                mapA01.put(A00(108, 20, 42), String.valueOf(lA04.longValue()));
            }
            A03(EnumC2891nN.A0n, mapA01);
        }
    }

    public final void A0B(C2563hz c2563hz) {
        this.A01.A0B();
        Map<String, String> mapA01 = A01();
        Long lA05 = this.A01.A05();
        if (lA05 != null) {
            mapA01.put(A00(245, 20, 13), String.valueOf(lA05.longValue()));
        }
        if (c2563hz != null) {
            mapA01.put(A00(63, 10, 52), String.valueOf(c2563hz.A02()));
            mapA01.put(A00(73, 12, 50), c2563hz.A03());
            String strA04 = c2563hz.A04();
            if (strA04 != null) {
                mapA01.put(A00(85, 13, 114), strA04);
            }
        }
        A03(EnumC2891nN.A0i, mapA01);
    }

    public final void A0C(C2563hz c2563hz) {
        this.A01.A0B();
        Map<String, String> mapA01 = A01();
        Long lA05 = this.A01.A05();
        if (lA05 != null) {
            mapA01.put(A00(245, 20, 13), String.valueOf(lA05.longValue()));
        }
        if (c2563hz != null) {
            mapA01.put(A00(63, 10, 52), String.valueOf(c2563hz.A02()));
            mapA01.put(A00(73, 12, 50), c2563hz.A03());
            String strA04 = c2563hz.A04();
            if (strA04 != null) {
                mapA01.put(A00(85, 13, 114), strA04);
            }
        }
        A03(EnumC2891nN.A0k, mapA01);
    }

    public final void A0D(String str) {
        C1h.A09(str, A00(15, 10, 110));
        Map<String, String> mapA01 = A01();
        mapA01.put(A00(25, 11, 56), str);
        A03(EnumC2891nN.A0d, mapA01);
    }
}
