package org.chromium.net.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.chromium.net.Proxy;
import org.chromium.net.ProxyOptions;
import org.chromium.net.impl.proto.ProxyScheme;

/* JADX INFO: loaded from: classes5.dex */
final class VersionSafeProxyOptions {
    private static final int SET_PROXY_OPTIONS_API_LEVEL = 38;
    private final ProxyOptions mBackend;

    VersionSafeProxyOptions(ProxyOptions proxyOptions) {
        if (!apiContainsProxyOptionsClass()) {
            throw new AssertionError(String.format("This should have not been created: the Cronet API being used has an ApiLevel of %s, but setProxyOptions was added in ApiLevel %s", Integer.valueOf(VersionSafeCallbacks.ApiVersion.getMaximumAvailableApiLevel()), 38));
        }
        ProxyOptions proxyOptions2 = (ProxyOptions) Objects.requireNonNull(proxyOptions);
        this.mBackend = proxyOptions2;
        if (proxyOptions2.getProxyList().isEmpty()) {
            throw new AssertionError("The list of proxies should never be empty, this is checked in the API layer");
        }
    }

    private static boolean apiContainsProxyOptionsClass() {
        return VersionSafeCallbacks.ApiVersion.getMaximumAvailableApiLevel() >= 38;
    }

    List<VersionSafeProxyCallback> createProxyCallbackList() {
        ArrayList arrayList = new ArrayList();
        Iterator<Proxy> it = this.mBackend.getProxyList().iterator();
        while (it.hasNext()) {
            Proxy next = it.next();
            arrayList.add(next == null ? null : new VersionSafeProxyCallback(next.getExecutor(), next.getCallback()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    org.chromium.net.impl.proto.ProxyOptions createProxyOptionsProto() {
        org.chromium.net.impl.proto.ProxyOptions.Builder builderNewBuilder = org.chromium.net.impl.proto.ProxyOptions.newBuilder();
        for (Proxy proxy : this.mBackend.getProxyList()) {
            org.chromium.net.impl.proto.Proxy.Builder builderNewBuilder2 = org.chromium.net.impl.proto.Proxy.newBuilder();
            if (proxy == null) {
                builderNewBuilder2.setScheme(ProxyScheme.DIRECT);
            } else {
                builderNewBuilder2.setHost(proxy.getHost());
                builderNewBuilder2.setPort(proxy.getPort());
                int scheme = proxy.getScheme();
                if (scheme == 0) {
                    builderNewBuilder2.setScheme(ProxyScheme.HTTP);
                } else {
                    if (scheme != 1) {
                        throw new AssertionError(String.format("Unknown Proxy.Scheme: %s. This should have been caught by the API layer", Integer.valueOf(scheme)));
                    }
                    builderNewBuilder2.setScheme(ProxyScheme.HTTPS);
                }
            }
            builderNewBuilder.addProxies(builderNewBuilder2.build());
        }
        return builderNewBuilder.build();
    }
}
