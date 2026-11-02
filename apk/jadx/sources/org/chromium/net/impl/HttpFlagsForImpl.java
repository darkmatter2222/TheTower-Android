package org.chromium.net.impl;

import android.content.Context;
import org.chromium.net.httpflags.HttpFlagsLoader;
import org.chromium.net.httpflags.ResolvedFlags;

/* JADX INFO: loaded from: classes5.dex */
public final class HttpFlagsForImpl {
    public static ResolvedFlags getHttpFlags(Context context, CronetLogger.CronetSource cronetSource) {
        return HttpFlagsLoader.getHttpFlags(context, ImplVersion.getCronetVersion(), false, CronetManifest.isAppOptedInForTelemetry(context, cronetSource));
    }
}
