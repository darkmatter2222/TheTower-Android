package kotlin;

import android.graphics.Rect;
import com.google.gson.JsonObject;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class sz1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ tz1 b;
    public final /* synthetic */ r31 c;
    public final /* synthetic */ Rect d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sz1(tz1 tz1Var, r31 r31Var, Rect rect, Continuation continuation) {
        super(2, continuation);
        this.b = tz1Var;
        this.c = r31Var;
        this.d = rect;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new sz1(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((sz1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ix1 ix1Var = this.b.a;
            r31 r31Var = this.c;
            Rect rect = this.d;
            int i2 = rect.left;
            int i3 = rect.top;
            int iWidth = rect.width();
            int iHeight = this.d.height();
            this.a = 1;
            ix1Var.getClass();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("x", Boxing.boxInt(i2));
            jsonObject.addProperty("y", Boxing.boxInt(i3));
            jsonObject.addProperty("width", Boxing.boxInt(iWidth));
            jsonObject.addProperty("height", Boxing.boxInt(iHeight));
            Object objA = r31Var.a(jsonObject, "onDefaultPositionReceived", this);
            if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = p005kotlin.Unit.INSTANCE;
            }
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
