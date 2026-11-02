package kotlin;

import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class de extends vz0.a implements uw1 {
    public de() {
        super(ee.DEFAULT_INSTANCE);
    }

    public final void a(String str) {
        d();
        ((ee) this.b).b(str);
    }

    public final void a(String str, String str2) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(str2);
        d();
        ee eeVar = (ee) this.b;
        if (!eeVar.extras_.d()) {
            eeVar.extras_ = eeVar.extras_.f();
        }
        eeVar.extras_.put(str, str2);
    }

    public final Map h() {
        return Collections.unmodifiableMap(Collections.unmodifiableMap(((ee) this.b).extras_));
    }
}
