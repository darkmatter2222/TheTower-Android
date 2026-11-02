package com.google.crypto.tink.prf;

import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class HmacPrfParameters extends PrfParameters {
    private static final int MIN_KEY_SIZE = 16;
    private final HashType hashType;
    private final int keySizeBytes;

    public static final class Builder {

        @Nullable
        private HashType hashType;

        @Nullable
        private Integer keySizeBytes;

        private Builder() {
            this.keySizeBytes = null;
            this.hashType = null;
        }

        public HmacPrfParameters build() throws GeneralSecurityException {
            if (this.keySizeBytes == null) {
                throw new GeneralSecurityException("key size is not set");
            }
            if (this.hashType != null) {
                return new HmacPrfParameters(this.keySizeBytes.intValue(), this.hashType);
            }
            throw new GeneralSecurityException("hash type is not set");
        }

        public Builder setHashType(HashType hashType) {
            this.hashType = hashType;
            return this;
        }

        public Builder setKeySizeBytes(int i) throws GeneralSecurityException {
            if (i < 16) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit or larger are supported", Integer.valueOf(i * 8)));
            }
            this.keySizeBytes = Integer.valueOf(i);
            return this;
        }
    }

    @Immutable
    public static final class HashType {
        public static final HashType SHA1 = new HashType("SHA1");
        public static final HashType SHA224 = new HashType("SHA224");
        public static final HashType SHA256 = new HashType("SHA256");
        public static final HashType SHA384 = new HashType("SHA384");
        public static final HashType SHA512 = new HashType("SHA512");
        private final String name;

        private HashType(String str) {
            this.name = str;
        }

        public String toString() {
            return this.name;
        }
    }

    private HmacPrfParameters(int i, HashType hashType) {
        this.keySizeBytes = i;
        this.hashType = hashType;
    }

    public static Builder builder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof HmacPrfParameters)) {
            return false;
        }
        HmacPrfParameters hmacPrfParameters = (HmacPrfParameters) obj;
        return hmacPrfParameters.getKeySizeBytes() == getKeySizeBytes() && hmacPrfParameters.getHashType() == getHashType();
    }

    public HashType getHashType() {
        return this.hashType;
    }

    public int getKeySizeBytes() {
        return this.keySizeBytes;
    }

    @Override // com.google.crypto.tink.Parameters
    public boolean hasIdRequirement() {
        return false;
    }

    public int hashCode() {
        return Objects.hash(HmacPrfParameters.class, Integer.valueOf(this.keySizeBytes), this.hashType);
    }

    public String toString() {
        return "HMAC PRF Parameters (hashType: " + this.hashType + " and " + this.keySizeBytes + "-byte key)";
    }
}
