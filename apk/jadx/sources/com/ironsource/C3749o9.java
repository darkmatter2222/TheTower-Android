package com.ironsource;

import android.content.Context;
import com.ironsource.environment.NetworkStateReceiver;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.o9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3749o9 {
    private final Ke a;
    private final Runnable b;
    private final Function1<C3794qe, Unit> c;
    private final Function1<C3829se, Unit> d;
    private final Ff e;
    private final C3767p9 f;
    private final Context g;
    private Ff.a h;
    private NetworkStateReceiver i;
    private boolean j;
    private boolean k;

    /* JADX WARN: Multi-variable type inference failed */
    public C3749o9(Context context, Ke tools, Runnable attempt, Function1<? super C3794qe, Unit> onSucceeded, Function1<? super C3829se, Unit> onExhausted, Ff taskScheduler, C3767p9 policy) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(attempt, "attempt");
        Intrinsics.checkNotNullParameter(onSucceeded, "onSucceeded");
        Intrinsics.checkNotNullParameter(onExhausted, "onExhausted");
        Intrinsics.checkNotNullParameter(taskScheduler, "taskScheduler");
        Intrinsics.checkNotNullParameter(policy, "policy");
        this.a = tools;
        this.b = attempt;
        this.c = onSucceeded;
        this.d = onExhausted;
        this.e = taskScheduler;
        this.f = policy;
        this.g = context.getApplicationContext();
    }

    public /* synthetic */ C3749o9(Context context, Ke ke, Runnable runnable, Function1 function1, Function1 function2, Ff ff, C3767p9 c3767p9, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, ke, runnable, function1, function2, ff, (i & 64) != 0 ? new C3767p9(0, 0, 0, 7, null) : c3767p9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3749o9 c3749o9, boolean z) {
        if (c3749o9.j && z) {
            c3749o9.j = false;
            c3749o9.f();
            c3749o9.f.e();
            c3749o9.a.e();
            c3749o9.b.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final boolean z) {
        this.a.c(new Runnable() { // from class: com.ironsource.o9$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3749o9.a(this.f$0, z);
            }
        });
    }

    private final void c() {
        this.k = true;
        this.j = false;
        Ff.a aVar = this.h;
        if (aVar != null) {
            aVar.a();
        }
        this.h = null;
        f();
    }

    private final void f() {
        NetworkStateReceiver networkStateReceiver = this.i;
        if (networkStateReceiver != null) {
            Ke ke = this.a;
            Context appContext = this.g;
            Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
            ke.a(appContext, networkStateReceiver);
            this.i = null;
        }
    }

    private final void g() {
        this.j = true;
        this.f.a("noInternetConnection");
        Ke ke = this.a;
        Context appContext = this.g;
        Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
        NetworkStateReceiver networkStateReceiverA = ke.a(appContext, new Jc() { // from class: com.ironsource.o9$$ExternalSyntheticLambda0
            @Override // com.ironsource.Jc
            public final void a(boolean z) {
                this.f$0.a(z);
            }
        });
        this.i = networkStateReceiverA;
        if (networkStateReceiverA == null) {
            this.j = false;
            this.b.run();
        }
    }

    public final int a() {
        return this.f.c();
    }

    public final void a(C3794qe sdkConfig) {
        Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
        if (this.k) {
            return;
        }
        c();
        this.c.invoke(sdkConfig);
    }

    public final void a(C3829se error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (this.k) {
            return;
        }
        if (!this.f.a(error)) {
            c();
            this.d.invoke(error);
            return;
        }
        Sd sdB = this.f.b(error);
        if (sdB instanceof Sd.b) {
            this.h = this.e.b(this.b, ((Sd.b) sdB).b());
        } else {
            if (!Intrinsics.areEqual(sdB, Sd.a.a)) {
                throw new NoWhenBranchMatchedException();
            }
            c();
            this.d.invoke(error);
        }
    }

    public final boolean b() {
        return this.f.d();
    }

    public final String d() {
        return this.f.b();
    }

    public final void e() {
        Ke ke = this.a;
        Context appContext = this.g;
        Intrinsics.checkNotNullExpressionValue(appContext, "appContext");
        if (ke.b(appContext)) {
            this.b.run();
        } else {
            g();
        }
    }
}
