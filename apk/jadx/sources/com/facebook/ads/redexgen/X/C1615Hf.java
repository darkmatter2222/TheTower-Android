package com.facebook.ads.redexgen.X;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.UUID;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1615Hf extends AbstractC2768lN {
    public static byte[] A00;
    public static final C2762lH A01;
    public static final C2762lH A02;
    public static final C2762lH[] A03;
    public static final String A04;
    public static final String A05;
    public static final String A06;
    public static final String A07;

    static {
        A01();
        A02 = new C2762lH(0, A00(170, 8, 73), A00(143, 16, 58));
        A01 = new C2762lH(1, A00(165, 5, 82), A00(139, 4, 44));
        A03 = new C2762lH[]{A02, A01};
        A07 = C1615Hf.class.getSimpleName();
        C2762lH[] c2762lHArr = A03;
        String strA00 = A00(178, 6, 0);
        A05 = AbstractC2768lN.A04(strA00, c2762lHArr);
        A06 = AbstractC2768lN.A05(strA00, A03, A01);
        A04 = A00(5, 71, 76) + A02.A01 + A00(0, 3, 23) + A00(159, 6, 101) + A00(4, 1, 53) + C1616Hg.A09.A01 + A00(3, 1, 86);
    }

    public C1615Hf(C2764lJ c2764lJ) {
        super(c2764lJ);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 36);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{19, Ascii.SO, 19, 91, 63, 44, 45, 36, 45, 60, 45, 72, 46, 58, 39, 37, 72, Ascii.FS, 7, 3, Ascii.CR, 6, Ascii.ESC, 72, 63, 32, 45, 58, 45, 72, 38, 39, 60, 72, 45, 48, 33, 59, 60, 59, 72, SignedBytes.MAX_POWER_OF_TWO, 59, 45, 36, 45, 43, 60, 72, 89, 72, 46, 58, 39, 37, 72, Ascii.CR, Ascii.RS, Ascii.CR, 6, Ascii.FS, Ascii.ESC, 72, 63, 32, 45, 58, 45, 72, Ascii.FS, 7, 3, Ascii.CR, 6, Ascii.ESC, 70, 8, 53, 46, 40, Base64.padSymbol, 57, 36, 34, 35, 109, 58, 37, 40, 35, 109, 57, 63, 52, 36, 35, 42, 109, 57, 34, 109, 41, 40, 33, 40, 57, 40, 109, 46, 37, 36, 33, 41, 33, 40, 62, 62, 109, 57, 34, 38, 40, 35, 62, 99, Ascii.SYN, 49, 41, 62, 51, 54, 59, 127, 43, 48, 52, 58, 49, 113, 92, 77, 80, 92, 74, 91, 70, 74, 62, 78, 76, 87, 83, 95, 76, 71, 62, 85, 91, 71, 36, 55, 36, 47, 53, 50, 2, Ascii.EM, Ascii.GS, 19, Ascii.CAN, Ascii.EM, 2, 6, 8, 3, 50, 4, 9, 80, 75, 79, 65, 74, 87};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2768lN
    public final String A08() {
        return A00(178, 6, 0);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2768lN
    public final C2762lH[] A0C() {
        return A03;
    }

    public final Cursor A0D() {
        return A07().rawQuery(A05, null);
    }

    public final String A0E(String str) throws SQLiteException, IllegalArgumentException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(A00(125, 14, 123));
        }
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = A07().rawQuery(A06, new String[]{str});
            String string = cursorRawQuery.moveToNext() ? cursorRawQuery.getString(A02.A00) : null;
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String string2 = UUID.randomUUID().toString();
            ContentValues contentValues = new ContentValues(2);
            contentValues.put(A02.A01, string2);
            contentValues.put(A01.A01, str);
            A07().insertOrThrow(A00(178, 6, 0), null, contentValues);
            return string2;
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    public final void A0F(C1617Hh c1617Hh) {
        try {
            A07().execSQL(A04);
        } catch (SQLException e) {
            if (c1617Hh.A05().AB6()) {
                Log.e(A07, A00(76, 49, 105), e);
            }
        }
    }
}
