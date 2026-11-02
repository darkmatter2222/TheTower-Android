package com.ironsource.environment.thread;

import com.ironsource.C3801r4;
import com.ironsource.If;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a implements Runnable {
    public static final C1104a a = new C1104a(null);

    /* JADX INFO: renamed from: com.ironsource.environment.thread.a$a, reason: collision with other inner class name */
    public static final class C1104a {

        /* JADX INFO: renamed from: com.ironsource.environment.thread.a$a$a, reason: collision with other inner class name */
        public static final class C1105a extends a {
            final /* synthetic */ Function0<Unit> b;

            C1105a(Function0<Unit> function0) {
                this.b = function0;
            }

            @Override // com.ironsource.environment.thread.a
            public void a() {
                this.b.invoke();
            }
        }

        /* JADX INFO: renamed from: com.ironsource.environment.thread.a$a$b */
        /* synthetic */ class b extends FunctionReferenceImpl implements Function0<Unit> {
            b(Object obj) {
                super(0, obj, Runnable.class, "run", "run()V", 0);
            }

            public final void a() {
                ((Runnable) this.receiver).run();
            }

            @Override // p005kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.INSTANCE;
            }
        }

        private C1104a() {
        }

        public /* synthetic */ C1104a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Runnable runnable) {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            a aVar = runnable instanceof a ? (a) runnable : null;
            return aVar == null ? a.a.a(new b(runnable)) : aVar;
        }

        public final a a(Function0<Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return new C1105a(block);
        }
    }

    public abstract void a() throws Exception;

    public void a(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        If.a(t);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Throwable th) {
            C3801r4.d().a(th);
            try {
                a(th);
            } catch (Throwable th2) {
                C3801r4.d().a(th2);
            }
        }
    }
}
