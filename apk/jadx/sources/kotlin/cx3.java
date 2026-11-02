package kotlin;

import android.webkit.WebSettings;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cx3 extends SuspendLambda implements Function1 {
    public final /* synthetic */ dx3 a;
    public final /* synthetic */ CoroutineScope b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cx3(dx3 dx3Var, CoroutineScope coroutineScope, Continuation continuation) {
        super(1, continuation);
        this.a = dx3Var;
        this.b = coroutineScope;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new cx3(this.a, this.b, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new cx3(this.a, this.b, (Continuation) obj).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        p005kotlin.ResultKt.throwOnFailure(obj);
        try {
            g83 g83Var = this.a.f;
            if (g83Var == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rootTraceCreator");
                g83Var = null;
            }
            s11 s11Var = s11.CUI_NAME_WEBVIEW_USER_AGENT;
            dx3 dx3Var = this.a;
            List listEmptyList = CollectionsKt.emptyList();
            ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
            if (hs3.b().a == null) {
                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    Object defaultUserAgent = WebSettings.getDefaultUserAgent(dx3Var.a);
                    if (defaultUserAgent instanceof i01) {
                        xs3.a((i01) defaultUserAgent, false);
                    }
                    CloseableKt.closeFinally(tu2VarA, null);
                    str = defaultUserAgent;
                } catch (Throwable th) {
                    try {
                        tu2VarA.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            tu2VarA.a(th);
                        }
                        if (th instanceof TimeoutCancellationException) {
                            throw new i21(th);
                        }
                        if (th instanceof CancellationException) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.closeFinally(tu2VarA, th2);
                            throw th3;
                        }
                    }
                }
            } else {
                rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    Object defaultUserAgent2 = WebSettings.getDefaultUserAgent(dx3Var.a);
                    if (defaultUserAgent2 instanceof i01) {
                        xs3.a((i01) defaultUserAgent2, false);
                    }
                    CloseableKt.closeFinally(rr3VarA, null);
                    str = defaultUserAgent2;
                } catch (Throwable th4) {
                    try {
                        rr3VarA.b(th4);
                        if (th4 instanceof v24) {
                            throw th4;
                        }
                        if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                            rr3VarA.a(th4);
                        }
                        if (th4 instanceof TimeoutCancellationException) {
                            throw new i21(th4);
                        }
                        if (th4 instanceof CancellationException) {
                            throw new wz0(th4);
                        }
                        if (th4 instanceof w01) {
                            throw th4;
                        }
                        throw new b01(th4);
                    } catch (Throwable th5) {
                        try {
                            throw th5;
                        } catch (Throwable th6) {
                            CloseableKt.closeFinally(rr3VarA, th5);
                            throw th6;
                        }
                    }
                }
            }
            this.a.i.complete();
            CoroutineScope coroutineScope = this.b;
            bx3 block = new bx3(this.a, str, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return str;
        } catch (Throwable th7) {
            this.a.i.complete();
            throw th7;
        }
    }
}
