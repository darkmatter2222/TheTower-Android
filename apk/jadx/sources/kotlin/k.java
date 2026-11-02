package kotlin;

import com.google.gson.JsonObject;
import java.util.Iterator;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public final Map a;

    public k(Map actionHandlers) {
        Intrinsics.checkNotNullParameter(actionHandlers, "actionHandlers");
        this.a = actionHandlers;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ac3 ac3Var, Continuation continuation) {
        j jVar;
        Iterator it;
        k kVar;
        m mVar;
        if (continuation instanceof j) {
            jVar = (j) continuation;
            int i = jVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                jVar.e = i - Integer.MIN_VALUE;
            } else {
                jVar = new j(this, continuation);
            }
        } else {
            jVar = new j(this, continuation);
        }
        Object obj = jVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = jVar.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            it = ac3Var.c.iterator();
            kVar = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = jVar.b;
            kVar = jVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            yb3 yb3Var = (yb3) it.next();
            JsonObject jsonObject = yb3Var.b;
            if (jsonObject != null && (mVar = (m) kVar.a.get(yb3Var.a)) != null) {
                jVar.a = kVar;
                jVar.b = it;
                jVar.e = 1;
                if (mVar.a(jsonObject, jVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
