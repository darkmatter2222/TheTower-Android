package kotlin;

import android.content.Context;
import android.view.View;
import java.util.Optional;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class yx0 extends yy0 {
    public final j53 F;
    public final i2 G;
    public final df2 H;
    public h41 I;
    public final p005kotlin.Lazy J;
    public final boolean K;
    public int L;
    public final boolean M;
    public final boolean N;
    public final yy O;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yx0(Context applicationContext, CoroutineScope uiScope, CoroutineContext uiContext, CoroutineScope backgroundScope, CoroutineContext backgroundContext, ex0 flags, ur3 traceLogger, String afmaVersion, j53 requestType, zy commonConfiguration, i2 adConfiguration, df2 omidMonitor, o21 gmaUtil, lo backButtonStateDelegate, Optional adActivityLifecycleEventEmitter) {
        super(applicationContext, uiScope, uiContext, backgroundScope, backgroundContext, flags, traceLogger, afmaVersion, gmaUtil, backButtonStateDelegate, adActivityLifecycleEventEmitter);
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(backgroundContext, "backgroundContext");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(omidMonitor, "omidMonitor");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(backButtonStateDelegate, "backButtonStateDelegate");
        Intrinsics.checkNotNullParameter(adActivityLifecycleEventEmitter, "adActivityLifecycleEventEmitter");
        this.F = requestType;
        this.G = adConfiguration;
        this.H = omidMonitor;
        this.J = p005kotlin.LazyKt.lazy(new vx0(this));
        this.K = adConfiguration.F;
        this.L = adConfiguration.L;
        this.M = adConfiguration.O;
        this.N = adConfiguration.M;
        this.O = commonConfiguration.v;
    }

    @Override // kotlin.yy0
    public Object a(View view, Continuation continuation) {
        CoroutineScope coroutineScope = this.d;
        xx0 block = new xx0(this, view, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.ay0
    public final Object a(boolean z, hl0 hl0Var) throws Throwable {
        Object objA = a(z, (Continuation) hl0Var);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.yy0
    public final void a(int i) {
        this.L = i;
    }

    @Override // kotlin.yy0
    public final void a(dy closeButton) {
        Intrinsics.checkNotNullParameter(closeButton, "closeButton");
        CoroutineScope coroutineScope = this.d;
        wx0 block = new wx0(this, closeButton, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public final void a(h41 h41Var) {
        Intrinsics.checkNotNullParameter(h41Var, "<set-?>");
        this.I = h41Var;
    }

    @Override // kotlin.yy0
    public final boolean f() {
        return this.N;
    }

    @Override // kotlin.yy0
    public final boolean h() {
        return this.M;
    }

    @Override // kotlin.yy0
    public final boolean i() {
        return this.K;
    }

    @Override // kotlin.yy0
    public final r31 j() {
        return (r31) this.J.getValue();
    }

    @Override // kotlin.yy0
    public final yy k() {
        return this.O;
    }

    @Override // kotlin.yy0
    public final int l() {
        return this.L;
    }
}
