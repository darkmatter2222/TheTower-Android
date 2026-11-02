package kotlin;

import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public interface a04 extends nr1 {
    r31 a();

    default Object a(Function2 function2, ContinuationImpl continuationImpl) {
        Object objInvoke = function2.invoke(a(), continuationImpl);
        return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : p005kotlin.Unit.INSTANCE;
    }
}
