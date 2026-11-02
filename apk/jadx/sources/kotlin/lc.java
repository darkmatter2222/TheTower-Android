package kotlin;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class lc extends vz0.a implements uw1 {
    public lc() {
        super(mc.DEFAULT_INSTANCE);
    }

    public final void a(ArrayList arrayList) {
        d();
        mc mcVar = (mc) this.b;
        yh1.f fVar = mcVar.adUnitPatterns_;
        if (!fVar.b()) {
            mcVar.adUnitPatterns_ = vz0.a(fVar);
        }
        f.a(arrayList, mcVar.adUnitPatterns_);
    }

    public final List h() {
        return Collections.unmodifiableList(((mc) this.b).adUnitPatterns_);
    }
}
