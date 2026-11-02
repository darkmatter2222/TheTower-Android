package kotlin;

import com.tapjoy.TJAdUnitConstants;
import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ll0 implements r41 {
    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        if (map.keySet().contains(TJAdUnitConstants.String.VIDEO_START)) {
            g41 g41VarB = r31Var.b();
            g41VarB.l.incrementAndGet();
            g41VarB.d();
            return p005kotlin.Unit.INSTANCE;
        }
        if (map.keySet().contains("stop")) {
            g41 g41VarB2 = r31Var.b();
            g41VarB2.l.decrementAndGet();
            g41VarB2.d();
            return p005kotlin.Unit.INSTANCE;
        }
        if (!map.keySet().contains("cancel")) {
            return p005kotlin.Unit.INSTANCE;
        }
        g41 g41VarB3 = r31Var.b();
        g41VarB3.k.set(true);
        BuildersKt__Builders_commonKt.launch$default(g41VarB3.c, null, null, new y31(g41VarB3, null), 3, null);
        g41VarB3.d();
        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return unit;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_DELAY_PAGE_LOADED;
    }

    @Override // kotlin.r41
    public final boolean i() {
        return true;
    }
}
