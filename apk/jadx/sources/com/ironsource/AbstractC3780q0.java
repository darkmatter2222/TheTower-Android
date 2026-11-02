package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.lang.ref.WeakReference;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC3780q0 {
    private final AbstractC3907x0 a;
    private final T0 b;
    private L0 c;
    private InterfaceC3943z0 d;
    private final Hg e;
    private final WeakReference<J0> f;
    private C3691l5 g;
    private final E5 h;

    /* JADX INFO: renamed from: com.ironsource.q0$a */
    protected class a implements E {
        public a() {
        }

        @Override // com.ironsource.E
        public void a(A instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            AbstractC3780q0.this.h.a().a(AbstractC3780q0.this.h());
            J0 j0 = (J0) AbstractC3780q0.this.f.get();
            if (j0 != null) {
                j0.e();
            }
        }

        @Override // com.ironsource.E
        public void a(A instance, IronSourceError error) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            Intrinsics.checkNotNullParameter(error, "error");
            IronLog.INTERNAL.verbose(AbstractC3780q0.this.a(instance.q()));
            AbstractC3780q0.this.h.a().a(AbstractC3780q0.this.h(), error.getErrorCode(), error.getErrorMessage(), null);
            InterfaceC3943z0 interfaceC3943z0I = AbstractC3780q0.this.i();
            if (interfaceC3943z0I != null) {
                interfaceC3943z0I.c(error);
            }
        }

        @Override // com.ironsource.E
        public void b(A instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            IronLog.INTERNAL.verbose(AbstractC3780q0.this.a(instance.q()));
            AbstractC3780q0.this.k().d(instance);
            AbstractC3780q0.this.h.a().g(AbstractC3780q0.this.h());
            AbstractC3780q0.this.f().l().b(AbstractC3780q0.this.e().b().a());
        }
    }

    /* JADX INFO: renamed from: com.ironsource.q0$b */
    public static final class b implements Pg {
        b() {
        }

        @Override // com.ironsource.Pg
        public void a(int i, String errorReason) {
            Intrinsics.checkNotNullParameter(errorReason, "errorReason");
            AbstractC3780q0.this.a(i, errorReason);
        }

        @Override // com.ironsource.Pg
        public void a(A instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            AbstractC3780q0.this.f().f().a().e(AbstractC3780q0.this.h());
            L0 l0J = AbstractC3780q0.this.j();
            if (l0J != null) {
                l0J.b(new C3853u0(AbstractC3780q0.this, instance.e()));
            }
        }

        @Override // com.ironsource.Pg
        public void b(A instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            AbstractC3780q0.this.h.e().a(C3691l5.a(AbstractC3780q0.this.g), AbstractC3780q0.this.e().v());
            L0 l0J = AbstractC3780q0.this.j();
            if (l0J != null) {
                l0J.a(new C3853u0(AbstractC3780q0.this, instance.e()));
            }
        }
    }

    public AbstractC3780q0(C3758p0 adTools, AbstractC3907x0 adUnitData, J0 listener) {
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adUnitData, "adUnitData");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.a = adUnitData;
        T0 t0 = new T0(adTools, adUnitData, E0.b.MEDIATION);
        this.b = t0;
        this.e = new Hg(t0, adUnitData, false, c(), null, null, 48, null);
        this.f = new WeakReference<>(listener);
        this.h = t0.f();
        IronLog.INTERNAL.verbose("adFormat = " + adUnitData.b().a() + ", adUnitId = " + adUnitData.b().c());
    }

    private final b c() {
        return new b();
    }

    protected abstract D a();

    protected final String a(String str) {
        return C3758p0.a(this.b, str, (String) null, 2, (Object) null);
    }

    protected final void a(int i, String errorReason) {
        Intrinsics.checkNotNullParameter(errorReason, "errorReason");
        IronLog.INTERNAL.verbose(a("errorCode = " + i + ", errorReason = " + errorReason));
        this.h.e().a(C3691l5.a(this.g), i, errorReason, this.a.v());
        L0 l0 = this.c;
        if (l0 != null) {
            l0.b(new IronSourceError(i, errorReason));
        }
    }

    public final void a(J adInstancePresenter, InterfaceC3943z0 displayListener) {
        Intrinsics.checkNotNullParameter(adInstancePresenter, "adInstancePresenter");
        Intrinsics.checkNotNullParameter(displayListener, "displayListener");
        this.d = displayListener;
        this.e.a(adInstancePresenter, false);
    }

    public void a(L0 loadListener) {
        Intrinsics.checkNotNullParameter(loadListener, "loadListener");
        IronLog.INTERNAL.verbose(C3758p0.a(this.b, (String) null, (String) null, 3, (Object) null));
        this.b.a(b());
        this.c = loadListener;
        this.h.a(this.a.v());
        this.g = new C3691l5();
        this.e.a(a());
    }

    protected final void a(InterfaceC3943z0 interfaceC3943z0) {
        this.d = interfaceC3943z0;
    }

    public final void a(boolean z) {
        IronLog.INTERNAL.verbose(C3758p0.a(this.b, (String) null, (String) null, 3, (Object) null));
        this.e.c();
        if (z) {
            this.b.f().e().a(this.b.g());
        }
    }

    public C3815s0 b() {
        return new C3815s0(this.a.b());
    }

    protected final void b(L0 l0) {
        this.c = l0;
    }

    public InterfaceC3668k0 d() {
        return this.e.g() ? InterfaceC3668k0.b.a : new InterfaceC3668k0.a(null, 1, null);
    }

    protected final AbstractC3907x0 e() {
        return this.a;
    }

    protected final T0 f() {
        return this.b;
    }

    protected final C3717md g() {
        return this.a.b().f();
    }

    protected final String h() {
        return this.a.m();
    }

    protected final InterfaceC3943z0 i() {
        return this.d;
    }

    protected final L0 j() {
        return this.c;
    }

    protected final Hg k() {
        return this.e;
    }
}
