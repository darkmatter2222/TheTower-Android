package com.google.crypto.tink.internal;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.Parameters;
import com.google.crypto.tink.SecretKeyAccess;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableKeyDerivationRegistry {
    private static final MutableKeyDerivationRegistry globalInstance = new MutableKeyDerivationRegistry();
    private final Map<Class<? extends Parameters>, InsecureKeyCreator<? extends Parameters>> creators = new HashMap();

    public interface InsecureKeyCreator<ParametersT extends Parameters> {
        Key createKeyFromRandomness(ParametersT parameterst, InputStream inputStream, @Nullable Integer num, SecretKeyAccess secretKeyAccess) throws GeneralSecurityException;
    }

    private synchronized <ParametersT extends Parameters> Key createKeyFromRandomnessTyped(ParametersT parameterst, InputStream inputStream, @Nullable Integer num, SecretKeyAccess secretKeyAccess) throws GeneralSecurityException {
        InsecureKeyCreator<? extends Parameters> insecureKeyCreator;
        insecureKeyCreator = this.creators.get(parameterst.getClass());
        if (insecureKeyCreator == null) {
            throw new GeneralSecurityException("Cannot use key derivation to derive key for parameters " + parameterst + ": no key creator for this class was registered.");
        }
        return insecureKeyCreator.createKeyFromRandomness(parameterst, inputStream, num, secretKeyAccess);
    }

    public static MutableKeyDerivationRegistry globalInstance() {
        return globalInstance;
    }

    public synchronized <ParametersT extends Parameters> void add(InsecureKeyCreator<ParametersT> insecureKeyCreator, Class<ParametersT> cls) throws GeneralSecurityException {
        InsecureKeyCreator<? extends Parameters> insecureKeyCreator2 = this.creators.get(cls);
        if (insecureKeyCreator2 != null && !insecureKeyCreator2.equals(insecureKeyCreator)) {
            throw new GeneralSecurityException("Different key creator for parameters class already inserted");
        }
        this.creators.put(cls, insecureKeyCreator);
    }

    public Key createKeyFromRandomness(Parameters parameters, InputStream inputStream, @Nullable Integer num, SecretKeyAccess secretKeyAccess) throws GeneralSecurityException {
        return createKeyFromRandomnessTyped(parameters, inputStream, num, secretKeyAccess);
    }
}
