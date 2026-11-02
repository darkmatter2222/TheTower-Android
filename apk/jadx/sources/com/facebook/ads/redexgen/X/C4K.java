package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4K, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C4K extends C9J {
    public static byte[] A04;
    public static String[] A05 = {"Yc4WoaZdFJMJ9uTba3tQwWrY6eh33xr", "5u9VAsqQgD7mlDRuRSNULE8mOn0eCSCg", "7J4CRjncvNSgpi2BI", "PiLFj8GUqvFKlc1xVERBwXj", "zArSeAjUxVRmJ9PPxMGa9BQ3Fh66uXY2", "RfEK3IcwKyNQIjLi55njmQOR4", "Ol1KGNVkUDNpsZMjKv6JCJ3BA9AF9dzY", "Ew0ukZtT7"};
    public long A00;
    public Uri A01;
    public RandomAccessFile A02;
    public boolean A03;

    static {
        A02();
    }

    public C4K() {
        super(false);
    }

    public static RandomAccessFile A00(Uri uri) throws T9 {
        try {
            return new RandomAccessFile((String) AbstractC1722Ln.A01(uri.getPath()), A01(29, 1, 16));
        } catch (FileNotFoundException e) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new T9(e, (N1.A02 < 21 || !NZ.A00(e.getCause())) ? com.ironsource.M9.a.d : 2006);
            }
            throw new T9(String.format(A01(30, 192, 72), uri.getPath(), uri.getQuery(), uri.getFragment()), e, 1004);
        } catch (SecurityException e2) {
            throw new T9(e2, 2006);
        } catch (RuntimeException e3) {
            throw new T9(e3, 2000);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 97;
            if (A05[3].length() == 2) {
                throw new RuntimeException();
            }
            A05[1] = "BiFtKsTsKHuTzxx7WRivUc2wwuFB0nwx";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{34, 45, 40, 33, Ascii.ETB, 54, 39, Ascii.SYN, 33, 37, 32, Ascii.VT, 52, 33, 42, 45, 34, 39, 46, Ascii.CAN, 57, 40, Ascii.EM, 46, 42, 47, Ascii.EM, 10, Ascii.CR, 3, 92, 91, SignedBytes.MAX_POWER_OF_TWO, 9, 65, 72, 90, 9, 88, 92, 76, 91, 80, 9, 72, 71, 77, 6, 70, 91, 9, 79, 91, 72, 78, 68, 76, 71, 93, 5, 9, 94, 65, SignedBytes.MAX_POWER_OF_TWO, 74, 65, 9, 72, 91, 76, 9, 71, 70, 93, 9, 90, 92, 89, 89, 70, 91, 93, 76, 77, 7, 9, 109, SignedBytes.MAX_POWER_OF_TWO, 77, 9, 80, 70, 92, 9, 74, 72, 69, 69, 9, 124, 91, SignedBytes.MAX_POWER_OF_TWO, 7, 89, 72, 91, 90, 76, 1, 0, 9, 70, 71, 9, 72, 9, 90, 93, 91, SignedBytes.MAX_POWER_OF_TWO, 71, 78, 9, 74, 70, 71, 93, 72, SignedBytes.MAX_POWER_OF_TWO, 71, SignedBytes.MAX_POWER_OF_TWO, 71, 78, 9, Ascii.SO, Ascii.SYN, Ascii.SO, 9, 70, 91, 9, Ascii.SO, 10, Ascii.SO, Ascii.SYN, 9, 124, 90, 76, 9, 124, 91, SignedBytes.MAX_POWER_OF_TWO, 7, 79, 91, 70, 68, 111, SignedBytes.MAX_POWER_OF_TWO, 69, 76, 1, 71, 76, 94, 9, 111, SignedBytes.MAX_POWER_OF_TWO, 69, 76, 1, 89, 72, 93, 65, 0, 0, 9, 93, 70, 9, 72, 95, 70, SignedBytes.MAX_POWER_OF_TWO, 77, 9, 93, 65, SignedBytes.MAX_POWER_OF_TWO, 90, 7, 9, 89, 72, 93, 65, Ascii.DC4, Ascii.FF, 90, 5, 88, 92, 76, 91, 80, Ascii.DC4, Ascii.FF, 90, 5, 79, 91, 72, 78, 68, 76, 71, 93, Ascii.DC4, Ascii.FF, 90};
        String[] strArr = A05;
        if (strArr[7].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A05[1] = "s4LqZs2EifV3KCLXXJ3kh5WphwR6HAJv";
    }

    @Override // com.facebook.ads.redexgen.X.TE
    public final Uri AA2() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.TE
    @MetaExoPlayerCustomization
    public final long AHv(NX nx) throws T9 {
        AbstractC1753Mt.A02(A01(0, 15, 37));
        Uri uri = nx.A06;
        this.A01 = uri;
        A0G(nx);
        this.A02 = A00(uri);
        try {
            try {
                this.A02.seek(nx.A04);
                this.A00 = nx.A03 == -1 ? this.A02.length() - nx.A04 : nx.A03;
                AbstractC1753Mt.A00();
                if (this.A00 < 0) {
                    throw new T9(null, null, AdError.REMOTE_ADS_SERVICE_ERROR);
                }
                this.A03 = true;
                A0H(nx);
                return this.A00;
            } catch (IOException e) {
                throw new T9(e, 2000);
            }
        } catch (Throwable th) {
            AbstractC1753Mt.A00();
            throw th;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0022 */
    @Override // com.facebook.ads.redexgen.X.TE
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() throws com.facebook.ads.redexgen.X.T9 {
        /*
            r5 = this;
            r4 = 0
            r5.A01 = r4
            r3 = 0
            java.io.RandomAccessFile r0 = r5.A02     // Catch: java.io.IOException -> L19 java.lang.Throwable -> L22
            if (r0 == 0) goto Ld
            java.io.RandomAccessFile r0 = r5.A02     // Catch: java.io.IOException -> L19 java.lang.Throwable -> L22
            r0.close()     // Catch: java.io.IOException -> L19 java.lang.Throwable -> L22
        Ld:
            r5.A02 = r4
            boolean r0 = r5.A03
            if (r0 == 0) goto L18
            r5.A03 = r3
            r5.A0E()
        L18:
            return
        L19:
            r2 = move-exception
            r1 = 2000(0x7d0, float:2.803E-42)
            com.facebook.ads.redexgen.X.T9 r0 = new com.facebook.ads.redexgen.X.T9     // Catch: java.lang.Throwable -> L22
            r0.<init>(r2, r1)     // Catch: java.lang.Throwable -> L22
            throw r0     // Catch: java.lang.Throwable -> L22
        L22:
            r1 = move-exception
            r5.A02 = r4
            boolean r0 = r5.A03
            if (r0 == 0) goto L2e
            r5.A03 = r3
            r5.A0E()
        L2e:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4K.close():void");
    }

    @Override // com.facebook.ads.redexgen.X.KR
    @MetaExoPlayerCustomization
    public final int read(byte[] bArr, int i, int i2) throws T9 {
        if (i2 == 0) {
            return 0;
        }
        try {
            if (this.A00 == 0) {
                return -1;
            }
            try {
                AbstractC1753Mt.A02(A01(15, 14, 42));
                int i3 = ((RandomAccessFile) N1.A0f(this.A02)).read(bArr, i, (int) Math.min(this.A00, i2));
                AbstractC1753Mt.A00();
                String[] strArr = A05;
                if (strArr[7].length() == strArr[2].length()) {
                    throw new RuntimeException();
                }
                A05[6] = "ZcR3PPQ1h9JeS6ZEzkV1vzLetiegvzmd";
                if (i3 > 0) {
                    this.A00 -= (long) i3;
                    A0F(i3);
                }
                return i3;
            } catch (IOException e) {
                throw new T9(e, 2000);
            }
        } catch (Throwable th) {
            AbstractC1753Mt.A00();
            throw th;
        }
    }
}
