package com.google.android.play.deku.j$.util;

import com.google.android.play.deku.java.util.function.Consumer;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class e implements Consumer {
    public final /* synthetic */ Consumer a;

    @Override // com.google.android.play.deku.java.util.function.Consumer
    public final void accept(Object obj) {
        this.a.accept(new f((Map.Entry) obj));
    }

    public final Consumer andThen(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new com.google.android.play.deku.j$.util.function.a(this, consumer);
    }
}
