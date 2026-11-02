package com.tapjoy.internal;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes5.dex */
public final class ih {
    public URL a;
    public Bitmap b;
    public byte[] c;
    public io d;
    private static final ah<URL, Bitmap> f = new aj.a(new al());
    public static final bc<ih> e = new bc<ih>() { // from class: com.tapjoy.internal.ih.1
        @Override // com.tapjoy.internal.bc
        public final /* synthetic */ ih a(bh bhVar) {
            return new ih(bhVar);
        }
    };

    ih(bh bhVar) {
        if (bhVar.k() == bm.STRING) {
            this.a = bhVar.e();
            return;
        }
        bhVar.h();
        String strL = bhVar.l();
        while (bhVar.j()) {
            if ("url".equals(strL)) {
                this.a = bhVar.e();
            } else {
                bhVar.s();
            }
        }
        bhVar.i();
    }

    public ih(URL url) {
        this.a = url;
    }

    private ByteArrayInputStream a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        gn.a(inputStream, byteArrayOutputStream);
        byteArrayOutputStream.close();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArray);
        ip ipVar = new ip();
        ipVar.a(byteArray);
        io ioVarA = ipVar.a();
        if (ioVarA.b == 0) {
            this.c = byteArray;
            this.d = ioVarA;
            return byteArrayInputStream;
        }
        r rVar = r.a;
        this.b = r.a(byteArrayInputStream);
        byteArrayInputStream.reset();
        return byteArrayInputStream;
    }

    public final boolean a() {
        return (this.b == null && this.c == null) ? false : true;
    }

    public final void b() throws Throwable {
        long j;
        Bitmap bitmap;
        File fileA;
        boolean zA = gd.b().a("mm_external_cache_enabled", true);
        if (!zA) {
            Bitmap bitmapA = f.a(this.a);
            this.b = bitmapA;
            if (bitmapA != null) {
                return;
            }
        }
        if (zA && (fileA = id.a.a(this.a)) != null) {
            FileInputStream fileInputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(fileA);
                try {
                    a(fileInputStream2);
                    gp.a(fileInputStream2);
                } catch (IOException unused) {
                    fileInputStream = fileInputStream2;
                    gp.a(fileInputStream);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    gp.a(fileInputStream);
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
            Bitmap bitmap2 = this.b;
            if (bitmap2 != null || this.c != null) {
                if (zA || bitmap2 == null) {
                    return;
                }
                f.a(this.a, bitmap2);
                return;
            }
            fileA.delete();
        }
        URLConnection uRLConnectionA = fl.a(this.a);
        String headerField = uRLConnectionA.getHeaderField(HttpHeaders.CACHE_CONTROL);
        if (!TextUtils.isEmpty(headerField)) {
            String[] strArrSplit = headerField.split(FacebookConstants.PLACEMENT_IDS_SEPARATOR);
            int length = strArrSplit.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    String strTrim = strArrSplit[i].trim();
                    if (strTrim.startsWith("max-age=")) {
                        try {
                            j = Long.parseLong(strTrim.substring(8));
                            break;
                        } catch (NumberFormatException unused3) {
                            j = 0;
                            break;
                        }
                    }
                    i++;
                }
                j = 0;
                break;
            }
        } else {
            j = 0;
            break;
        }
        InputStream inputStream = uRLConnectionA.getInputStream();
        ByteArrayInputStream byteArrayInputStreamA = a(inputStream);
        gp.a(inputStream);
        id idVar = id.a;
        if (id.a(j) && zA && (this.b != null || this.c != null)) {
            id.a.a(this.a, byteArrayInputStreamA, j);
        }
        if (zA || (bitmap = this.b) == null) {
            return;
        }
        f.a(this.a, bitmap);
    }
}
