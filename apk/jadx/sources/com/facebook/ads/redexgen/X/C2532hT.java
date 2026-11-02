package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.SystemClock;
import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hT, reason: case insensitive filesystem */
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
public final class C2532hT {
    public static byte[] A09;
    public static String[] A0A = {"MQiSzC6Vc7q5U8xVfAVqa0KE3PXkq1Wh", "llmWIRVeduP0Uk42S4dYP8WzOBxmVwFr", "wAThdUC71T4mS7MhZngpRLTCFSeH7cGe", "RuJVlhT3aXaWnsDtcE8vQj9gewAnNZmJ", "", "HCieBvZgHxLY0nOtfpdDewO3ogemX8ju", "x6utWgpyAiMlnuatLNj3m6zLwlweJpzD", "hst6eBYcAOneZgwaYJPPjmJvBTk4"};
    public static final C2533hU A0B;
    public Long A00;
    public Long A01;
    public Long A02;
    public final long A03;
    public final Uri A04;
    public final String A05;
    public final String A06;
    public final String A07;
    public final String A08;

    static {
        A01();
        A0B = new C2533hU(null);
    }

    public C2532hT(String str, String str2, Uri uri, long j) {
        C1h.A09(str, A00(9, 9, 78));
        C1h.A09(str2, A00(18, 13, 18));
        C1h.A09(uri, A00(0, 9, 29));
        this.A07 = str;
        this.A08 = str2;
        this.A04 = uri;
        this.A03 = j;
        this.A06 = A0B.A02(this.A04);
        this.A05 = A0B.A01(this.A04);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A0A[7].length() != 28) {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[2] = "TQXDtly80rUsA02hcUwpDDdSkdKbTPoK";
            strArr[0] = "bR9SSk2kBmzxFcVGXaHFi2ecRdbgPTHM";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
            i4++;
        }
    }

    public static void A01() {
        A09 = new byte[]{50, 37, 45, 47, 52, 37, Ascii.NAK, 50, 41, 96, 118, 96, 96, 122, 124, 125, 90, 119, 59, Base64.padSymbol, 46, 44, 36, 38, 33, 40, Ascii.ESC, 32, 36, 42, 33};
    }

    public final long A02() {
        return this.A03;
    }

    public final Uri A03() {
        return this.A04;
    }

    public final Long A04() {
        Long l = this.A00;
        if (l == null) {
            return null;
        }
        return Long.valueOf(SystemClock.elapsedRealtime() - l.longValue());
    }

    public final Long A05() {
        Long l = this.A02;
        Long l2 = this.A01;
        if (l == null || l2 == null) {
            return null;
        }
        return Long.valueOf(l2.longValue() - l.longValue());
    }

    public final String A06() {
        return this.A05;
    }

    public final String A07() {
        return this.A06;
    }

    public final String A08() {
        return this.A07;
    }

    public final String A09() {
        return this.A08;
    }

    public final void A0A() {
        this.A00 = Long.valueOf(SystemClock.elapsedRealtime());
    }

    public final void A0B() {
        this.A01 = Long.valueOf(SystemClock.elapsedRealtime());
    }

    public final void A0C() {
        this.A02 = Long.valueOf(SystemClock.elapsedRealtime());
    }
}
