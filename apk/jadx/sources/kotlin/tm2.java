package kotlin;

import com.ironsource.C3510b4;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tm2 implements r41 {
    public final g30 a;
    public final ex0 b;

    public tm2(g30 consentManager, ex0 flags) {
        Intrinsics.checkNotNullParameter(consentManager, "consentManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = consentManager;
        this.b = flags;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get(C3510b4.i.W);
        String str2 = (String) map.get("value");
        if (str == null || str.length() == 0) {
            return p005kotlin.Unit.INSTANCE;
        }
        if (Intrinsics.areEqual(str, "cachedMediaIds")) {
            ex0 ex0Var = this.b;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:cached_media_ids_signal:enabled", C3510b4.i.W);
            if (!((Boolean) ex0Var.a("gads:cached_media_ids_signal:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                return p005kotlin.Unit.INSTANCE;
            }
        }
        g30 g30Var = this.a;
        g30Var.getClass();
        Object objA = g30.a(g30Var, str, str2, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_PERSISTENT_SDK_CORE_DATA;
    }
}
