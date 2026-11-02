package com.ironsource.adqualitysdk.sdk.i;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ү, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0320 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String[] f1566;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final SQLiteDatabase f1570;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f1569 = StringFog.decrypt("tB6Ofg86KBE=\n", "32jRDXtVWnQ=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f1568 = StringFog.decrypt("ckjx\n", "GS2Ijrqf55U=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f1567 = StringFog.decrypt("6VQl\n", "nzVJPsmeXOA=\n");

    static {
        StringFog.decrypt("cbd5Eu/iVHNRkEFW98R+el2SWTLf41R9WZdd\n", "OOQ4dr6XNR8=\n");
        f1566 = new String[]{StringFog.decrypt("f7YP\n", "FNN2l2oIzH0=\n"), StringFog.decrypt("YgUs\n", "FGRA3NDqQ7w=\n")};
    }

    public C0320(Context context, String str) {
        this.f1570 = new C0335(context, str).getWritableDatabase();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized int m2049(String str) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f1570.query(f1569, new String[]{StringFog.decrypt("z+/rl+EeIS7giQ==\n", "jKC+2bU2V08=\n")}, StringFog.decrypt("Ngfpzou9+1N9XQ==\n", "XWKQ7sf0sBY=\n"), new String[]{str.replace('*', '%')}, null, null, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return 0;
            }
            int i = cursorQuery.getInt(0);
            cursorQuery.close();
            return i;
        } catch (Throwable th) {
            if (cursorQuery == null) {
                throw th;
            }
            cursorQuery.close();
            throw th;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized String m2050(String str) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = this.f1570.query(f1569, f1566, StringFog.decrypt("ReoztAFbYA==\n", "Lo9KlDx7XwI=\n"), new String[]{str}, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToNext()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(f1567));
                            cursorQuery.close();
                            return string;
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized HashMap m2051(String str, int i) {
        HashMap map;
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.f1570.query(f1569, f1566, StringFog.decrypt("Fbhmb5nwtfxe4g==\n", "ft0fT9W5/rk=\n"), new String[]{str.replace('*', '%')}, null, null, null, i <= 0 ? null : Integer.toString(i));
            map = new HashMap();
            while (cursorQuery != null && cursorQuery.moveToNext()) {
                try {
                    map.put(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(f1568)), cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(f1567)));
                } catch (IllegalArgumentException unused) {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Throwable th) {
            if (cursorQuery == null) {
                throw th;
            }
            cursorQuery.close();
            throw th;
        }
        return map;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2052(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f1567, str2);
        String strDecrypt = StringFog.decrypt("or+0MpLjZQ==\n", "ydrNEq/DWrw=\n");
        String[] strArr = {str};
        SQLiteDatabase sQLiteDatabase = this.f1570;
        String str3 = f1569;
        if (sQLiteDatabase.update(str3, contentValues, strDecrypt, strArr) == 0) {
            contentValues.put(f1568, str);
            this.f1570.replace(str3, null, contentValues);
        }
    }
}
