package com.ironsource;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class H4 {
    public static final a a = new a(null);
    private static final Object b = new Object();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static /* synthetic */ SQLiteDatabase a(H4 h4, boolean z, SQLiteOpenHelper sQLiteOpenHelper, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return h4.a(z, sQLiteOpenHelper);
    }

    public final SQLiteDatabase a(SQLiteOpenHelper sqliteOpenHelper) {
        Intrinsics.checkNotNullParameter(sqliteOpenHelper, "sqliteOpenHelper");
        return a(this, false, sqliteOpenHelper, 1, null);
    }

    public final SQLiteDatabase a(boolean z, SQLiteOpenHelper sqliteOpenHelper) {
        SQLiteDatabase writableDatabase;
        Intrinsics.checkNotNullParameter(sqliteOpenHelper, "sqliteOpenHelper");
        synchronized (b) {
            try {
                writableDatabase = z ? sqliteOpenHelper.getWritableDatabase() : sqliteOpenHelper.getReadableDatabase();
            } catch (Throwable th) {
                throw th;
            }
        }
        return writableDatabase;
    }
}
