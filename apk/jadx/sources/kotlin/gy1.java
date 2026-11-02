package kotlin;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
public final class gy1 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ jy1 b;
    public final /* synthetic */ r31 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gy1(jy1 jy1Var, r31 r31Var, Continuation continuation) {
        super(2, continuation);
        this.b = jy1Var;
        this.c = r31Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new gy1(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new gy1(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            jy1 jy1Var = this.b;
            r31 r31Var = this.c;
            this.a = 1;
            jy1Var.getClass();
            int[] iArr = new int[2];
            r31Var.getLocationOnScreen(iArr);
            Activity activityG = jy1Var.b.g();
            int iIntValue = activityG != null ? ((Number) zn0.a(activityG).getFirst()).intValue() : 0;
            int i2 = iArr[0];
            int i3 = iArr[1] - iIntValue;
            Context context = jy1Var.a;
            int width = r31Var.getWidth();
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intrinsics.checkNotNullParameter(context, "<this>");
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
            Integer numBoxInt = Boxing.boxInt(MathKt.roundToInt(width / displayMetrics.density));
            Context context2 = jy1Var.a;
            int height = r31Var.getHeight();
            Intrinsics.checkNotNullParameter(context2, "<this>");
            Intrinsics.checkNotNullParameter(context2, "<this>");
            DisplayMetrics displayMetrics2 = context2.getResources().getDisplayMetrics();
            Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
            p005kotlin.Pair pair = new p005kotlin.Pair(numBoxInt, Boxing.boxInt(MathKt.roundToInt(height / displayMetrics2.density)));
            int iIntValue2 = ((Number) pair.component1()).intValue();
            int iIntValue3 = ((Number) pair.component2()).intValue();
            jy1Var.c.getClass();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("x", Boxing.boxInt(i2));
            jsonObject.addProperty("y", Boxing.boxInt(i3));
            jsonObject.addProperty("width", Boxing.boxInt(iIntValue2));
            jsonObject.addProperty("height", Boxing.boxInt(iIntValue3));
            Object objA = r31Var.a(jsonObject, "onDefaultPositionReceived", this);
            if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objA = p005kotlin.Unit.INSTANCE;
            }
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
