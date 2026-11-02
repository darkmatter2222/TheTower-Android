package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import p005kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final class G9 implements InterfaceC3941yg {
    private final Hb a;

    public G9(Hb hb) {
        this.a = hb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError b() {
        return C3948z5.a.b("Load task config is null");
    }

    @Override // com.ironsource.InterfaceC3941yg
    public void a() {
        a(this.a != null, new Function0() { // from class: com.ironsource.G9$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return G9.b();
            }
        });
    }
}
