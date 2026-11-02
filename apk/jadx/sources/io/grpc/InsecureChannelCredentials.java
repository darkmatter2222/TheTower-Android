package io.grpc;

/* JADX INFO: loaded from: classes5.dex */
public final class InsecureChannelCredentials extends ChannelCredentials {
    private InsecureChannelCredentials() {
    }

    public static ChannelCredentials create() {
        return new InsecureChannelCredentials();
    }

    @Override // io.grpc.ChannelCredentials
    public ChannelCredentials withoutBearerTokens() {
        return this;
    }
}
