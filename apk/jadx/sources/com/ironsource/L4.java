package com.ironsource;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
final class L4 implements U3 {
    public static final L4 a = new L4();

    private L4() {
    }

    @Override // com.ironsource.U3
    public InputStream a(String url) throws IOException {
        Intrinsics.checkNotNullParameter(url, "url");
        InputStream inputStreamOpenStream = new URL(url).openStream();
        Intrinsics.checkNotNullExpressionValue(inputStreamOpenStream, "openStream(...)");
        return inputStreamOpenStream;
    }
}
