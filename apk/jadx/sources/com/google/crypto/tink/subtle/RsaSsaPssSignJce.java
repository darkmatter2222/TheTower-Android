package com.google.crypto.tink.subtle;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.signature.RsaSsaPssParameters;
import com.google.crypto.tink.signature.RsaSsaPssPrivateKey;
import com.google.crypto.tink.signature.RsaSsaPssPublicKey;
import com.google.crypto.tink.signature.internal.RsaSsaPssSignConscrypt;
import com.google.crypto.tink.util.SecretBigInteger;
import com.google.errorprone.annotations.Immutable;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class RsaSsaPssSignJce implements PublicKeySign {
    private final PublicKeySign sign;
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    private static final byte[] EMPTY = new byte[0];
    private static final byte[] legacyMessageSuffix = {0};

    /* JADX INFO: renamed from: com.google.crypto.tink.subtle.RsaSsaPssSignJce$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$crypto$tink$subtle$Enums$HashType;

        static {
            int[] iArr = new int[Enums.HashType.values().length];
            $SwitchMap$com$google$crypto$tink$subtle$Enums$HashType = iArr;
            try {
                iArr[Enums.HashType.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$subtle$Enums$HashType[Enums.HashType.SHA384.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$crypto$tink$subtle$Enums$HashType[Enums.HashType.SHA512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static final class InternalImpl implements PublicKeySign {
        private static final String RAW_RSA_ALGORITHM = "RSA/ECB/NOPADDING";
        private final byte[] messageSuffix;
        private final Enums.HashType mgf1Hash;
        private final byte[] outputPrefix;
        private final RSAPrivateCrtKey privateKey;
        private final RSAPublicKey publicKey;
        private final int saltLength;
        private final Enums.HashType sigHash;

        private InternalImpl(RSAPrivateCrtKey rSAPrivateCrtKey, Enums.HashType hashType, Enums.HashType hashType2, int i, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            if (TinkFipsUtil.useOnlyFips()) {
                throw new GeneralSecurityException("Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available.");
            }
            Validators.validateSignatureHash(hashType);
            if (!hashType.equals(hashType2)) {
                throw new GeneralSecurityException("sigHash and mgf1Hash must be the same");
            }
            Validators.validateRsaModulusSize(rSAPrivateCrtKey.getModulus().bitLength());
            Validators.validateRsaPublicExponent(rSAPrivateCrtKey.getPublicExponent());
            this.privateKey = rSAPrivateCrtKey;
            this.publicKey = (RSAPublicKey) EngineFactory.KEY_FACTORY.getInstance("RSA").generatePublic(new RSAPublicKeySpec(rSAPrivateCrtKey.getModulus(), rSAPrivateCrtKey.getPublicExponent()));
            this.sigHash = hashType;
            this.mgf1Hash = hashType2;
            this.saltLength = i;
            this.outputPrefix = bArr;
            this.messageSuffix = bArr2;
        }

        /* synthetic */ InternalImpl(RSAPrivateCrtKey rSAPrivateCrtKey, Enums.HashType hashType, Enums.HashType hashType2, int i, byte[] bArr, byte[] bArr2, AnonymousClass1 anonymousClass1) throws GeneralSecurityException {
            this(rSAPrivateCrtKey, hashType, hashType2, i, bArr, bArr2);
        }

        private byte[] emsaPssEncode(byte[] bArr, int i) throws GeneralSecurityException {
            Validators.validateSignatureHash(this.sigHash);
            MessageDigest engineFactory = EngineFactory.MESSAGE_DIGEST.getInstance(SubtleUtil.toDigestAlgo(this.sigHash));
            engineFactory.update(bArr);
            byte[] bArr2 = this.messageSuffix;
            if (bArr2.length != 0) {
                engineFactory.update(bArr2);
            }
            byte[] bArrDigest = engineFactory.digest();
            int digestLength = engineFactory.getDigestLength();
            int i2 = 1;
            int i3 = ((i - 1) / 8) + 1;
            int i4 = this.saltLength;
            if (i3 < digestLength + i4 + 2) {
                throw new GeneralSecurityException("encoding error");
            }
            byte[] bArrRandBytes = Random.randBytes(i4);
            int i5 = digestLength + 8;
            byte[] bArr3 = new byte[this.saltLength + i5];
            System.arraycopy(bArrDigest, 0, bArr3, 8, digestLength);
            System.arraycopy(bArrRandBytes, 0, bArr3, i5, bArrRandBytes.length);
            byte[] bArrDigest2 = engineFactory.digest(bArr3);
            int i6 = (i3 - digestLength) - 1;
            byte[] bArr4 = new byte[i6];
            int i7 = this.saltLength;
            bArr4[((i3 - i7) - digestLength) - 2] = 1;
            System.arraycopy(bArrRandBytes, 0, bArr4, ((i3 - i7) - digestLength) - 1, bArrRandBytes.length);
            byte[] bArrMgf1 = SubtleUtil.mgf1(bArrDigest2, i6, this.mgf1Hash);
            byte[] bArr5 = new byte[i6];
            for (int i8 = 0; i8 < i6; i8++) {
                bArr5[i8] = (byte) (bArr4[i8] ^ bArrMgf1[i8]);
            }
            int i9 = 0;
            while (true) {
                int i10 = i2;
                if (i9 >= (((long) i3) * 8) - ((long) i)) {
                    int i11 = digestLength + i6;
                    byte[] bArr6 = new byte[i11 + 1];
                    System.arraycopy(bArr5, 0, bArr6, 0, i6);
                    System.arraycopy(bArrDigest2, 0, bArr6, i6, bArrDigest2.length);
                    bArr6[i11] = -68;
                    return bArr6;
                }
                int i12 = i9 / 8;
                bArr5[i12] = (byte) ((~(i10 << (7 - (i9 % 8)))) & bArr5[i12]);
                i9++;
                i2 = i10;
            }
        }

        private byte[] noPrefixSign(byte[] bArr) throws GeneralSecurityException {
            return rsasp1(emsaPssEncode(bArr, this.publicKey.getModulus().bitLength() - 1));
        }

        private byte[] rsasp1(byte[] bArr) throws GeneralSecurityException {
            Cipher engineFactory = EngineFactory.CIPHER.getInstance(RAW_RSA_ALGORITHM);
            engineFactory.init(2, this.privateKey);
            byte[] bArrDoFinal = engineFactory.doFinal(bArr);
            Cipher engineFactory2 = EngineFactory.CIPHER.getInstance(RAW_RSA_ALGORITHM);
            engineFactory2.init(1, this.publicKey);
            if (new BigInteger(1, bArr).equals(new BigInteger(1, engineFactory2.doFinal(bArrDoFinal)))) {
                return bArrDoFinal;
            }
            throw new IllegalStateException("Security bug: RSA signature computation error");
        }

        @Override // com.google.crypto.tink.PublicKeySign
        public byte[] sign(byte[] bArr) throws GeneralSecurityException {
            byte[] bArrNoPrefixSign = noPrefixSign(bArr);
            byte[] bArr2 = this.outputPrefix;
            return bArr2.length == 0 ? bArrNoPrefixSign : Bytes.concat(bArr2, bArrNoPrefixSign);
        }
    }

    public RsaSsaPssSignJce(RSAPrivateCrtKey rSAPrivateCrtKey, Enums.HashType hashType, Enums.HashType hashType2, int i) throws GeneralSecurityException {
        this.sign = create(convertKey(rSAPrivateCrtKey, hashType, hashType2, i));
    }

    private RsaSsaPssPrivateKey convertKey(RSAPrivateCrtKey rSAPrivateCrtKey, Enums.HashType hashType, Enums.HashType hashType2, int i) throws GeneralSecurityException {
        return RsaSsaPssPrivateKey.builder().setPublicKey(RsaSsaPssPublicKey.builder().setParameters(RsaSsaPssParameters.builder().setModulusSizeBits(rSAPrivateCrtKey.getModulus().bitLength()).setPublicExponent(rSAPrivateCrtKey.getPublicExponent()).setSigHashType(getHashType(hashType)).setMgf1HashType(getHashType(hashType2)).setSaltLengthBytes(i).setVariant(RsaSsaPssParameters.Variant.NO_PREFIX).build()).setModulus(rSAPrivateCrtKey.getModulus()).build()).setPrimes(SecretBigInteger.fromBigInteger(rSAPrivateCrtKey.getPrimeP(), InsecureSecretKeyAccess.get()), SecretBigInteger.fromBigInteger(rSAPrivateCrtKey.getPrimeQ(), InsecureSecretKeyAccess.get())).setPrivateExponent(SecretBigInteger.fromBigInteger(rSAPrivateCrtKey.getPrivateExponent(), InsecureSecretKeyAccess.get())).setPrimeExponents(SecretBigInteger.fromBigInteger(rSAPrivateCrtKey.getPrimeExponentP(), InsecureSecretKeyAccess.get()), SecretBigInteger.fromBigInteger(rSAPrivateCrtKey.getPrimeExponentQ(), InsecureSecretKeyAccess.get())).setCrtCoefficient(SecretBigInteger.fromBigInteger(rSAPrivateCrtKey.getCrtCoefficient(), InsecureSecretKeyAccess.get())).build();
    }

    public static PublicKeySign create(RsaSsaPssPrivateKey rsaSsaPssPrivateKey) throws GeneralSecurityException {
        try {
            return RsaSsaPssSignConscrypt.create(rsaSsaPssPrivateKey);
        } catch (NoSuchProviderException unused) {
            RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) EngineFactory.KEY_FACTORY.getInstance("RSA").generatePrivate(new RSAPrivateCrtKeySpec(rsaSsaPssPrivateKey.getPublicKey().getModulus(), rsaSsaPssPrivateKey.getParameters().getPublicExponent(), rsaSsaPssPrivateKey.getPrivateExponent().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPssPrivateKey.getPrimeP().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPssPrivateKey.getPrimeQ().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPssPrivateKey.getPrimeExponentP().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPssPrivateKey.getPrimeExponentQ().getBigInteger(InsecureSecretKeyAccess.get()), rsaSsaPssPrivateKey.getCrtCoefficient().getBigInteger(InsecureSecretKeyAccess.get())));
            RsaSsaPssParameters parameters = rsaSsaPssPrivateKey.getParameters();
            return new InternalImpl(rSAPrivateCrtKey, (Enums.HashType) RsaSsaPssVerifyJce.HASH_TYPE_CONVERTER.toProtoEnum(parameters.getSigHashType()), (Enums.HashType) RsaSsaPssVerifyJce.HASH_TYPE_CONVERTER.toProtoEnum(parameters.getMgf1HashType()), parameters.getSaltLengthBytes(), rsaSsaPssPrivateKey.getOutputPrefix().toByteArray(), rsaSsaPssPrivateKey.getParameters().getVariant().equals(RsaSsaPssParameters.Variant.LEGACY) ? legacyMessageSuffix : EMPTY, null);
        }
    }

    private static RsaSsaPssParameters.HashType getHashType(Enums.HashType hashType) throws GeneralSecurityException {
        int i = AnonymousClass1.$SwitchMap$com$google$crypto$tink$subtle$Enums$HashType[hashType.ordinal()];
        if (i == 1) {
            return RsaSsaPssParameters.HashType.SHA256;
        }
        if (i == 2) {
            return RsaSsaPssParameters.HashType.SHA384;
        }
        if (i == 3) {
            return RsaSsaPssParameters.HashType.SHA512;
        }
        throw new GeneralSecurityException("Unsupported hash: " + hashType);
    }

    @Override // com.google.crypto.tink.PublicKeySign
    public byte[] sign(byte[] bArr) throws GeneralSecurityException {
        return this.sign.sign(bArr);
    }
}
