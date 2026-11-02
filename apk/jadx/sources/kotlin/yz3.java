package kotlin;

import com.ironsource.C3510b4;
import java.util.List;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugProbesKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class yz3 extends nc1 {
    public final dz3 c;
    public final sz d;
    public final ex0 e;
    public final CoroutineScope f;
    public final CoroutineScope g;
    public final g83 h;
    public final cw2 i;
    public final zw3 j;
    public final CompletableJob k;
    public final p005kotlin.Lazy l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yz3(dz3 webViewCompatWrapper, sz concurrencyObjects, ex0 flags, CoroutineScope backgroundScope, CoroutineScope webViewInitializationScope, g83 rootTraceCreator, dw2 webViewProfileInitializer, zw3 userAgentProvider) {
        super((s11) null, 1);
        Intrinsics.checkNotNullParameter(webViewCompatWrapper, "webViewCompatWrapper");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(webViewInitializationScope, "webViewInitializationScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(webViewProfileInitializer, "webViewProfileInitializer");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        this.c = webViewCompatWrapper;
        this.d = concurrencyObjects;
        this.e = flags;
        this.f = backgroundScope;
        this.g = webViewInitializationScope;
        this.h = rootTraceCreator;
        this.i = webViewProfileInitializer;
        this.j = userAgentProvider;
        this.k = JobKt__JobKt.Job$default((Job) null, 1, (Object) null);
        this.l = p005kotlin.LazyKt.lazy(new xz3(this));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(yz3 yz3Var, Continuation continuation) {
        vz3 vz3Var;
        yz3Var.getClass();
        if (continuation instanceof vz3) {
            vz3Var = (vz3) continuation;
            int i = vz3Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                vz3Var.d = i - Integer.MIN_VALUE;
            } else {
                vz3Var = new vz3(yz3Var, continuation);
            }
        } else {
            vz3Var = new vz3(yz3Var, continuation);
        }
        Object result = vz3Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vz3Var.d;
        if (i2 != 0) {
            if (i2 == 1) {
                yz3Var = vz3Var.a;
                p005kotlin.ResultKt.throwOnFailure(result);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(result);
            }
            return p005kotlin.Unit.INSTANCE;
        }
        p005kotlin.ResultKt.throwOnFailure(result);
        vz3Var.a = yz3Var;
        vz3Var.d = 1;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(vz3Var), 1);
        cancellableContinuationImpl.initCancellability();
        try {
            dz3 dz3Var = yz3Var.c;
            ex0 ex0Var = yz3Var.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:webview_initialization_executor:enabled", C3510b4.i.W);
            Boolean bool = Boolean.FALSE;
            ir irVar = yr.b;
            rz rzVar = ((Boolean) ex0Var.a("gads:webview_initialization_executor:enabled", bool, irVar)).booleanValue() ? yz3Var.d.i : yz3Var.d.d;
            ex0 ex0Var2 = yz3Var.e;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:run_ui_thread_webview_startup_tasks", C3510b4.i.W);
            dz3Var.a(rzVar, ((Boolean) ex0Var2.a("gads:run_ui_thread_webview_startup_tasks", Boolean.TRUE, irVar)).booleanValue(), new wz3(cancellableContinuationImpl));
        } catch (Exception e) {
            p005kotlin.Result.Companion companion = p005kotlin.Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(p005kotlin.Result.m3022constructorimpl(new j01(e, null, null, 6)));
        }
        result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(vz3Var);
        }
        if (result == coroutine_suspended) {
            return coroutine_suspended;
        }
        v01 v01Var = (v01) result;
        if (v01Var instanceof q01) {
            j41 j41Var = (j41) ((q01) v01Var).b;
            uj2 uj2VarE = hs3.a().e();
            gz3 builder = hz3.v();
            Intrinsics.checkNotNullExpressionValue(builder, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder, "builder");
            Long totalTimeInUiThreadMillis = j41Var.getTotalTimeInUiThreadMillis();
            if (totalTimeInUiThreadMillis != null) {
                builder.b(totalTimeInUiThreadMillis.longValue());
            }
            Long maxTimePerTaskInUiThreadMillis = j41Var.getMaxTimePerTaskInUiThreadMillis();
            if (maxTimePerTaskInUiThreadMillis != null) {
                builder.a(maxTimePerTaskInUiThreadMillis.longValue());
            }
            List values = j41Var.b();
            if (values != null) {
                List listI = builder.i();
                Intrinsics.checkNotNullExpressionValue(listI, "getUiThreadBlockingStartupLocationsList(...)");
                Intrinsics.checkNotNullParameter(new lo0(listI), "<this>");
                Intrinsics.checkNotNullParameter(values, "values");
                builder.b(values);
            }
            List values2 = j41Var.a();
            if (values2 != null) {
                List listH = builder.h();
                Intrinsics.checkNotNullExpressionValue(listH, "getNonUiThreadBlockingStartupLocationsList(...)");
                Intrinsics.checkNotNullParameter(new lo0(listH), "<this>");
                Intrinsics.checkNotNullParameter(values2, "values");
                builder.a(values2);
            }
            vz0 vz0VarB = builder.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            uj2VarE.G = (hz3) vz0VarB;
            ex0 ex0Var3 = yz3Var.e;
            ex0Var3.getClass();
            Intrinsics.checkNotNullParameter("init_profile_after_webview_startup:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var3.a("init_profile_after_webview_startup:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                p04 p04Var = (p04) yz3Var.i.get();
                vz3Var.a = null;
                vz3Var.d = 2;
                r14 r14Var = (r14) p04Var;
                r14Var.getClass();
                if (r14.d(r14Var, vz3Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else if (v01Var instanceof i01) {
            Throwable exception = ((i01) v01Var).b();
            if (exception == null) {
                exception = new Exception("WebView Startup Failed");
            }
            Intrinsics.checkNotNullParameter(exception, "exception");
            rr3 rr3VarA = hs3.a();
            rr3VarA.e().m = false;
            rr3VarA.a(exception);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final Object a(ContinuationImpl continuationImpl) {
        if (((Boolean) this.l.getValue()).booleanValue()) {
            Object objJoin = this.k.join(continuationImpl);
            return objJoin == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoin : p005kotlin.Unit.INSTANCE;
        }
        Object objB = this.j.b(continuationImpl);
        return objB == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        if (((Boolean) this.l.getValue()).booleanValue()) {
            ex0 ex0Var = this.e;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:webview_initialization_executor:enabled", C3510b4.i.W);
            CoroutineScope coroutineScope = ((Boolean) ex0Var.a("gads:webview_initialization_executor:enabled", Boolean.FALSE, yr.b)).booleanValue() ? this.g : this.f;
            uz3 block = new uz3(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        } else {
            this.k.complete();
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }
}
