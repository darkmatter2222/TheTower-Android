package kotlin;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class gc extends vz0.a implements uw1 {
    public gc() {
        super(hc.DEFAULT_INSTANCE);
    }

    public final void a(String str) {
        d();
        ((hc) this.b).b(str);
    }

    public final void a(ArrayList arrayList) {
        d();
        hc hcVar = (hc) this.b;
        yh1.f fVar = hcVar.excludingRegexes_;
        if (!fVar.b()) {
            hcVar.excludingRegexes_ = vz0.a(fVar);
        }
        f.a(arrayList, hcVar.excludingRegexes_);
    }

    public final void b(ArrayList arrayList) {
        d();
        hc hcVar = (hc) this.b;
        yh1.f fVar = hcVar.includingRegexes_;
        if (!fVar.b()) {
            hcVar.includingRegexes_ = vz0.a(fVar);
        }
        f.a(arrayList, hcVar.includingRegexes_);
    }

    public final List h() {
        return Collections.unmodifiableList(((hc) this.b).excludingRegexes_);
    }

    public final List i() {
        return Collections.unmodifiableList(((hc) this.b).includingRegexes_);
    }
}
