package kotlin;

import android.view.View;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ve2 extends SuspendLambda implements Function1 {
    public int a;
    public final /* synthetic */ h41 b;
    public final /* synthetic */ ze2 c;
    public final /* synthetic */ aq1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ve2(h41 h41Var, ze2 ze2Var, aq1 aq1Var, Continuation continuation) {
        super(1, continuation);
        this.b = h41Var;
        this.c = ze2Var;
        this.d = aq1Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new ve2(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((ve2) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            h41 h41Var = this.b;
            h41Var.getClass();
            ArrayList<View> arrayList = new ArrayList();
            int childCount = h41Var.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = h41Var.getChildAt(i2);
                if (!Intrinsics.areEqual(childAt, h41Var.a)) {
                    Intrinsics.checkNotNull(childAt);
                    arrayList.add(childAt);
                }
            }
            ze2 ze2Var = this.c;
            aq1 javaScriptSessionService = this.d;
            for (View friendlyObstructionView : arrayList) {
                kd2 kd2Var = ze2Var.c;
                tx0 purpose = tx0.OTHER;
                kd2Var.getClass();
                Intrinsics.checkNotNullParameter(javaScriptSessionService, "javaScriptSessionService");
                Intrinsics.checkNotNullParameter(friendlyObstructionView, "friendlyObstructionView");
                Intrinsics.checkNotNullParameter(purpose, "purpose");
            }
            r31 r31Var = this.b.a;
            JsonObject jsonObject = new JsonObject();
            this.a = 1;
            if (r31Var.a(jsonObject, "onSdkLoaded", this) == coroutine_suspended) {
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
