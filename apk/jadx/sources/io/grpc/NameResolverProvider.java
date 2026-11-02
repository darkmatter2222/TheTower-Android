package io.grpc;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public abstract class NameResolverProvider extends NameResolver.Factory {
    public Collection<Class<? extends SocketAddress>> getProducedSocketAddressTypes() {
        return Collections.singleton(InetSocketAddress.class);
    }

    protected String getScheme() {
        return getDefaultScheme();
    }

    protected abstract boolean isAvailable();

    protected abstract int priority();
}
