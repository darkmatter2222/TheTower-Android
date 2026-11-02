package io.grpc.internal;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
interface TransportProvider {
    @Nullable
    ClientTransport obtainActiveTransport();
}
