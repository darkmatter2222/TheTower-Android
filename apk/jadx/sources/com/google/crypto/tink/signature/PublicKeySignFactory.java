package com.google.crypto.tink.signature;

import com.google.crypto.tink.KeysetHandle;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.RegistryConfiguration;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
@Deprecated
public final class PublicKeySignFactory {
    private PublicKeySignFactory() {
    }

    @Deprecated
    public static PublicKeySign getPrimitive(KeysetHandle keysetHandle) throws GeneralSecurityException {
        PublicKeySignWrapper.register();
        return (PublicKeySign) keysetHandle.getPrimitive(RegistryConfiguration.get(), PublicKeySign.class);
    }
}
