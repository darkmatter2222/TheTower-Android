package kotlin;

import com.google.common.base.Splitter;
import com.tapjoy.TJAdUnitConstants;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ck implements r41 {
    public final v3 a;

    public ck(v3 adEventEmitter) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        this.a = adEventEmitter;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("name");
        if (str != null) {
            p005kotlin.Unit unitA = this.a.a(str, (String) map.get(TJAdUnitConstants.String.VIDEO_INFO), continuation);
            return unitA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unitA : p005kotlin.Unit.INSTANCE;
        }
        Splitter splitter = f01.a;
        f01.c("App event with no name parameter.", null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_APP_EVENT;
    }
}
