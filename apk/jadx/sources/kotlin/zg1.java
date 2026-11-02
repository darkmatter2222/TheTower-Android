package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class zg1 implements r41 {
    public final if1 a;

    public zg1(if1 inspectorManager) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        this.a = inspectorManager;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) throws Throwable {
        String str = (String) map.get("persistentData");
        if (str != null && !StringsKt.isBlank(str)) {
            if1 if1Var = this.a;
            if1Var.getClass();
            Object objB = if1.b(if1Var, str, continuation);
            return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_INSPECTOR_UI_STORAGE;
    }
}
