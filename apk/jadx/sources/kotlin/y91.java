package kotlin;

import com.ironsource.C3510b4;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class y91 implements r41 {
    public final qn a;

    public y91(qn appState) {
        Intrinsics.checkNotNullParameter(appState, "appState");
        this.a = appState;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get(C3510b4.i.W);
        String str2 = (String) map.get("value");
        if (str == null || str.length() == 0) {
            return p005kotlin.Unit.INSTANCE;
        }
        qn qnVar = this.a;
        qnVar.getClass();
        Object objA = qn.a(qnVar, str, str2, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_IN_MEMORY_SDK_CORE_DATA;
    }
}
