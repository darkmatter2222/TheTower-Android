package kotlin;

import com.ironsource.C3635i2;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h1 implements r41 {
    public final j1 a;

    public h1(j1 backButtonStateDelegate) {
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        this.a = backButtonStateDelegate;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get(C3635i2.e);
        this.a.a.set(!(str != null && Boolean.parseBoolean(str)));
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_BACK_BUTTON;
    }
}
