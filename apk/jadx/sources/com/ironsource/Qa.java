package com.ironsource;

import com.unity3d.mediation.LevelPlayAdInfo;
import p005kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes4.dex */
public final class Qa {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String b(InterfaceC3791qb<LevelPlayAdInfo> interfaceC3791qb) {
        if (interfaceC3791qb instanceof InterfaceC3791qb.b) {
            return "success";
        }
        if (interfaceC3791qb instanceof InterfaceC3791qb.a) {
            return "failure";
        }
        throw new NoWhenBranchMatchedException();
    }
}
