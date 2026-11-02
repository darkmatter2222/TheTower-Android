package kotlin;

import android.graphics.Rect;
import java.util.Optional;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class tz1 implements b24 {
    public final ix1 a;
    public final Optional b;
    public final CoroutineScope c;
    public final Mutex d;
    public Rect e;

    public tz1(ix1 mraidAfmaDispatcher, Optional optionalWebView, CoroutineScope uiScope) {
        Intrinsics.checkNotNullParameter(mraidAfmaDispatcher, "mraidAfmaDispatcher");
        Intrinsics.checkNotNullParameter(optionalWebView, "optionalWebView");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        this.a = mraidAfmaDispatcher;
        this.b = optionalWebView;
        this.c = uiScope;
        this.d = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(tz1 tz1Var, ey3 ey3Var, Continuation continuation) {
        rz1 rz1Var;
        Mutex mutex;
        if (continuation instanceof rz1) {
            rz1Var = (rz1) continuation;
            int i = rz1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                rz1Var.f = i - Integer.MIN_VALUE;
            } else {
                rz1Var = new rz1(tz1Var, continuation);
            }
        } else {
            rz1Var = new rz1(tz1Var, continuation);
        }
        Object obj = rz1Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = rz1Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = tz1Var.d;
            rz1Var.a = tz1Var;
            rz1Var.b = ey3Var;
            rz1Var.c = mutex;
            rz1Var.f = 1;
            if (mutex.lock(null, rz1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = rz1Var.c;
            ey3Var = rz1Var.b;
            tz1 tz1Var2 = rz1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            tz1Var = tz1Var2;
        }
        try {
            r31 r31Var = (r31) OptionalsKt.getOrNull(tz1Var.b);
            if (r31Var != null) {
                Rect rect = ey3Var.d;
                if (!Intrinsics.areEqual(rect, tz1Var.e)) {
                    tz1Var.e = rect;
                    BuildersKt__Builders_commonKt.launch$default(tz1Var.c, null, null, new sz1(tz1Var, r31Var, rect, null), 3, null);
                }
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(tz1 tz1Var, Continuation continuation) {
        qz1 qz1Var;
        Mutex mutex;
        if (continuation instanceof qz1) {
            qz1Var = (qz1) continuation;
            int i = qz1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                qz1Var.e = i - Integer.MIN_VALUE;
            } else {
                qz1Var = new qz1(tz1Var, continuation);
            }
        } else {
            qz1Var = new qz1(tz1Var, continuation);
        }
        Object obj = qz1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = qz1Var.e;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = tz1Var.d;
            qz1Var.a = tz1Var;
            qz1Var.b = mutex;
            qz1Var.e = 1;
            if (mutex.lock(null, qz1Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = qz1Var.b;
            tz1 tz1Var2 = qz1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            tz1Var = tz1Var2;
        }
        try {
            return tz1Var.e;
        } finally {
            mutex.unlock(null);
        }
    }

    @Override // kotlin.b24
    public final Object b(ey3 ey3Var, Continuation continuation) {
        return a(this, ey3Var, continuation);
    }
}
