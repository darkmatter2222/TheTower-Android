package com.google.crypto.tink.prf;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.util.SecretBytes;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class HmacPrfKey extends PrfKey {
    private final SecretBytes keyBytes;
    private final HmacPrfParameters parameters;

    public static final class Builder {

        @Nullable
        private SecretBytes keyBytes;

        @Nullable
        private HmacPrfParameters parameters;

        private Builder() {
            this.parameters = null;
            this.keyBytes = null;
        }

        public HmacPrfKey build() throws GeneralSecurityException {
            HmacPrfParameters hmacPrfParameters = this.parameters;
            if (hmacPrfParameters == null || this.keyBytes == null) {
                throw new GeneralSecurityException("Cannot build without parameters and/or key material");
            }
            if (hmacPrfParameters.getKeySizeBytes() == this.keyBytes.size()) {
                return new HmacPrfKey(this.parameters, this.keyBytes);
            }
            throw new GeneralSecurityException("Key size mismatch");
        }

        public Builder setKeyBytes(SecretBytes secretBytes) {
            this.keyBytes = secretBytes;
            return this;
        }

        public Builder setParameters(HmacPrfParameters hmacPrfParameters) {
            this.parameters = hmacPrfParameters;
            return this;
        }
    }

    private HmacPrfKey(HmacPrfParameters hmacPrfParameters, SecretBytes secretBytes) {
        this.parameters = hmacPrfParameters;
        this.keyBytes = secretBytes;
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // com.google.crypto.tink.Key
    public boolean equalsKey(Key key) {
        if (!(key instanceof HmacPrfKey)) {
            return false;
        }
        HmacPrfKey hmacPrfKey = (HmacPrfKey) key;
        return hmacPrfKey.parameters.equals(this.parameters) && hmacPrfKey.keyBytes.equalsSecretBytes(this.keyBytes);
    }

    @Override // com.google.crypto.tink.Key
    @Nullable
    public Integer getIdRequirementOrNull() {
        return null;
    }

    public SecretBytes getKeyBytes() {
        return this.keyBytes;
    }

    @Override // com.google.crypto.tink.prf.PrfKey, com.google.crypto.tink.Key
    public HmacPrfParameters getParameters() {
        return this.parameters;
    }
}
