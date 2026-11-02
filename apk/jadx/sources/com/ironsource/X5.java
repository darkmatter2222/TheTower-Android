package com.ironsource;

import androidx.lifecycle.ProcessLifecycleOwner;

/* JADX INFO: loaded from: classes4.dex */
public final class X5 implements I7 {
    @Override // com.ironsource.I7
    public boolean a() {
        try {
            ProcessLifecycleOwner.INSTANCE.get();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
