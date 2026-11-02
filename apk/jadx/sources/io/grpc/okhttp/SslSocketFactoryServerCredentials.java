package io.grpc.okhttp;

import com.google.common.base.Preconditions;
import io.grpc.okhttp.internal.ConnectionSpec;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class SslSocketFactoryServerCredentials {

    static final class ServerCredentials extends io.grpc.ServerCredentials {
        private final ConnectionSpec connectionSpec;
        private final SSLSocketFactory factory;

        ServerCredentials(SSLSocketFactory sSLSocketFactory) {
            this(sSLSocketFactory, OkHttpChannelBuilder.INTERNAL_DEFAULT_CONNECTION_SPEC);
        }

        ServerCredentials(SSLSocketFactory sSLSocketFactory, ConnectionSpec connectionSpec) {
            this.factory = (SSLSocketFactory) Preconditions.checkNotNull(sSLSocketFactory, "factory");
            this.connectionSpec = (ConnectionSpec) Preconditions.checkNotNull(connectionSpec, "connectionSpec");
        }

        public ConnectionSpec getConnectionSpec() {
            return this.connectionSpec;
        }

        public SSLSocketFactory getFactory() {
            return this.factory;
        }
    }

    private SslSocketFactoryServerCredentials() {
    }

    public static io.grpc.ServerCredentials create(SSLSocketFactory sSLSocketFactory) {
        return new ServerCredentials(sSLSocketFactory);
    }

    public static io.grpc.ServerCredentials create(SSLSocketFactory sSLSocketFactory, com.squareup.okhttp.ConnectionSpec connectionSpec) {
        return new ServerCredentials(sSLSocketFactory, Utils.convertSpec(connectionSpec));
    }
}
