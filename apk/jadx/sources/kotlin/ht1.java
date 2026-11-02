package kotlin;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Splitter;
import java.util.Map;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes.dex */
public final class ht1 implements r41 {
    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        Splitter splitter = f01.a;
        f01.b("Received log message: " + map.get(TypedValues.Custom.S_STRING), null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_LOG;
    }
}
