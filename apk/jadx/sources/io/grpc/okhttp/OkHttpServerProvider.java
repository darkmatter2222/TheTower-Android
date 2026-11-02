package io.grpc.okhttp;

import io.grpc.ServerCredentials;
import io.grpc.ServerProvider;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes5.dex */
public final class OkHttpServerProvider extends ServerProvider {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.grpc.ServerProvider
    public OkHttpServerBuilder builderForPort(int i) {
        throw new UnsupportedOperationException("Use Grpc.newServerBuilderForPort() instead");
    }

    @Override // io.grpc.ServerProvider
    protected boolean isAvailable() {
        return true;
    }

    @Override // io.grpc.ServerProvider
    protected ServerProvider.NewServerBuilderResult newServerBuilderForPort(int i, ServerCredentials serverCredentials) {
        OkHttpServerBuilder.HandshakerSocketFactoryResult handshakerSocketFactoryResultHandshakerSocketFactoryFrom = OkHttpServerBuilder.handshakerSocketFactoryFrom(serverCredentials);
        return handshakerSocketFactoryResultHandshakerSocketFactoryFrom.error != null ? ServerProvider.NewServerBuilderResult.error(handshakerSocketFactoryResultHandshakerSocketFactoryFrom.error) : ServerProvider.NewServerBuilderResult.serverBuilder(new OkHttpServerBuilder(new InetSocketAddress(i), handshakerSocketFactoryResultHandshakerSocketFactoryFrom.factory));
    }

    @Override // io.grpc.ServerProvider
    protected int priority() {
        return 4;
    }
}
