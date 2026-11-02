package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class TR extends SQLiteOpenHelper implements ND {
    public static byte[] A00;

    static {
        A01();
    }

    public TR(Context context) {
        super(context.getApplicationContext(), A00(50, 21, kotlin.fh.h1), (SQLiteDatabase.CursorFactory) null, 1);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{63, 86, 89, 63, 90, 71, 86, 76, 75, 76, 63, 95, 73, 84, 75, 59, 92, 107, 107, 118, 107, 57, 124, 97, 124, 122, 108, 109, 112, 119, 126, 57, Ascii.US, Ascii.CR, 8, 45, 56, 45, 46, 45, 63, 41, Ascii.FS, 62, 35, 58, 37, 40, 41, 62, Ascii.FS, 1, Ascii.SYN, 9, Ascii.NAK, Ascii.CAN, 0, Ascii.FS, Ascii.VT, 38, Ascii.DLE, Ascii.ETB, Ascii.CR, Ascii.FS, Ascii.VT, Ascii.ETB, Ascii.CAN, Ascii.NAK, 87, Ascii.GS, Ascii.ESC, 7, 8, 4, Ascii.FF, 110, 108, 113, 116, 105, 120, 66, 112, 124, 110, 105, 120, 111, 83, 81, 76, 73, 84, 69, 127, 83, 69, 81, 85, 69, 78, 67, 69, Ascii.DC2, Ascii.US, Ascii.SYN, 3};
    }

    public static void A02(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery = sQLiteDatabase.query(A00(75, 13, 15), new String[]{A00(103, 4, 116), A00(71, 4, 123)}, null, null, null, null, null);
        while (cursorQuery.moveToNext()) {
            try {
                String string = cursorQuery.getString(0);
                String string2 = cursorQuery.getString(1);
                if (!A00(88, 15, 50).equals(string2)) {
                    String str = A00(11, 5, 9) + string + A00(0, 11, 13) + string2;
                    try {
                        sQLiteDatabase.execSQL(str);
                    } catch (SQLException e) {
                        MV.A08(A00(32, 18, 94), A00(16, 16, 11) + str, e);
                    }
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        A02(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
