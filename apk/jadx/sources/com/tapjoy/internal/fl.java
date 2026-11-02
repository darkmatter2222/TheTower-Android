package com.tapjoy.internal;

import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes5.dex */
public final class fl {
    private static fl a = new fl();

    public static URLConnection a(URL url) {
        return url.openConnection();
    }
}
