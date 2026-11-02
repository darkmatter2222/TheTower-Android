package kotlin;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a81 {
    public final ex0 a;
    public final cw2 b;
    public final cw2 c;
    public final ja1 d;
    public final p005kotlin.Lazy e;

    public a81(ex0 flags, dw2 httpClientProvider, dw2 cronetHttpClientProvider, ja1 initializationConfigWrapper) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(httpClientProvider, "httpClientProvider");
        Intrinsics.checkNotNullParameter(cronetHttpClientProvider, "cronetHttpClientProvider");
        Intrinsics.checkNotNullParameter(initializationConfigWrapper, "initializationConfigWrapper");
        this.a = flags;
        this.b = httpClientProvider;
        this.c = cronetHttpClientProvider;
        this.d = initializationConfigWrapper;
        this.e = p005kotlin.LazyKt.lazy(new z71(this));
    }
}
