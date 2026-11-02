package kotlin;

import kotlinx.coroutines.sync.Mutex;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendFunction;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g40 extends FunctionReferenceImpl implements Function2, SuspendFunction {
    public static final g40 a = new g40();

    public g40() {
        super(2, i40.class, "lockWithoutOwner", "lockWithoutOwner(Lkotlinx/coroutines/sync/Mutex;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 1);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object objLock = ((Mutex) obj).lock(null, (Continuation) obj2);
        return objLock == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objLock : p005kotlin.Unit.INSTANCE;
    }
}
