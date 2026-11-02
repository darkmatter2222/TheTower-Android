package com.tapjoy.internal;

import android.graphics.Bitmap;
import java.io.IOException;
import java.io.InputStream;
import java.net.ContentHandler;
import java.net.URLConnection;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class r extends ContentHandler {
    public static final r a = new r();

    private r() {
    }

    @Nullable
    public static Bitmap a(InputStream inputStream) throws IOException {
        try {
            return s.a.b(inputStream);
        } finally {
            inputStream.close();
        }
    }

    @Nullable
    private static Bitmap a(URLConnection uRLConnection) throws IOException {
        InputStream inputStream = uRLConnection.getInputStream();
        try {
            return s.a.b(inputStream);
        } finally {
            inputStream.close();
        }
    }

    @Override // java.net.ContentHandler
    @Nullable
    public final /* synthetic */ Object getContent(URLConnection uRLConnection) {
        return a(uRLConnection);
    }
}
