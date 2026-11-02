package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Ge implements Kc {
    public static final Ge a = new Ge();
    private static final Ke b = new Je(null, 1, null);

    public static final class a implements InterfaceC3921xe {
        final /* synthetic */ InterfaceC3921xe a;

        a(InterfaceC3921xe interfaceC3921xe) {
            this.a = interfaceC3921xe;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(C3794qe c3794qe, InterfaceC3921xe interfaceC3921xe) {
            Ge.a.a(c3794qe, interfaceC3921xe);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void a(InterfaceC3921xe interfaceC3921xe, C3829se c3829se) {
            interfaceC3921xe.a(c3829se);
        }

        @Override // com.ironsource.InterfaceC3921xe
        public void a(final C3794qe sdkConfig) {
            Intrinsics.checkNotNullParameter(sdkConfig, "sdkConfig");
            Ke ke = Ge.b;
            final InterfaceC3921xe interfaceC3921xe = this.a;
            ke.c(new Runnable() { // from class: com.ironsource.Ge$a$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Ge.a.a(sdkConfig, interfaceC3921xe);
                }
            });
        }

        @Override // com.ironsource.InterfaceC3921xe
        public void a(final C3829se error) {
            Intrinsics.checkNotNullParameter(error, "error");
            Ke ke = Ge.b;
            final InterfaceC3921xe interfaceC3921xe = this.a;
            ke.b(new Runnable() { // from class: com.ironsource.Ge$a$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Ge.a.a(interfaceC3921xe, error);
                }
            });
        }
    }

    private Ge() {
    }

    private final void a(Context context, C3957ze c3957ze, final InterfaceC3921xe interfaceC3921xe, boolean z) throws Throwable {
        String strF = c3957ze.f();
        if (strF == null || strF.length() <= 0) {
            c3957ze = new C3957ze(c3957ze.d(), com.ironsource.mediationsdk.p.g().i(), CollectionsKt.toMutableList((Collection) c3957ze.e()));
        } else {
            com.ironsource.mediationsdk.p.g().j(c3957ze.f());
        }
        com.ironsource.mediationsdk.p pVarG = com.ironsource.mediationsdk.p.g();
        String strD = c3957ze.d();
        IronSource.a[] aVarArr = (IronSource.a[]) c3957ze.e().toArray(new IronSource.a[0]);
        final IronSourceError ironSourceErrorA = pVarG.a(context, strD, z, this, (IronSource.a[]) Arrays.copyOf(aVarArr, aVarArr.length));
        if (ironSourceErrorA == null || ironSourceErrorA.getErrorCode() == 2020) {
            Fe.m.a().a(context, c3957ze, new a(interfaceC3921xe), !z);
            return;
        }
        if (ironSourceErrorA.getErrorCode() == 2040) {
            final Ue ueD = com.ironsource.mediationsdk.p.g().d();
            if (ueD != null) {
                b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        Ge.a(ueD, interfaceC3921xe);
                    }
                });
                return;
            }
        } else if (ironSourceErrorA.getErrorCode() == 2030) {
            Fe.m.a().g();
            return;
        }
        b.b(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Ge.a(interfaceC3921xe, ironSourceErrorA);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Ue ue, InterfaceC3921xe interfaceC3921xe) {
        a.a(new C3794qe(new Ae(ue)), interfaceC3921xe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(IronSourceError ironSourceError) {
        Fe.m.a().b(new C3829se(ironSourceError));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(final C3794qe c3794qe, final InterfaceC3921xe interfaceC3921xe) {
        if (com.ironsource.mediationsdk.p.g().a(Fe.m.a().e(), c3794qe.d())) {
            b.b(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    Ge.a(interfaceC3921xe, c3794qe);
                }
            });
        } else {
            b.b(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    Ge.a(interfaceC3921xe);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InterfaceC3921xe interfaceC3921xe) {
        interfaceC3921xe.a(new C3829se(IronSourceError.ERROR_LEGACY_INIT_POST_FAILED, "An unknown error has occurred"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InterfaceC3921xe interfaceC3921xe, IronSourceError ironSourceError) {
        interfaceC3921xe.a(new C3829se(ironSourceError));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InterfaceC3921xe interfaceC3921xe, C3794qe c3794qe) {
        interfaceC3921xe.a(c3794qe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Context context, C3957ze c3957ze, InterfaceC3921xe interfaceC3921xe) throws Throwable {
        new C3516ba().a(EnumC3939ye.LEVEL_PLAY_INIT);
        a.a(context, c3957ze, interfaceC3921xe, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Ue ue) {
        Fe.m.a().a(new Ae(ue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(Context context, C3957ze c3957ze, InterfaceC3921xe interfaceC3921xe) throws Throwable {
        com.ironsource.mediationsdk.p pVarG = com.ironsource.mediationsdk.p.g();
        String strD = c3957ze.d();
        IronSource.a[] aVarArr = (IronSource.a[]) c3957ze.e().toArray(new IronSource.a[0]);
        List<IronSource.a> listA = pVarG.a(context, strD, false, (IronSource.a[]) Arrays.copyOf(aVarArr, aVarArr.length));
        Intrinsics.checkNotNull(listA);
        c3957ze.a(listA);
        new C3516ba().a(EnumC3939ye.EXTERNAL_MEDIATION_INIT);
        a.a(context, c3957ze, interfaceC3921xe, true);
    }

    public final void a(final Context context, final C3957ze initRequest, final InterfaceC3921xe listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                Ge.b(context, initRequest, listener);
            }
        });
    }

    @Override // com.ironsource.Kc
    public void a(final Ue serverResponse) {
        Intrinsics.checkNotNullParameter(serverResponse, "serverResponse");
        b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                Ge.b(serverResponse);
            }
        });
    }

    public final void c(final Context context, final C3957ze initRequest, final InterfaceC3921xe listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                Ge.d(context, initRequest, listener);
            }
        });
    }

    @Override // com.ironsource.Kc
    public void onInitFailed(final IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        b.c(new Runnable() { // from class: com.ironsource.Ge$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                Ge.a(error);
            }
        });
    }
}
