package com.google.android.play.deku;

import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class m extends b implements o {
    m(IBinder iBinder) {
        super(iBinder, "com.google.android.play.deku.protocol.IDekuBrokerService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcel] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.play.deku.b, com.google.android.play.deku.m] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    @Override // com.google.android.play.deku.o
    public final void c(q qVar, String str, Bundle bundle) {
        ?? A = a();
        int i = d.a;
        ?? r3 = qVar;
        if (qVar == null) {
            r3 = 0;
        }
        A.writeStrongBinder(r3);
        A.writeString(str);
        A.writeInt(18);
        d.c(A, bundle);
        b(1, A);
    }
}
