package kotlin;

import android.webkit.ConsoleMessage;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s21 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ u21 b;
    public final /* synthetic */ ConsoleMessage c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s21(u21 u21Var, ConsoleMessage consoleMessage, Continuation continuation) {
        super(2, continuation);
        this.b = u21Var;
        this.c = consoleMessage;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new s21(this.b, this.c, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new s21(this.b, this.c, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        cq1 cq1Var;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            vk0 vk0Var = this.b.b;
            if (vk0Var != null) {
                this.a = 1;
                obj = if1.a((if1) vk0Var, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return p005kotlin.Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        if (((Boolean) obj).booleanValue()) {
            ConsoleMessage.MessageLevel messageLevel = this.c.messageLevel();
            int i2 = messageLevel == null ? -1 : r21.a[messageLevel.ordinal()];
            if (i2 == 1) {
                cq1Var = cq1.ERROR;
            } else if (i2 != 2) {
                cq1Var = i2 != 3 ? cq1.INFO : cq1.DEBUG;
            } else {
                cq1Var = cq1.WARNING;
            }
            String strMessage = this.c.message();
            Intrinsics.checkNotNullExpressionValue(strMessage, "message(...)");
            int iLineNumber = this.c.lineNumber();
            String strSourceId = this.c.sourceId();
            Intrinsics.checkNotNullExpressionValue(strSourceId, "sourceId(...)");
            dq1.a(strMessage, iLineNumber, strSourceId, cq1Var);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
