package com.facebook.ads.redexgen.X;

import android.content.ContentResolver;
import android.database.Cursor;
import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2725kd {
    public static byte[] A00;
    public static String[] A01 = {"BBXCQ1c8lWMx5iTCFSjBAsNmZ8", "uWpSMDe8Dl1QwAjraNXmi3HjN39WCwvV", "Nl77HN8SOPKSqciG8lmOC8DFY50qabgT", "qKAuPB5zte0w", "tHnAlNrx5zeOSNOAYBdYTMmeA", "muO01a58leOoeMmtxXp9cvgd3", "skgH0VF5dzwRL9wPv5", "Mbe4svBdXamA1BIwkYK5rcxDOVieSFVl"};

    static {
        A02();
    }

    public static C2724kc A00(ContentResolver contentResolver) {
        String strA01 = A01(72, 14, 36);
        String strA02 = A01(3, 9, 127);
        String strA03 = A01(0, 3, 122);
        Cursor cursor = null;
        try {
            Cursor cursorQuery = contentResolver.query(AbstractC3011pP.A00(A01(12, 60, 38)), new String[]{strA03, strA02, strA01}, null, null, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                C2724kc c2724kc = new C2724kc(null, null, false);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return c2724kc;
            }
            C2724kc c2724kc2 = new C2724kc(cursorQuery.getString(cursorQuery.getColumnIndex(strA03)), cursorQuery.getString(cursorQuery.getColumnIndex(strA02)), Boolean.valueOf(cursorQuery.getString(cursorQuery.getColumnIndex(strA01))).booleanValue());
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return c2724kc2;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[2].charAt(14) != 'i') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[3] = "5u7aTW8yax3G";
            strArr[6] = "UvSwr6xgQWJsIweShl";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 109);
            i4++;
        }
    }

    public static void A02() {
        A00 = new byte[]{118, 126, 115, 115, 124, 118, 96, 125, 123, 118, 123, 118, 40, 36, 37, 63, 46, 37, 63, 113, 100, 100, 40, 36, 38, 101, 45, 42, 40, 46, 41, 36, 36, 32, 101, 32, 42, 63, 42, 37, 42, 101, 59, 57, 36, Base64.padSymbol, 34, 47, 46, 57, 101, 10, 63, 63, 57, 34, 41, 62, 63, 34, 36, 37, 2, 47, Ascii.ESC, 57, 36, Base64.padSymbol, 34, 47, 46, 57, 37, 32, 36, 32, Base64.padSymbol, Ascii.SYN, Base64.padSymbol, 59, 40, 42, 34, 32, 39, 46};
    }
}
