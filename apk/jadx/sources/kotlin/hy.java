package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class hy implements r41 {
    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        ay0 ay0Var = r31Var.p;
        if (ay0Var != null) {
            ay0Var.a(ky.CUSTOM);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_CLOSE;
    }

    @Override // kotlin.r41
    public final boolean i() {
        return true;
    }
}
