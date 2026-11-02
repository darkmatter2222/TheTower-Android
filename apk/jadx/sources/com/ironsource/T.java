package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class T implements InterfaceC3941yg {
    private final String a;
    private final InterfaceC3880v9 b;
    private final boolean c;

    public T(String adm, InterfaceC3880v9 interfaceC3880v9, boolean z) {
        Intrinsics.checkNotNullParameter(adm, "adm");
        this.a = adm;
        this.b = interfaceC3880v9;
        this.c = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError b() {
        return C3948z5.a.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError c() {
        return C3948z5.a.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError d() {
        return C3948z5.a.n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError e() {
        return C3948z5.a.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError f() {
        return C3948z5.a.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError g() {
        return C3948z5.a.g();
    }

    @Override // com.ironsource.InterfaceC3941yg
    public void a() throws C3885ve {
        a(this.c, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return T.b();
            }
        });
        a(this.b != null, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return T.c();
            }
        });
        InterfaceC3880v9 interfaceC3880v9 = this.b;
        if (interfaceC3880v9 != null) {
            if (interfaceC3880v9.f() == EnumC3916x9.NonBidder) {
                a(this.a.length() == 0, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda2
                    @Override // p005kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return T.d();
                    }
                });
            }
            if (interfaceC3880v9.f() == EnumC3916x9.Bidder) {
                a(this.a.length() > 0, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda3
                    @Override // p005kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return T.e();
                    }
                });
            }
            a(interfaceC3880v9.f() != EnumC3916x9.NotSupported, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda4
                @Override // p005kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return T.f();
                }
            });
            a(interfaceC3880v9.e().length() > 0, new Function0() { // from class: com.ironsource.T$$ExternalSyntheticLambda5
                @Override // p005kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return T.g();
                }
            });
        }
    }
}
