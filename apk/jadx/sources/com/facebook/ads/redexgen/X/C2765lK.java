package com.facebook.ads.redexgen.X;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2765lK extends SQLiteOpenHelper {
    public static byte[] A01;
    public static String[] A02 = {"JShIJu3JRfHt43ypO9GqFaXtQU", "Uet3LTw8rLJmru1DFWkYPrIPq9yjzQ4", "LBYTyoU1fD8w8O4ue", "ZxNu1nQjo2XkCjw5ERk40jWGoeLjYM9V", "VhJY3C97J7J84q76u4hEYHgB0g", "Ro8Wdk2EPx5GRn22XYsr1QjtSyjSX", "SdOPztDY16h0BPmxgfN82QFEWJhjV", "9YM807W9r6X84VXv6l9L7RtBJQk8UQ"};
    public static final String A03;
    public final C2764lJ A00;

    static {
        A02();
        A03 = C2765lK.class.getSimpleName();
    }

    public C2765lK(C1617Hh c1617Hh, C2764lJ c2764lJ) {
        super(c1617Hh, A01(c1617Hh), (SQLiteDatabase.CursorFactory) null, 4);
        if (c2764lJ == null) {
            throw new IllegalArgumentException(A00(41, 32, 87));
        }
        this.A00 = c2764lJ;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 76);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A01(C1617Hh c1617Hh) {
        Locale locale = Locale.US;
        Object[] objArr = {A00(0, 0, 95)};
        String strA00 = A00(126, 8, 81);
        String str = String.format(locale, strA00, objArr);
        if (!C2863mv.A2n(c1617Hh)) {
            return str;
        }
        String packageName = c1617Hh.getPackageName();
        String processName = ProcessUtils.getProcessName(c1617Hh);
        return (packageName.equals(processName) || TextUtils.isEmpty(processName)) ? str : String.format(Locale.US, strA00, '_' + processName);
    }

    public static void A02() {
        A01 = new byte[]{17, 1, 101, 100, 103, 96, 116, 109, 117, 1, 17, 48, Base64.padSymbol, 37, 52, 35, 81, 37, 48, 51, Base64.padSymbol, 52, 81, Ascii.DC4, 7, Ascii.DC4, Ascii.US, 5, 2, 81, 48, 53, 53, 81, 50, 62, Base64.padSymbol, 36, 60, 63, 81, 90, 127, 95, 122, 111, 122, 121, 122, 104, 126, 83, 126, 119, 107, 126, 105, 59, 120, 122, 117, 59, 117, 116, 111, 59, 121, 126, 59, 117, 110, 119, 119, 33, 55, 42, 53, 69, 49, 36, 39, 41, 32, 69, 44, 35, 69, 32, Base64.padSymbol, 44, 54, 49, 54, 69, 6, Ascii.ETB, 4, Ascii.SYN, Ascii.CR, 0, Ascii.SYN, 88, 90, 73, 79, 69, 73, 40, 110, 103, 122, 109, 97, 111, 102, 87, 99, 109, 113, 123, 40, 53, 40, 71, 70, 51, 124, 121, 110, 56, 110, 51, 121, 127};
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        for (AbstractC2768lN abstractC2768lN : this.A00.A0M()) {
            abstractC2768lN.A09(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        for (AbstractC2768lN abstractC2768lN : this.A00.A0M()) {
            abstractC2768lN.A0A(sQLiteDatabase);
            abstractC2768lN.A09(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        if (sQLiteDatabase.isReadOnly()) {
            return;
        }
        sQLiteDatabase.execSQL(A00(101, 25, 68));
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i == 2 && i2 >= 3) {
            String strA00 = A00(73, 28, 41);
            if (A02[7].length() != 30) {
                throw new RuntimeException();
            }
            A02[3] = "Uy0CZyDaBZXeJSQ63Y80hAJR5wsAelR7";
            sQLiteDatabase.execSQL(strA00);
        }
        if (i > 3 || i2 < 4) {
            return;
        }
        C2762lH c2762lH = C1616Hg.A02;
        sQLiteDatabase.execSQL(A00(11, 30, 61) + c2762lH.A01 + A00(0, 1, 125) + c2762lH.A02 + A00(1, 10, 109));
    }
}
