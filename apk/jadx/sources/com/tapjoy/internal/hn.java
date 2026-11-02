package com.tapjoy.internal;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.UUID;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class hn {
    private final File a;

    public hn(File file) {
        this.a = file;
    }

    public final synchronized boolean a() {
        if (b() != null) {
            return false;
        }
        try {
            File file = this.a;
            String string = UUID.randomUUID().toString();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, af.c);
                outputStreamWriter.write(string);
                outputStreamWriter.flush();
                gp.a(fileOutputStream);
                return b() != null;
            } catch (Throwable th) {
                gp.a(fileOutputStream);
                throw th;
            }
        } catch (IOException e) {
            try {
                this.a.delete();
                throw e;
            } catch (IOException unused) {
                return false;
            }
        }
    }

    @Nullable
    final String b() {
        if (!this.a.exists()) {
            return null;
        }
        try {
            String strA = ba.a(this.a, af.c);
            if (strA.length() > 0) {
                return strA;
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }
}
