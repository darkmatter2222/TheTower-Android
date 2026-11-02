package com.facebook.ads.redexgen.X;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@MetaExoPlayerCustomization
public final class C2337eH {
    public static byte[] A02;
    public static final String[] A03;
    public String A00;
    public final ND A01;

    static {
        A03();
        A03 = new String[]{A01(181, 4, 110), A01(175, 6, 58), A01(155, 20, 67)};
    }

    public C2337eH(ND nd) {
        this.A01 = nd;
    }

    private Cursor A00() {
        AbstractC1722Ln.A01(this.A00);
        return this.A01.getReadableDatabase().query(this.A00, A03, null, null, null, null, null);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 72);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A02(String str) {
        return A01(129, 26, 51) + str;
    }

    public static void A03() {
        A02 = new byte[]{-99, -29, 41, Ascii.FS, 40, 32, -37, Ascii.SI, 0, 19, Ascii.SI, -37, Ascii.VT, Ascii.CR, 4, 8, -4, Ascii.CR, Ascii.DC4, -37, 6, 0, Ascii.DC4, -37, 9, 10, Ascii.SI, -37, 9, Ascii.DLE, 7, 7, -25, 39, 32, 41, 34, 47, 35, -37, 4, 9, Ascii.SI, 0, 2, 0, Ascii.CR, -37, 9, 10, Ascii.SI, -37, 9, Ascii.DLE, 7, 7, -25, 39, Ascii.FS, 46, 47, Ascii.SUB, 47, 42, 48, Ascii.RS, 35, Ascii.SUB, 47, 36, 40, 32, 46, 47, Ascii.FS, 40, 43, -37, 4, 9, Ascii.SI, 0, 2, 0, Ascii.CR, -37, 9, 10, Ascii.SI, -37, 9, Ascii.DLE, 7, 7, -28, -9, 6, -7, -11, 8, -7, -44, 8, -11, -10, 0, -7, -44, -11, 3, 0, 1, -47, 5, -14, -13, -3, -10, -47, -6, -9, -47, -10, 9, -6, 4, 5, 4, -47, -64, -13, -22, -53, -25, -36, -12, -32, -19, -66, -36, -34, -29, -32, -63, -28, -25, -32, -56, -32, -17, -36, -33, -36, -17, -36, -9, -20, -2, -1, -22, -1, -6, 0, -18, -13, -22, -1, -12, -8, -16, -2, -1, -20, -8, -5, -18, -25, -16, -23, -10, -22, 36, Ascii.ETB, 35, Ascii.ESC, 35, Ascii.SYN, 34, Ascii.SUB, -43, -14, -43, -12};
    }

    public static void A04(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL(A01(108, 21, 105) + str);
    }

    public final Map<String, C2336eG> A05() throws NC {
        try {
            Cursor cursorA00 = A00();
            try {
                HashMap map = new HashMap(cursorA00.getCount());
                while (cursorA00.moveToNext()) {
                    map.put((String) AbstractC1722Ln.A01(cursorA00.getString(0)), new C2336eG(cursorA00.getLong(1), cursorA00.getLong(2)));
                }
                if (cursorA00 != null) {
                    cursorA00.close();
                }
                return map;
            } catch (Throwable th) {
                if (cursorA00 != null) {
                    try {
                        cursorA00.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLException e) {
            throw new NC(e);
        }
    }

    public final void A06(long j) throws NC {
        try {
            String hexString = Long.toHexString(j);
            this.A00 = A02(hexString);
            if (NF.A00(this.A01.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.A01.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    NF.A04(writableDatabase, 2, hexString, 1);
                    A04(writableDatabase, this.A00);
                    writableDatabase.execSQL(A01(95, 13, 108) + this.A00 + A01(0, 1, 53) + A01(1, 94, 115));
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        } catch (SQLException e) {
            throw new NC(e);
        }
    }

    public final void A07(String str) throws NC {
        AbstractC1722Ln.A01(this.A00);
        try {
            this.A01.getWritableDatabase().delete(this.A00, A01(ModuleDescriptor.MODULE_VERSION, 8, 109), new String[]{str});
        } catch (SQLException e) {
            throw new NC(e);
        }
    }

    public final void A08(String str, long j, long j2) throws NC {
        AbstractC1722Ln.A01(this.A00);
        try {
            SQLiteDatabase writableDatabase = this.A01.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put(A01(181, 4, 110), str);
            contentValues.put(A01(175, 6, 58), Long.valueOf(j));
            contentValues.put(A01(155, 20, 67), Long.valueOf(j2));
            writableDatabase.replaceOrThrow(this.A00, null, contentValues);
        } catch (SQLException e) {
            throw new NC(e);
        }
    }

    public final void A09(Set<String> set) throws NC {
        AbstractC1722Ln.A01(this.A00);
        try {
            SQLiteDatabase writableDatabase = this.A01.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator<String> it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.A00, A01(ModuleDescriptor.MODULE_VERSION, 8, 109), new String[]{it.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e) {
            throw new NC(e);
        }
    }
}
