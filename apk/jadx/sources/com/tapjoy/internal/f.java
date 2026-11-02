package com.tapjoy.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class f<E> extends an<E> implements ar<E>, Closeable {
    private SQLiteDatabase a;
    private final ax<E> b;
    private int c;

    public f(File file, ax<E> axVar) {
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(file, (SQLiteDatabase.CursorFactory) null);
        this.a = sQLiteDatabaseOpenOrCreateDatabase;
        this.b = axVar;
        if (sQLiteDatabaseOpenOrCreateDatabase.getVersion() != 1) {
            this.a.beginTransaction();
            try {
                this.a.execSQL("CREATE TABLE IF NOT EXISTS List(value BLOB)");
                this.a.setVersion(1);
                this.a.setTransactionSuccessful();
                this.a.endTransaction();
            } catch (Throwable th) {
                this.a.endTransaction();
                throw th;
            }
        }
        this.c = a();
    }

    private int a() {
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = this.a.rawQuery("SELECT COUNT(1) FROM List", null);
            if (cursorRawQuery.moveToNext()) {
                return cursorRawQuery.getInt(0);
            }
            return 0;
        } finally {
            a(cursorRawQuery);
        }
    }

    private static Cursor a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        cursor.close();
        return null;
    }

    @Override // com.tapjoy.internal.ar
    public final E a(int i) {
        if (i < 0 || i >= this.c) {
            throw new IndexOutOfBoundsException();
        }
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = this.a.rawQuery("SELECT value FROM List ORDER BY rowid LIMIT " + i + ",1", null);
            if (!cursorRawQuery.moveToNext()) {
                throw new NoSuchElementException();
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(cursorRawQuery.getBlob(0));
            try {
                try {
                    E eB = this.b.b(byteArrayInputStream);
                    gp.a(byteArrayInputStream);
                    a(cursorRawQuery);
                    return eB;
                } catch (IOException e) {
                    throw new IllegalStateException(e);
                }
            } catch (Throwable th) {
                gp.a(byteArrayInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            a(cursorRawQuery);
            throw th2;
        }
    }

    @Override // com.tapjoy.internal.ar
    public final void b(int i) throws Throwable {
        int i2;
        if (i <= 0 || i > (i2 = this.c)) {
            throw new IndexOutOfBoundsException();
        }
        if (i == i2) {
            clear();
            return;
        }
        Cursor cursor = null;
        try {
            Cursor cursorRawQuery = this.a.rawQuery("SELECT rowid FROM List ORDER BY rowid LIMIT " + (i - 1) + ",1", null);
            try {
                if (!cursorRawQuery.moveToNext()) {
                    throw new IllegalStateException();
                }
                long j = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                int iDelete = this.a.delete("List", "rowid <= ".concat(String.valueOf(j)), null);
                this.c -= iDelete;
                if (iDelete != i) {
                    throw new IllegalStateException("Try to delete " + i + ", but deleted " + iDelete);
                }
                a((Cursor) null);
                return;
            } catch (Throwable th) {
                th = th;
                cursor = cursorRawQuery;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        a(cursor);
        throw th;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.a.delete("List", "1", null);
        this.c = 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SQLiteDatabase sQLiteDatabase = this.a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
            this.a = null;
        }
    }

    protected final void finalize() throws Throwable {
        close();
        super.finalize();
    }

    @Override // java.util.Queue
    public final boolean offer(E e) {
        gr.a(e);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                this.b.a(byteArrayOutputStream, e);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gp.a(byteArrayOutputStream);
                ContentValues contentValues = new ContentValues();
                contentValues.put("value", byteArray);
                if (this.a.insert("List", null, contentValues) == -1) {
                    return false;
                }
                this.c++;
                return true;
            } catch (IOException e2) {
                throw new IllegalArgumentException(e2);
            }
        } catch (Throwable th) {
            gp.a(byteArrayOutputStream);
            throw th;
        }
    }

    @Override // java.util.Queue
    public final E peek() {
        if (this.c > 0) {
            return a(0);
        }
        return null;
    }

    @Override // java.util.Queue
    public final E poll() throws Throwable {
        if (this.c <= 0) {
            return null;
        }
        E ePeek = peek();
        b(1);
        return ePeek;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.c;
    }
}
