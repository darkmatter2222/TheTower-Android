package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.AdSize;
import p005kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: com.ironsource.i3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3636i3 implements InterfaceC3941yg {
    private final Hb a;
    private final AdSize b;

    public C3636i3(Hb hb, AdSize adSize) {
        this.a = hb;
        this.b = adSize;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError b() {
        return C3948z5.a.a("Load task config is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IronSourceError c() {
        return C3948z5.a.l();
    }

    @Override // com.ironsource.InterfaceC3941yg
    public void a() {
        a(this.a != null, new Function0() { // from class: com.ironsource.i3$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3636i3.b();
            }
        });
        a(this.b != null, new Function0() { // from class: com.ironsource.i3$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C3636i3.c();
            }
        });
    }
}
