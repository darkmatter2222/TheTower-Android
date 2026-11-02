package kotlin;

import com.ironsource.C3510b4;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ec2 implements jr0 {
    public final dw2 a;

    public ec2(dw2 dw2Var) {
        this.a = dw2Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        ex0 flags = (ex0) this.a.get();
        Intrinsics.checkNotNullParameter(flags, "flags");
        flags.getClass();
        Intrinsics.checkNotNullParameter("gads:offline_database_version_decagon", C3510b4.i.W);
        return Integer.valueOf(((Number) flags.a("gads:offline_database_version_decagon", 1, yr.f)).intValue());
    }
}
