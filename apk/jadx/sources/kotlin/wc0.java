package kotlin;

import android.content.Context;
import androidx.browser.customtabs.CustomTabsClient;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wc0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ zc0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wc0(zc0 zc0Var, Continuation continuation) {
        super(2, continuation);
        this.a = zc0Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new wc0(this.a, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new wc0(this.a, (Continuation) obj2).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String packageName;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        zc0 zc0Var = this.a;
        Context context = zc0Var.a;
        if (zc0Var.f == null && (packageName = CustomTabsClient.getPackageName(context, null)) != null && !Intrinsics.areEqual(packageName, context.getPackageName())) {
            CustomTabsClient.bindCustomTabsService(context, packageName, zc0Var);
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
