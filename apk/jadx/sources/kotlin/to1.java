package kotlin;

import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class to1 implements r41 {
    public final ay0 a;

    public to1(ay0 fullscreenContentGmsgHandler) {
        Intrinsics.checkNotNullParameter(fullscreenContentGmsgHandler, "fullscreenContentGmsgHandler");
        this.a = fullscreenContentGmsgHandler;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Integer intOrNull;
        boolean zAreEqual = Intrinsics.areEqual("1", map.get("transparentBackground"));
        String str = (String) map.get("blurRadius");
        ((yy0) this.a).a((str == null || (intOrNull = StringsKt.toIntOrNull(str)) == null) ? 0 : intOrNull.intValue(), zAreEqual);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_INTERSTITIAL_PROPERTIES;
    }
}
