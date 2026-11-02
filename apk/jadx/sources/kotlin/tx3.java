package kotlin;

import com.google.common.base.Splitter;
import java.util.Map;
import kotlinx.coroutines.BuildersKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class tx3 implements r41 {
    public final CoroutineContext a;

    public tx3(CoroutineContext backgroundContext) {
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        this.a = backgroundContext;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("action");
        if (str == null || StringsKt.isBlank(str)) {
            xs3.a("Action is missing from a video GMSG: " + map, null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
        Splitter splitter = f01.a;
        f01.b("Handling \"" + str + "\" video GMSG", null);
        q41 q41VarD = r31Var.d();
        if (q41VarD == null) {
            return p005kotlin.Unit.INSTANCE;
        }
        int iHashCode = str.hashCode();
        if (iHashCode != 114148) {
            if (iHashCode != 3532159) {
                if (iHashCode == 1762557398 && str.equals("timeupdate")) {
                    Object objWithContext = BuildersKt.withContext(this.a, new qx3(map, q41VarD, null), continuation);
                    return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : p005kotlin.Unit.INSTANCE;
                }
            } else if (str.equals("skip")) {
                Object objWithContext2 = BuildersKt.withContext(this.a, new rx3(q41VarD, null), continuation);
                return objWithContext2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext2 : p005kotlin.Unit.INSTANCE;
            }
        } else if (str.equals("src")) {
            Object objWithContext3 = BuildersKt.withContext(this.a, new sx3(map, q41VarD, null), continuation);
            return objWithContext3 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext3 : p005kotlin.Unit.INSTANCE;
        }
        xs3.a("Unhandled video GMSG: " + map, null, 6);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_VIDEO;
    }

    @Override // kotlin.r41
    public final boolean i() {
        return true;
    }
}
