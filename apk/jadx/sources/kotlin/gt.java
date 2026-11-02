package kotlin;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class gt extends vz0.a implements uw1 {
    public gt() {
        super(xt.DEFAULT_INSTANCE);
    }

    public final void a(wt wtVar) {
        d();
        ((xt) this.b).a(wtVar);
    }

    public final List h() {
        return Collections.unmodifiableList(((xt) this.b).thirdPartySdk_);
    }
}
