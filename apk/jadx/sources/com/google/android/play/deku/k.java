package com.google.android.play.deku;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class k extends SQLiteOpenHelper {
    public k(Context context) {
        super(context, "sidekick_experiment_info.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    private final int d(String str) {
        Cursor cursorQuery;
        try {
            try {
                cursorQuery = getReadableDatabase().query("experiment_info", new String[]{str}, "_id = ?", new String[]{"1"}, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            int i = cursorQuery.getInt(0);
                            cursorQuery.close();
                            return i;
                        }
                        cursorQuery.close();
                    } catch (Throwable th) {
                        th = th;
                        try {
                            Log.e("SidekickExperimentInfoM", "Failed to get column during query: " + str, th);
                            if (cursorQuery != null) {
                            }
                            return 0;
                        } finally {
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                        }
                    }
                }
                return 0;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery = null;
            }
        } catch (Throwable th3) {
            Log.e("SidekickExperimentInfoM", "Failed to get column: ".concat(str), th3);
            return 0;
        }
    }

    private final void e(String str, int i) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put(str, Integer.valueOf(i));
            writableDatabase.beginTransaction();
            try {
                if (writableDatabase.update("experiment_info", contentValues, "_id = ?", new String[]{"1"}) == 0) {
                    writableDatabase.insert("experiment_info", null, contentValues);
                }
                writableDatabase.setTransactionSuccessful();
                Log.i("SidekickExperimentInfoM", "Updated table successfully, column: " + str + " to " + i);
                writableDatabase.endTransaction();
            } catch (Throwable th) {
                try {
                    Log.e("SidekickExperimentInfoM", "Failed during transaction, column: " + str, th);
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        } catch (Throwable th2) {
            Log.e("SidekickExperimentInfoM", "Failed to update column: ".concat(str), th2);
        }
    }

    public final Cursor a(String[] strArr) {
        int i;
        Integer numValueOf;
        try {
            int iD = d("treatment_info");
            int i2 = d("sidekick_rendered") == 1 ? 1 : 0;
            if (strArr == null) {
                strArr = new String[]{"in_treatment", "in_control", "sidekick_rendered"};
            }
            Log.i("SidekickExperimentInfoM", "Sidekick query: " + Arrays.toString(strArr));
            MatrixCursor matrixCursor = new MatrixCursor(strArr);
            MatrixCursor.RowBuilder rowBuilderNewRow = matrixCursor.newRow();
            for (String str : strArr) {
                int iHashCode = str.hashCode();
                if (iHashCode != -1395776445) {
                    if (iHashCode != -979626530) {
                        if (iHashCode == 1728261783 && str.equals("sidekick_rendered")) {
                            numValueOf = Integer.valueOf(i2);
                            rowBuilderNewRow.add(numValueOf);
                        }
                    } else if (str.equals("in_treatment")) {
                        i = iD == 1 ? 1 : 0;
                        numValueOf = Integer.valueOf(i);
                        rowBuilderNewRow.add(numValueOf);
                    }
                    Log.w("SidekickExperimentInfoM", "Unknown column: " + str);
                } else if (str.equals("in_control")) {
                    i = iD == 2 ? 1 : 0;
                    numValueOf = Integer.valueOf(i);
                    rowBuilderNewRow.add(numValueOf);
                } else {
                    Log.w("SidekickExperimentInfoM", "Unknown column: " + str);
                }
            }
            return matrixCursor;
        } catch (Throwable th) {
            Log.e("SidekickExperimentInfoM", "query failed.", th);
            return null;
        }
    }

    public final void b(int i) {
        if (i == 1 || i == 2 || i == 0) {
            e("treatment_info", i);
            return;
        }
        Log.e("SidekickExperimentInfoM", "Unknown experiment state: " + i);
    }

    public final void c(boolean z) {
        e("sidekick_rendered", z ? 1 : 0);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE experiment_info (_id INTEGER PRIMARY KEY, treatment_info INTEGER NOT NULL DEFAULT 0, sidekick_rendered INTEGER NOT NULL DEFAULT 0)");
        } catch (Throwable th) {
            Log.e("SidekickExperimentInfoM", "Failed to create table", th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS experiment_info");
            onCreate(sQLiteDatabase);
        } catch (Throwable th) {
            Log.e("SidekickExperimentInfoM", "Failed to upgrade table", th);
        }
    }
}
