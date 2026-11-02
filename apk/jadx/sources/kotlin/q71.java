package kotlin;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.net.HttpHeaders;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class q71 implements n71 {
    public final ExecutorService a;
    public final String b;
    public final long c;

    public q71(ExecutorService executorService, String str, long j) {
        this.a = executorService;
        this.b = str;
        this.c = j;
    }

    public static byte[] a(HttpURLConnection httpURLConnection, int i) throws IOException {
        InputStream inputStream = i < 400 ? httpURLConnection.getInputStream() : httpURLConnection.getErrorStream();
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                if (inputStream == null) {
                    byte[] bArr = new byte[0];
                    byteArrayOutputStream.close();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return bArr;
                }
                byte[] bArr2 = new byte[4096];
                while (true) {
                    int i2 = inputStream.read(bArr2);
                    if (i2 == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        inputStream.close();
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i2);
                }
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }

    public final ListenableFuture a(final String str, final boolean z, final byte[] bArr, final String str2) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: ads_mobile_sdk.q71$$ExternalSyntheticLambda2
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return this.f$0.a(str, z, str2, bArr, completer);
            }
        });
    }

    public final /* synthetic */ Object a(final String str, final boolean z, final String str2, final byte[] bArr, final CallbackToFutureAdapter.Completer completer) {
        this.a.execute(new Runnable() { // from class: ads_mobile_sdk.q71$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.a(str, completer, z, str2, bArr);
            }
        });
        return "";
    }

    public final /* synthetic */ void a(String str, CallbackToFutureAdapter.Completer completer, boolean z, String str2, byte[] bArr) {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                final HttpURLConnection httpURLConnection2 = (HttpURLConnection) URI.create(str).toURL().openConnection();
                try {
                    Objects.requireNonNull(httpURLConnection2);
                    completer.addCancellationListener(new Runnable() { // from class: ads_mobile_sdk.q71$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            httpURLConnection2.disconnect();
                        }
                    }, this.a);
                    httpURLConnection2.setRequestProperty(HttpHeaders.USER_AGENT, this.b);
                    httpURLConnection2.setConnectTimeout((int) this.c);
                    httpURLConnection2.setReadTimeout((int) this.c);
                    if (z) {
                        httpURLConnection2.setDoOutput(true);
                        httpURLConnection2.setRequestMethod("POST");
                        if (str2 != null) {
                            httpURLConnection2.setRequestProperty("Content-Type", str2);
                        }
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection2.getOutputStream());
                        try {
                            bufferedOutputStream.write(bArr);
                            bufferedOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                bufferedOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    int responseCode = httpURLConnection2.getResponseCode();
                    completer.set(new p71(a(httpURLConnection2, responseCode), responseCode));
                    httpURLConnection2.disconnect();
                } catch (SocketTimeoutException e) {
                    e = e;
                    httpURLConnection = httpURLConnection2;
                    completer.setException(new TimeoutException("Timeout: " + e.getMessage()));
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    httpURLConnection = httpURLConnection2;
                    completer.setException(th);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            } catch (Throwable th4) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th4;
            }
        } catch (SocketTimeoutException e2) {
            e = e2;
        } catch (Throwable th5) {
            th = th5;
        }
    }
}
