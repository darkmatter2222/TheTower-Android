package com.google.android.play.deku.j$.util.function;

import com.google.android.play.deku.j$.util.Objects;
import com.google.android.play.deku.java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-bb91944b082bf4b7fbd41b6e2b3f121d681bdc5ad0cdf9802a2430155b14e3ec */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Consumer {
    public final /* synthetic */ Consumer a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ a(Consumer consumer, Consumer consumer2) {
        this.a = consumer;
        this.b = consumer2;
    }

    @Override // com.google.android.play.deku.java.util.function.Consumer
    public final void accept(Object obj) {
        this.a.accept(obj);
        this.b.accept(obj);
    }

    public final Consumer andThen(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new a(this, consumer);
    }
}
