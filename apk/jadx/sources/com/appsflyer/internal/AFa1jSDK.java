package com.appsflyer.internal;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AFa1jSDK {
    private static final byte[] $$a = null;
    private static final int $$b = 0;
    private static int $10 = 0;
    private static int $11 = 1;
    private static int $12 = 0;
    private static int $13 = 1;
    public static final Map AFInAppEventType;
    private static long afDebugLog;
    private static int afErrorLog;
    private static byte[] afErrorLogForExcManagerOnly;
    private static int afInfoLog;
    private static int afRDLog;
    private static int afWarnLog;
    private static byte[] d;
    private static byte[] e;
    private static long force;
    private static Object i;
    public static final Map unregisterClient;
    private static long v;
    private static Object w;

    /* JADX WARN: Code duplicated, block: B:10:0x002a A[PHI: r1 r3 r8 r9 r10
  0x002a: PHI (r1v5 byte[]) = (r1v4 byte[]), (r1v13 byte[]) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]
  0x002a: PHI (r3v1 byte[]) = (r3v0 byte[]), (r3v9 byte[]) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]
  0x002a: PHI (r8v2 int) = (r8v1 int), (r8v11 int) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]
  0x002a: PHI (r9v2 int) = (r9v1 int), (r9v15 int) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]
  0x002a: PHI (r10v2 int) = (r10v1 int), (r10v11 int) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:7:0x001c A[PHI: r1 r3 r8 r9 r10
  0x001c: PHI (r1v12 byte[]) = (r1v4 byte[]), (r1v13 byte[]) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]
  0x001c: PHI (r3v8 byte[]) = (r3v0 byte[]), (r3v9 byte[]) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]
  0x001c: PHI (r8v10 int) = (r8v1 int), (r8v11 int) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]
  0x001c: PHI (r9v14 int) = (r9v1 int), (r9v15 int) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]
  0x001c: PHI (r10v10 int) = (r10v1 int), (r10v11 int) binds: [B:9:0x0028, B:5:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
    private static String $$c(short s, short s2, int i2) {
        int i3;
        int i4;
        int i5;
        byte[] bArr;
        byte[] bArr2;
        int i6;
        int i7 = 2 % 2;
        int i8 = $13 + 57;
        $12 = i8 % 128;
        if (i8 % 2 != 0) {
            i3 = 13 - s;
            i4 = i2 + 4;
            i5 = s2 + 68;
            bArr = $$a;
            bArr2 = new byte[i5];
            if (bArr == null) {
                byte[] bArr3 = bArr2;
                byte[] bArr4 = bArr;
                int i9 = i4;
                int i10 = i5;
                i3 = (i3 + i5) - 3;
                int i11 = $12 + 47;
                $13 = i11 % 128;
                int i12 = i11 % 2;
                i5 = i10;
                i4 = i9;
                bArr = bArr4;
                bArr2 = bArr3;
                i6 = 0;
            } else {
                i6 = 0;
            }
        } else {
            i3 = 119 - s;
            i4 = i2 + 4;
            i5 = s2 + 1;
            bArr = $$a;
            bArr2 = new byte[i5];
            if (bArr == null) {
                byte[] bArr5 = bArr2;
                byte[] bArr6 = bArr;
                int i13 = i4;
                int i14 = i5;
                i3 = (i3 + i5) - 3;
                int i15 = $12 + 47;
                $13 = i15 % 128;
                int i16 = i15 % 2;
                i5 = i14;
                i4 = i13;
                bArr = bArr6;
                bArr2 = bArr5;
                i6 = 0;
            } else {
                i6 = 0;
            }
        }
        while (true) {
            int i17 = i6 + 1;
            bArr2[i6] = (byte) i3;
            int i18 = i4 + 1;
            if (i17 == i5) {
                return new String(bArr2, 0);
            }
            int i19 = bArr[i18];
            int i20 = i5;
            byte[] bArr7 = bArr2;
            byte[] bArr8 = bArr;
            i3 = (i3 + i19) - 3;
            int i21 = $12 + 47;
            $13 = i21 % 128;
            int i22 = i21 % 2;
            i5 = i20;
            i4 = i18;
            bArr = bArr8;
            bArr2 = bArr7;
            i6 = i17;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 76501. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    static {
        /*
            Method dump skipped, instruction units count: 7650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1jSDK.<clinit>():void");
    }

    private AFa1jSDK() {
    }

    public static Object AFAdRevenueData(int i2, char c, int i3) throws Throwable {
        int i4 = 2 % 2;
        int i5 = $10;
        int i6 = (i5 & 115) + (i5 | 115);
        int i7 = i6 % 128;
        $11 = i7;
        if (i6 % 2 == 0) {
            throw null;
        }
        Object obj = w;
        int i8 = ((i7 | InterfaceC3669k1.d.b.k) << 1) - (i7 ^ InterfaceC3669k1.d.b.k);
        $10 = i8 % 128;
        int i9 = i8 % 2;
        try {
            Object[] objArr = {Integer.valueOf(i2), Character.valueOf(c), Integer.valueOf(i3)};
            byte[] bArr = $$a;
            byte b = bArr[84];
            byte b2 = bArr[488];
            Class<?> cls = Class.forName($$c(b, b2, (short) ((b2 ^ Ascii.DC2) | (b2 & Ascii.DC2))), true, (ClassLoader) i);
            byte b3 = bArr[4];
            byte b4 = bArr[49];
            int i10 = $$b;
            Object objInvoke = cls.getMethod($$c(b3, b4, (short) ((i10 & 1097) | (i10 ^ 1097))), Integer.TYPE, Character.TYPE, Integer.TYPE).invoke(obj, objArr);
            int i11 = $11;
            int i12 = ((i11 | 81) << 1) - (i11 ^ 81);
            $10 = i12 % 128;
            int i13 = i12 % 2;
            return objInvoke;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static int getMediationNetwork(int i2) throws Throwable {
        int i3 = 2 % 2;
        int i4 = $11;
        int i5 = (i4 & 117) + (i4 | 117);
        int i6 = i5 % 128;
        $10 = i6;
        Object obj = null;
        if (i5 % 2 != 0) {
            obj.hashCode();
            throw null;
        }
        Object obj2 = w;
        int i7 = i6 + 101;
        $11 = i7 % 128;
        int i8 = i7 % 2;
        try {
            Object[] objArr = {Integer.valueOf(i2)};
            byte[] bArr = $$a;
            byte b = bArr[84];
            byte b2 = bArr[488];
            Class<?> cls = Class.forName($$c(b, b2, (short) ((b2 ^ Ascii.DC2) | (b2 & Ascii.DC2))), true, (ClassLoader) i);
            byte b3 = bArr[4];
            byte b4 = bArr[14];
            int iIntValue = ((Integer) cls.getMethod($$c(b3, b4, (short) (b4 | SignedBytes.MAX_POWER_OF_TWO)), Integer.TYPE).invoke(obj2, objArr)).intValue();
            int i9 = $10 + 77;
            $11 = i9 % 128;
            if (i9 % 2 != 0) {
                return iIntValue;
            }
            throw null;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static int getMonetizationNetwork(Object obj) throws Throwable {
        int i2 = 2 % 2;
        int i3 = $11;
        int i4 = (i3 & 7) + (i3 | 7);
        int i5 = i4 % 128;
        $10 = i5;
        if (i4 % 2 != 0) {
            throw null;
        }
        Object obj2 = w;
        int i6 = (i5 & 71) + (i5 | 71);
        $11 = i6 % 128;
        int i7 = i6 % 2;
        try {
            byte[] bArr = $$a;
            byte b = bArr[84];
            byte b2 = bArr[488];
            int iIntValue = ((Integer) Class.forName($$c(b, b2, (short) (b2 | Ascii.DC2)), true, (ClassLoader) i).getMethod($$c(bArr[62], bArr[12], (short) 1152), Object.class).invoke(obj2, obj)).intValue();
            int iCurrentTimeMillis = (int) System.currentTimeMillis();
            int i8 = ~iCurrentTimeMillis;
            int i9 = ~((i8 & (-1521606923)) | ((-1521606923) ^ i8));
            int i10 = ~iCurrentTimeMillis;
            int i11 = 1550969792 + (((i9 & (-864216280)) | ((-864216280) ^ i9)) * (-933)) + (((~((i10 & (-864216280)) | ((-864216280) ^ i10))) | 553780437) * 933);
            int i12 = ((i11 | 693843616) << 1) - (693843616 ^ i11);
            int iCurrentTimeMillis2 = (int) System.currentTimeMillis();
            int i13 = (~(((-214422119) & iCurrentTimeMillis2) | ((-214422119) ^ iCurrentTimeMillis2))) | 134664224;
            int i14 = ~iCurrentTimeMillis2;
            int i15 = (i14 ^ 689370536) | (i14 & 689370536);
            int i16 = ~(i15 | 214422118);
            int i17 = 1698234858 + (((i13 & i16) | (i13 ^ i16)) * 886);
            int i18 = ~((i14 & 214422118) | (i14 ^ 214422118));
            int i19 = ((i18 & 689370536) | (689370536 ^ i18)) * (-1772);
            int i20 = ((i17 | i19) << 1) - (i19 ^ i17);
            int i21 = -(-((~i15) * 886));
            if (i12 > (i20 & i21) + (i21 | i20)) {
                int i22 = 0 / 0;
            }
            return iIntValue;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    private static void getMonetizationNetwork(int i2, int i3) {
        int i4 = 2 % 2;
        int i5 = $10;
        int i6 = (i5 & 55) + (i5 | 55);
        $11 = i6 % 128;
        if (i6 % 2 == 0) {
            throw null;
        }
    }

    static void init$0() {
        int i2 = 2 % 2;
        int i3 = $10 + 85;
        $11 = i3 % 128;
        int i4 = i3 % 2;
        byte[] bArr = new byte[1171];
        System.arraycopy("\bâ\u001cã\u0010ù\u0011\u0000ýþÍ<\u000eò\u0012û\u0004ý\u0013¾\u0018/\u0000\u0006\u0006ö\u0002\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b\u001eÓ5óô\n\u000b\u0003\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u0016%\u0014ø\u0010ö\u000e\bÞ\u0017\röÿ\u0006\u0015\u0000\u0003ö\f\tÐ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u00162\u0003Ú(\u0006ö\u0002\u000e\n\u0001\u0012Ø(þ\u000eøû\u000eØ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0001\u0012Õ&\u0006ü\u0011Ô(\f\u0001\u0012Ò/ø\u0004á!\u0005\b\u0000â(\f\u0001\u0012Ò!\u0005\b\u0000â(\f8\u0000\u0016ðÑ8\u0000\u0016ðÑú\u0018îÐ>\tÂ\u001b&\u0006üú\u0018îÐ>\tÂIü\u0006÷\b\fú\u0018îÐAø\u0010üÊ()ý\u0004ô\u000b\u0001\u0012ß%\u0000\u0004ø\u0010\u0005\b\u000fø\u0004ý\u0007\u0001\u0005\b\u0000\u0010ù\u0011\u0000ýþÍD\u0007¾\u00176÷\u0006ûÃ5ò\u0010\u0004ù\t\u0002ô\n\u0017í\b\t\u0001\u0010ì\u001eú\u000eôî\tí\u000bú\u0018îÐ>\tÂ\u001e\tù6î\u0005\u000e\u0007ø\t\u0002\u0015\u0000\u0003ö\f\tã\u0018\u0007ûë\u001f\u0006\u0003\u0000\rú\u0018îÐ>\tÂ\u001b&\u0006üí)\u0002ÿ\b\u0002â$\u0001öÿ\u000f\f\u0006\u0007õî\u0006ð\u000b5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u00057\u0004Ñ5Î\u00025Ú+\u0006\u0005\u0001\u0000\u0006Ø+Ï\u0001\u0012á\u0016\u0011ÿ\t\u0000ô\u0005ú\u0018îÐCú\u0012½*\u0000ý\u0001\u0012ß\u0014\u0016÷ú\u0018îÐ>\tÂ\u00176ô\u0003\u0002\u0010ö\u0002è(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u001e(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u0019 \u0016ðë(\u0005\b\u0002â$\u0001öÿ\u000föÿ\u0006å2ú\u0003\u0010ú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÓ(\u0005\b\u0002â$\u0001öÿ\u000f\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b(É?éô\n\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b\u001eÓ5óô\n\u000b\u0003\u0001\u0012Ü\u001b\u0002\bû\u0016ø\t\u0002ã\u001a\u0012\u0006û\u0006üû\u0001\nöÿ\u0006õ\u0012á\u0016ÿ\u0006î\"\u0001\u0010î\u0007ï\u000bþú\u000eô\u0001\u0012Õ\u0001ú\u0018îÐ>\tÂ\u001b&\u0006üâ$\u0011ó\u0012ú\n\u0007þ\u0006\tøø\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0019$\u0016Ñ&\u0006ü\u0006õ\u0006ã$\u0016\u0001\u0012Ð$\u0014ÿ\u0000\f\u0002ôî\u0014\u0016÷\u0004\nü\u0012ô\u0001\u0012Ò,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nÜ(\u0005\b\u0002â$\u0001öÿ\u000f\u0001\u0012Ý\u001a\u0016ÿÔ,\t\u0001\nú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nØ,\t\u0001\n\u0001\u0012â\u0019\u0014îú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÙ)\u0002ÿ\b\u0002â$\u0001öÿ\u000fþÖ:þôß4\u0003ò\u001bú\u0018îÐ>\tÂ\u0018,\u0006\u0007õÿ\u0004\rü\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u001e(â\u001b\u000b\u0005\u0006\nÎ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐCþ\tÂ\u0017:þôà6ô\u0003\u0002\u0010ú\u0018îÐAø\u0010üÊ\u0018,ø\u0015\u0003Ü&õ\u0006\u0004\u0010þò\u0012\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0017\"\u0015õâ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ô\u0016÷ç \r\u0004ö\u0016ø\u0010òê ü\u0013ò\u0014\nÎ(\fö\u0001\u0014þ\u0006úÿ\u0011ö\u0016ø\u0010òê ü\u0013ò\u0014\nÚ\u0014\u0016÷à*ü\u000bû\f\t\u0002\u0001\u0012Ò/\u0001\u0006\u0002\u0002ú\f\tã(úøî\u000bë\u000b\u0006õ\u0006â,ø\u0015\u0003\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b\u001eÓ<ìô\nÜH5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\f\u00001\u0002\u0005\u0001Øý7Ð\u0005\u00007×-Ô1Îî\nì\u000bI\u0004´Iþ\u000e\u0003ù\u0002\u0005\u000b\u000b°Oü\u0004\u0011¸\u0001\u0012Ò5\u0000\u0003ö\fø\u0019Ó-ÿÈ\u0001\u0002\t\u000f/ø\u0004\bþ&ñ\u0016\u0014ò\f\nóâ \u0016ð".getBytes("ISO-8859-1"), 0, bArr, 0, 1171);
        $$a = bArr;
        $$b = 34;
        int i5 = $10 + 115;
        $11 = i5 % 128;
        if (i5 % 2 == 0) {
            throw null;
        }
    }
}
