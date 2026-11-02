package io.grpc;

/* JADX INFO: loaded from: classes5.dex */
public final class InsecureServerCredentials extends ServerCredentials {
    private InsecureServerCredentials() {
    }

    public static ServerCredentials create() {
        return new InsecureServerCredentials();
    }
}
