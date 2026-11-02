package org.chromium.net;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class Proxy {
    public static final int HTTP = 0;
    public static final int HTTPS = 1;
    private final Callback mCallback;
    private final Executor mExecutor;
    private final String mHost;
    private final int mPort;
    private final int mScheme;

    public static abstract class Callback {

        public static abstract class Request implements AutoCloseable {
            @Override // java.lang.AutoCloseable
            public abstract void close();

            public abstract void proceed(List<Map.Entry<String, String>> list);
        }

        @Deprecated
        public List<Map.Entry<String, String>> onBeforeTunnelRequest() {
            throw new UnsupportedOperationException("At least one overload of onBeforeTunnelRequest must be overridden");
        }

        public void onBeforeTunnelRequest(Request request) {
            try {
                List<Map.Entry<String, String>> listOnBeforeTunnelRequest = onBeforeTunnelRequest();
                if (listOnBeforeTunnelRequest != null) {
                    request.proceed(listOnBeforeTunnelRequest);
                }
                if (request != null) {
                    request.close();
                }
            } catch (Throwable th) {
                if (request != null) {
                    try {
                        request.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        public abstract boolean onTunnelHeadersReceived(List<Map.Entry<String, String>> list, int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Scheme {
    }

    public Proxy(int i, String str, int i2, Executor executor, Callback callback) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(String.format("Unknown scheme %s", Integer.valueOf(i)));
        }
        this.mScheme = i;
        this.mHost = (String) Objects.requireNonNull(str);
        this.mPort = i2;
        this.mExecutor = (Executor) Objects.requireNonNull(executor);
        this.mCallback = (Callback) Objects.requireNonNull(callback);
    }

    @Deprecated
    public Proxy(int i, String str, int i2, Callback callback) {
        this(i, str, i2, new Executor() { // from class: org.chromium.net.Proxy$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                runnable.run();
            }
        }, callback);
    }

    public Callback getCallback() {
        return this.mCallback;
    }

    public Executor getExecutor() {
        return this.mExecutor;
    }

    public String getHost() {
        return this.mHost;
    }

    public int getPort() {
        return this.mPort;
    }

    public int getScheme() {
        return this.mScheme;
    }
}
