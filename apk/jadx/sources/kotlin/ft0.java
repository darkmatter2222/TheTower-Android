package kotlin;

import android.graphics.drawable.Drawable;
import com.google.gson.JsonObject;
import com.tapjoy.TapjoyConstants;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class ft0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ Drawable b;
    public final /* synthetic */ ht0 c;
    public final /* synthetic */ String d;
    public final /* synthetic */ String e;
    public final /* synthetic */ r31 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ft0(Drawable drawable, ht0 ht0Var, String str, String str2, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.b = drawable;
        this.c = ht0Var;
        this.d = str;
        this.e = str2;
        this.f = r31Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ft0(this.b, this.c, this.d, this.e, this.f, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ft0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            m21 m21Var = o21.f;
            String strA = m21.a(this.b);
            JsonObject jsonObject = new JsonObject();
            String str = this.d;
            String str2 = this.e;
            jsonObject.addProperty(TapjoyConstants.TJC_APP_ID, str);
            jsonObject.addProperty("app_name", str2);
            jsonObject.addProperty("app_icon_bytes", strA);
            CoroutineContext coroutineContext = this.c.c;
            et0 et0Var = new et0(this.f, jsonObject, null);
            this.a = 1;
            if (BuildersKt.withContext(coroutineContext, et0Var, this) == coroutine_suspended) {
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
