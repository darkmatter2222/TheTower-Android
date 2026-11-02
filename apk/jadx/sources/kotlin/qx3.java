package kotlin;

import com.tapjoy.TJAdUnitConstants;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class qx3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Map a;
    public final /* synthetic */ q41 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qx3(Map map, q41 q41Var, Continuation continuation) {
        super(2, continuation);
        this.a = map;
        this.b = q41Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new qx3(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new qx3(this.a, this.b, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        String str = (String) this.a.get(TJAdUnitConstants.String.VIDEO_CURRENT_TIME);
        if (str == null) {
            xs3.a("CurrentTime parameter missing from timeupdate video GMSG: " + this.a, null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
        try {
            this.b.a(Float.parseFloat(str));
        } catch (NumberFormatException e) {
            xs3.a("Could not parse currentTime from timeupdate video GMSG: " + str, e, 4);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
