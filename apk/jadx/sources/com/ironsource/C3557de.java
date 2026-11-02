package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import p005kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: com.ironsource.de, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3557de implements InterfaceC3941yg {
    private final Hb a;

    public C3557de(Hb hb) {
        this.a = hb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError b() {
        return C3948z5.a.d("Load task config is null");
    }

    @Override // com.ironsource.InterfaceC3941yg
    public void a() {
        a(this.a != null, new Function0() { // from class: com.ironsource.de$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3557de.b();
            }
        });
    }
}
