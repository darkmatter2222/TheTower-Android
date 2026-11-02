package io.grpc;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CallCredentials {

    public static abstract class MetadataApplier {
        public abstract void apply(Metadata metadata);

        public abstract void fail(Status status);
    }

    public static abstract class RequestInfo {
        public abstract String getAuthority();

        public CallOptions getCallOptions() {
            throw new UnsupportedOperationException("Not implemented");
        }

        public abstract MethodDescriptor<?, ?> getMethodDescriptor();

        public abstract SecurityLevel getSecurityLevel();

        public abstract Attributes getTransportAttrs();
    }

    public abstract void applyRequestMetadata(RequestInfo requestInfo, Executor executor, MetadataApplier metadataApplier);

    @Deprecated
    public void thisUsesUnstableApi() {
    }
}
