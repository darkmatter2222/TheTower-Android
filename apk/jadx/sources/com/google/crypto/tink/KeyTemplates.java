package com.google.crypto.tink;

import com.google.crypto.tink.internal.MutableParametersRegistry;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class KeyTemplates {
    private KeyTemplates() {
    }

    public static KeyTemplate get(String str) throws GeneralSecurityException {
        return KeyTemplate.createFrom(MutableParametersRegistry.globalInstance().get(str));
    }
}
