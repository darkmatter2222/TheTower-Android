package kotlin;

import android.view.View;
import java.lang.ref.WeakReference;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final class av0 extends SuspendLambda implements Function2 {
    public int a;
    public final /* synthetic */ bv0 b;
    public final /* synthetic */ View c;
    public final /* synthetic */ WeakReference d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public av0(bv0 bv0Var, View view, WeakReference weakReference, Continuation continuation) {
        super(2, continuation);
        this.b = bv0Var;
        this.c = view;
        this.d = weakReference;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new av0(this.b, this.c, this.d, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((av0) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        if (r1.a(r5, r3, (java.lang.String) null, r4) == r0) goto L19;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            p005kotlin.ResultKt.throwOnFailure(r5)
            goto L52
        L12:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1a:
            p005kotlin.ResultKt.throwOnFailure(r5)
            goto L30
        L1e:
            p005kotlin.ResultKt.throwOnFailure(r5)
            ads_mobile_sdk.bv0 r5 = r4.b
            ads_mobile_sdk.vf2 r5 = r5.r
            android.view.View r1 = r4.c
            r4.a = r3
            java.lang.Object r5 = r5.a(r1, r4)
            if (r5 != r0) goto L30
            goto L51
        L30:
            java.lang.ref.WeakReference r5 = r4.d
            java.lang.Object r5 = r5.get()
            ads_mobile_sdk.o32 r5 = (kotlin.o32) r5
            if (r5 == 0) goto L52
            ads_mobile_sdk.p32 r5 = (kotlin.p32) r5
            android.widget.FrameLayout r5 = r5.d()
            if (r5 == 0) goto L52
            ads_mobile_sdk.bv0 r1 = r4.b
            ads_mobile_sdk.vf2 r1 = r1.r
            ads_mobile_sdk.tx0 r3 = kotlin.tx0.OTHER
            r4.a = r2
            r2 = 0
            java.lang.Object r5 = r1.a(r5, r3, r2, r4)
            if (r5 != r0) goto L52
        L51:
            return r0
        L52:
            kotlin.Unit r5 = p005kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.av0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
