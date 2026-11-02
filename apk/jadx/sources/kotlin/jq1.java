package kotlin;

import java.util.Map;
import kotlinx.coroutines.CompletableDeferred;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class jq1 implements r41 {
    public final /* synthetic */ CompletableDeferred a;

    public jq1(CompletableDeferred completableDeferred) {
        this.a = completableDeferred;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        CompletableDeferred completableDeferred = this.a;
        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        completableDeferred.complete(unit);
        return unit;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_NAME_SDK_CORE_LOADED;
    }
}
