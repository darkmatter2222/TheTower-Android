package com.google.android.gms.internal.p002firebaseauthapi;

import java.security.spec.EncodedKeySpec;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zznk extends EncodedKeySpec {
    zznk(byte[] bArr) {
        super(bArr);
    }

    @Override // java.security.spec.EncodedKeySpec
    public final String getFormat() {
        return "raw";
    }
}
