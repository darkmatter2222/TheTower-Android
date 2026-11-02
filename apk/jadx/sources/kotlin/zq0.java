package kotlin;

import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zq0 implements rh3 {
    public final ex0 a;

    public zq0(ex0 flags) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = flags;
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.EXPERIMENT_IDS;
    }

    @Override // kotlin.rh3
    public final Object s(Continuation continuation) {
        return new q01(new yq0(this.a.s.c()));
    }
}
