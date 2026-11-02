package com.tapjoy.internal;

import android.net.Uri;
import com.ironsource.C3510b4;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.nio.charset.Charset;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class fm {
    public static String a(Map<?, ?> map) {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (z) {
                z = false;
            } else {
                sb.append(C3510b4.j.c);
            }
            Object key = entry.getKey();
            if (key != null) {
                sb.append(Uri.encode(key.toString()));
            }
            sb.append(C3510b4.j.b);
            Object value = entry.getValue();
            if (value != null) {
                sb.append(Uri.encode(value.toString()));
            }
        }
        return sb.toString();
    }

    public static void a(HttpURLConnection httpURLConnection, String str, String str2, Charset charset) throws IOException {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestProperty("Content-Type", str);
        byte[] bytes = str2.getBytes(charset);
        httpURLConnection.setFixedLengthStreamingMode(bytes.length);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        try {
            outputStream.write(bytes);
        } finally {
            outputStream.close();
        }
    }
}
