package com.tapjoy.internal;

import com.google.firebase.firestore.util.ExponentialBackoff;

/* JADX INFO: loaded from: classes5.dex */
public final class hp extends hq {
    public hp() {
        this.c = System.currentTimeMillis() + ExponentialBackoff.DEFAULT_BACKOFF_MAX_DELAY_MS;
    }

    @Override // com.tapjoy.internal.hq
    public final void a(hk hkVar, fy fyVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.tapjoy.internal.hq
    public final void b() {
    }

    @Override // com.tapjoy.internal.hq
    public final boolean c() {
        return false;
    }
}
