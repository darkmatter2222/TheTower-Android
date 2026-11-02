package kotlin;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class x80 extends vz0.a implements uw1 {
    public x80() {
        super(a90.DEFAULT_INSTANCE);
    }

    public final void a(w80 w80Var) {
        d();
        ((a90) this.b).a(w80Var);
    }

    public final List h() {
        return Collections.unmodifiableList(((a90) this.b).headers_);
    }
}
