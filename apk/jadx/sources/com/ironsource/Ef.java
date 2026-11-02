package com.ironsource;

import android.os.Handler;
import android.os.Looper;
import com.ironsource.environment.thread.IronSourceThreadManager;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes4.dex */
public final class Ef implements Ff {
    public static final a d = new a(null);
    private static Hf e = new Q5(IronSourceThreadManager.INSTANCE.getLevelPlayThread());
    private final Hf a;
    private final InterfaceC3595fg b;
    private final InterfaceC3595fg c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Hf a() {
            return Ef.e;
        }

        public final void a(Hf hf) {
            Intrinsics.checkNotNullParameter(hf, "<set-?>");
            Ef.e = hf;
        }
    }

    /* synthetic */ class b extends FunctionReferenceImpl implements Function0<Unit> {
        b(Object obj) {
            super(0, obj, com.ironsource.environment.thread.a.class, "run", "run()V", 0);
        }

        public final void a() {
            ((com.ironsource.environment.thread.a) this.receiver).run();
        }

        @Override // p005kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public Ef() {
        this(null, null, null, 7, null);
    }

    public Ef(Hf engine, InterfaceC3595fg levelPlayDispatcher, InterfaceC3595fg mainDispatcher) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(levelPlayDispatcher, "levelPlayDispatcher");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        this.a = engine;
        this.b = levelPlayDispatcher;
        this.c = mainDispatcher;
    }

    public /* synthetic */ Ef(Hf hf, InterfaceC3595fg interfaceC3595fg, InterfaceC3595fg interfaceC3595fg2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? e : hf, (i & 2) != 0 ? C3613gg.a(IronSourceThreadManager.INSTANCE.getLevelPlayThread()) : interfaceC3595fg, (i & 4) != 0 ? C3613gg.a(new Handler(Looper.getMainLooper())) : interfaceC3595fg2);
    }

    private final Ff.a a(Runnable runnable, long j, final InterfaceC3595fg interfaceC3595fg) {
        final com.ironsource.environment.thread.a aVarA = com.ironsource.environment.thread.a.a.a(runnable);
        return new Ff.a(this.a.a(Duration.m4378getInWholeMillisecondsimpl(j), new Runnable() { // from class: com.ironsource.Ef$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Ef.a(interfaceC3595fg, aVarA);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InterfaceC3595fg interfaceC3595fg, com.ironsource.environment.thread.a aVar) {
        interfaceC3595fg.a(new b(aVar));
    }

    @Override // com.ironsource.Ff
    public Ff.a a(Runnable task, long j) {
        Intrinsics.checkNotNullParameter(task, "task");
        return a(task, j, this.c);
    }

    @Override // com.ironsource.Ff
    public Ff.a b(Runnable task, long j) {
        Intrinsics.checkNotNullParameter(task, "task");
        return a(task, j, this.b);
    }
}
