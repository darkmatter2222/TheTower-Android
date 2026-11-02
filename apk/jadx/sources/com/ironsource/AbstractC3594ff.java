package com.ironsource;

import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ff, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC3594ff {
    private final O a;

    public AbstractC3594ff(O o) {
        this.a = o;
    }

    public final O a() {
        return this.a;
    }

    public final C3870v a(Ob<AbstractC3594ff, C3870v> mapper) {
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        return mapper.a(this);
    }

    public abstract EnumC3719mf b();
}
