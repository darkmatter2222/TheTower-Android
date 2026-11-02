package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import p005kotlin.Lazy;
import p005kotlin.LazyKt;
import p005kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: com.ironsource.sg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3831sg implements InterfaceC3796qg {
    public static final C3831sg a = new C3831sg();
    private static final Lazy b = LazyKt.lazy(new Function0() { // from class: com.ironsource.sg$$ExternalSyntheticLambda0
        @Override // p005kotlin.jvm.functions.Function0
        public final Object invoke() {
            return C3831sg.b();
        }
    });

    private C3831sg() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String b() {
        try {
            Object objInvoke = Class.forName(C3813rg.a).getMethod(C3813rg.b, null).invoke(null, null);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable th) {
            C3801r4.d().a(th);
            IronLog.INTERNAL.warning(th.getMessage());
            return null;
        }
    }

    @Override // com.ironsource.InterfaceC3796qg
    public String a() {
        return (String) b.getValue();
    }
}
