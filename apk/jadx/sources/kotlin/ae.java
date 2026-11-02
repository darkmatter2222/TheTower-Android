package kotlin;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ae extends vz0.a implements uw1 {
    public ae() {
        super(be.DEFAULT_INSTANCE);
    }

    public final void a(ArrayList arrayList) {
        d();
        be beVar = (be) this.b;
        yh1.f fVar = beVar.initializationData_;
        if (!fVar.b()) {
            beVar.initializationData_ = vz0.a(fVar);
        }
        f.a(arrayList, beVar.initializationData_);
    }

    public final List h() {
        return Collections.unmodifiableList(((be) this.b).initializationData_);
    }
}
