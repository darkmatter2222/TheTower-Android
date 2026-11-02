package kotlin;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class da3 extends vz0.a implements uw1 {
    public da3() {
        super(ea3.DEFAULT_INSTANCE);
    }

    public final void a(ba3 ba3Var) {
        d();
        ((ea3) this.b).a(ba3Var);
    }

    public final List h() {
        return Collections.unmodifiableList(((ea3) this.b).evictions_);
    }
}
