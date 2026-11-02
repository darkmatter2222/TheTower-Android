package com.facebook.ads.redexgen.X;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.AsyncTask;
import android.os.Looper;
import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2764lJ {
    public static byte[] A04;
    public static String[] A05 = {"qJOvsPrm5BQkhL6wLJahauzjA45r7dQz", "hfx8x2hkXgxq19RSFkkqiaOe1zMy03Qo", "bV5o7GaQth4ZZOPd4LFtWwXjKNVB8lua", "1EyYFmGpmEhL9EWyl0I1ptwRPtnJxpez", "F", "i", "plO80lk7YnGQvaXazMopbLIwOg8MB0TR", "EzLFA06L6a2SQhX4934tm7serJXXg4XA"};
    public static final String A06;
    public static final Lock A07;
    public static final Lock A08;
    public static final ReentrantReadWriteLock A09;
    public SQLiteOpenHelper A00;
    public final C1617Hh A01;
    public final C1615Hf A03 = new C1615Hf(this);
    public final C1616Hg A02 = new C1616Hg(this);

    static {
        A07();
        StringBuilder sbAppend = new StringBuilder().append(A05(kotlin.fh.h1, 14, 91)).append(C1615Hf.A02.A01);
        String strA05 = A05(58, 2, 51);
        StringBuilder sbAppend2 = sbAppend.append(strA05);
        String strA06 = A05(142, 6, 16);
        StringBuilder sbAppend3 = sbAppend2.append(strA06);
        String strA07 = A05(60, 1, kotlin.fh.g1);
        StringBuilder sbAppend4 = sbAppend3.append(strA07).append(C1615Hf.A01.A01).append(strA05);
        String strA08 = A05(136, 6, 111);
        A06 = sbAppend4.append(strA08).append(strA07).append(C1616Hg.A04.A01).append(strA05).append(strA08).append(strA07).append(C1616Hg.A05.A01).append(strA05).append(strA08).append(strA07).append(C1616Hg.A0A.A01).append(strA05).append(strA08).append(strA07).append(C1616Hg.A08.A01).append(strA05).append(strA08).append(strA07).append(C1616Hg.A07.A01).append(strA05).append(strA08).append(strA07).append(C1616Hg.A06.A01).append(strA05).append(strA08).append(strA07).append(C1616Hg.A03.A01).append(strA05).append(strA08).append(strA07).append(C1616Hg.A02.A01).append(A05(11, 6, 42)).append(strA08).append(A05(17, 6, 65)).append(strA06).append(A05(30, 4, 3)).append(strA08).append(strA07).append(C1616Hg.A09.A01).append(A05(0, 3, 78)).append(strA06).append(strA07).append(C1615Hf.A02.A01).append(A05(34, 10, 74)).append(strA08).append(strA07).append(C1616Hg.A08.A01).append(A05(7, 4, 98)).toString();
        A09 = new ReentrantReadWriteLock();
        A07 = A09.readLock();
        A08 = A09.writeLock();
    }

    public C2764lJ(C1617Hh c1617Hh) {
        this.A01 = c1617Hh;
    }

    private synchronized SQLiteDatabase A00() {
        if (this.A00 == null) {
            this.A00 = new C2765lK(this.A01, this);
        }
        return this.A00.getWritableDatabase();
    }

    private synchronized SQLiteDatabase A01() {
        SQLiteException e = null;
        for (int i = 0; i < 10; i++) {
            try {
            } catch (SQLiteException e2) {
                e = e2;
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
            }
        }
        this.A01.A08().ABz(A05(128, 8, 84), AbstractC2786lf.A0v, new C2787lg(e));
        throw e;
        return A00();
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A05[3].charAt(0) != '1') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[0] = "6YOEgEHO6bjbd5au9bSAefu6W5tI3Dak";
            strArr[6] = "kgOgsYcmlOEy6T8oxoaixHiO6WRSp1D2";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 115);
            i4++;
        }
    }

    public static void A07() {
        A04 = new byte[]{-31, -2, -31, -81, -51, -81, -50, -11, Ascii.SYN, 40, Ascii.CAN, -67, -29, -17, -20, -22, -67, -44, -2, 3, -3, 2, -44, -108, -64, -67, -63, -67, -56, -108, -106, -59, -60, -106, -35, Ascii.FF, Ascii.SI, 1, 2, Ascii.SI, -35, -1, Ascii.SYN, -35, -42, 9, -5, 10, -42, -98, -43, -58, -61, -48, -61, -98, -49, -43, -46, -58, Ascii.VT, 3, -54, -52, Ascii.SYN, 52, 65, 65, 66, 71, -13, 54, 52, 63, 63, -13, 58, 56, 71, Ascii.ETB, 52, 71, 52, 53, 52, 70, 56, -13, 57, 69, 66, SignedBytes.MAX_POWER_OF_TWO, -13, 71, 59, 56, -13, 40, Ascii.FS, -13, 71, 59, 69, 56, 52, 55, -12, 33, 19, Ascii.SUB, 19, 17, 34, -18, 66, Base64.padSymbol, 57, 51, 60, 65, -4, 39, 34, Ascii.SYN, 19, 38, Ascii.ETB, -14, 43, 40, 59, 40, 41, 40, 58, 44, 71, 88, 71, 80, 86, 85, -9, -14, -18, -24, -15, -10};
    }

    public final int A08(int i) {
        A08.lock();
        try {
            return A0E().delete(A05(136, 6, 111), C1616Hg.A02.A01 + A05(3, 4, 28), new String[]{String.valueOf(i - 1)});
        } finally {
            A08.unlock();
        }
    }

    public final Cursor A09() {
        A07.lock();
        try {
            return this.A02.A0D();
        } finally {
            A07.unlock();
        }
    }

    public final Cursor A0A() {
        A07.lock();
        try {
            return this.A02.A0E();
        } finally {
            A07.unlock();
        }
    }

    public final Cursor A0B() {
        A07.lock();
        try {
            return this.A03.A0D();
        } finally {
            A07.unlock();
        }
    }

    public final Cursor A0C(int i) {
        A07.lock();
        try {
            return A0E().rawQuery(A06 + A05(23, 7, 1) + String.valueOf(i), null);
        } finally {
            A07.unlock();
        }
    }

    public final Cursor A0D(String str) {
        A07.lock();
        try {
            return this.A02.A0F(str);
        } finally {
            A07.unlock();
        }
    }

    public final SQLiteDatabase A0E() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return A01();
        }
        throw new IllegalStateException(A05(64, 43, 96));
    }

    public final <T> AsyncTask A0F(AbstractC2767lM<T> abstractC2767lM, AbstractC2833mR<T> abstractC2833mR) {
        return AbstractC3088qe.A00(ExecutorC3091qh.A07, new AsyncTaskC2763lI(this.A01, abstractC2767lM, abstractC2833mR), new Void[0]);
    }

    public final AsyncTask A0G(final String str, final int i, final String str2, final double d, final double d2, final String str3, final Map<String, String> map, AbstractC2833mR<String> abstractC2833mR) {
        return A0F(new AbstractC1614He<String>() { // from class: com.facebook.ads.redexgen.X.7C
            public static byte[] A08;
            public static String[] A09 = {"l", "T0JdG9ZEnLfTeCeftC9G7d8cUsVG3XZb", "aLcPLzyPnyiGnlL0eBnocVG2Im", "W3EwFUE7CvVeZV", "t2q4fu0Y0bIBimY2SigNyotMmunbmEsF", "TUpEXXUjgi8xLksArOVlucAVZCM", "AqOn5F5Mae0spU5kh0gbanyLcs", "chqW8UrgIl8Ef4OOKimE4h"};

            static {
                A02();
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2767lM
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final String A03() {
                String strA01 = A01(0, 8, 12);
                this.A03.A01.A08().AAh(str2);
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                C2764lJ.A08.lock();
                String[] strArr = A09;
                if (strArr[6].length() != strArr[2].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A09;
                strArr2[1] = "mqnyRlomjFPPGlBu5iJ3A4HRnrnsorAH";
                strArr2[4] = "vLAqNnzkqKgbXCY8NZfbbPBhHyGRm9s6";
                SQLiteDatabase sQLiteDatabaseA0E = null;
                try {
                    sQLiteDatabaseA0E = this.A03.A0E();
                    sQLiteDatabaseA0E.beginTransaction();
                    String strA0G = this.A03.A02.A0G(this.A03.A03.A0E(str), i, str2, d, d2, str3, map);
                    sQLiteDatabaseA0E.setTransactionSuccessful();
                    return strA0G;
                } catch (Exception e) {
                    A01(EnumC2766lL.A06);
                    this.A03.A01.A08().ABz(strA01, AbstractC2786lf.A0y, new C2787lg(e));
                    return null;
                } finally {
                    if (sQLiteDatabaseA0E != null && sQLiteDatabaseA0E.isOpen()) {
                        try {
                            if (sQLiteDatabaseA0E.inTransaction()) {
                                sQLiteDatabaseA0E.endTransaction();
                            }
                        } catch (Exception e2) {
                            this.A03.A01.A08().ABz(strA01, AbstractC2786lf.A0z, new C2787lg(e2));
                        }
                    }
                    C2764lJ.A08.unlock();
                }
            }

            public static String A01(int i2, int i3, int i4) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i2, i2 + i3);
                for (int i5 = 0; i5 < bArrCopyOfRange.length; i5++) {
                    bArrCopyOfRange[i5] = (byte) ((bArrCopyOfRange[i5] - i4) - 32);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A02() {
                A08 = new byte[]{-112, -115, -96, -115, -114, -115, -97, -111};
            }
        }, abstractC2833mR);
    }

    public final void A0H() {
        A08.lock();
        try {
            this.A02.A0B();
            this.A03.A0B();
        } finally {
            A08.unlock();
        }
    }

    public final void A0I() {
        A08.lock();
        try {
            this.A03.A0F(this.A01);
        } finally {
            A08.unlock();
        }
    }

    public final synchronized void A0J() {
        for (int i = 0; i < A0M().length; i++) {
        }
        if (this.A00 != null) {
            this.A00.close();
            this.A00 = null;
        }
    }

    public final boolean A0K(String str) {
        A08.lock();
        try {
            boolean zA0H = this.A02.A0H(str);
            Lock lock = A08;
            String[] strArr = A05;
            if (strArr[7].charAt(23) != strArr[1].charAt(23)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[4] = "8";
            strArr2[5] = "N";
            lock.unlock();
            return zA0H;
        } catch (Throwable th) {
            A08.unlock();
            throw th;
        }
    }

    public final boolean A0L(String str) {
        boolean z;
        A08.lock();
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(A05(121, 7, 95)).append(A05(136, 6, 111)).append(A05(44, 5, 67)).append(C1616Hg.A02.A01).append(A05(61, 1, 83)).append(C1616Hg.A02.A01).append(A05(56, 2, 49)).append(A05(49, 7, 11)).append(C1616Hg.A04.A01).append(A05(62, 2, 26));
            A0E().execSQL(sb.toString(), new String[]{str});
            z = true;
        } catch (SQLiteException unused) {
            z = false;
        }
        A08.unlock();
        return z;
    }

    public final AbstractC2768lN[] A0M() {
        return new AbstractC2768lN[]{this.A03, this.A02};
    }
}
