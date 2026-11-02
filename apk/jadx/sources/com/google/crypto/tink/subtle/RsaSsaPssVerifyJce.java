package com.google.crypto.tink.subtle;

import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.EnumTypeProtoConverter;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.signature.RsaSsaPssParameters;
import com.google.crypto.tink.signature.RsaSsaPssPublicKey;
import com.google.crypto.tink.signature.internal.RsaSsaPssVerifyConscrypt;
import com.google.errorprone.annotations.Immutable;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class RsaSsaPssVerifyJce implements PublicKeyVerify {
    private final PublicKeyVerify verify;
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    static final EnumTypeProtoConverter<Enums.HashType, RsaSsaPssParameters.HashType> HASH_TYPE_CONVERTER = EnumTypeProtoConverter.builder().add(Enums.HashType.SHA256, RsaSsaPssParameters.HashType.SHA256).add(Enums.HashType.SHA384, RsaSsaPssParameters.HashType.SHA384).add(Enums.HashType.SHA512, RsaSsaPssParameters.HashType.SHA512).build();
    private static final byte[] EMPTY = new byte[0];
    private static final byte[] legacyMessageSuffix = {0};

    /* JADX INFO: renamed from: com.google.crypto.tink.subtle.RsaSsaPssVerifyJce$1, reason: invalid class name */
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

    private static final class InternalImpl implements PublicKeyVerify {
        private final byte[] messageSuffix;
        private final Enums.HashType mgf1Hash;
        private final byte[] outputPrefix;
        private final RSAPublicKey publicKey;
        private final int saltLength;
        private final Enums.HashType sigHash;

        private InternalImpl(RSAPublicKey rSAPublicKey, Enums.HashType hashType, Enums.HashType hashType2, int i, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            if (TinkFipsUtil.useOnlyFips()) {
                throw new GeneralSecurityException("Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available.");
            }
            Validators.validateSignatureHash(hashType);
            if (!hashType.equals(hashType2)) {
                throw new GeneralSecurityException("sigHash and mgf1Hash must be the same");
            }
            Validators.validateRsaModulusSize(rSAPublicKey.getModulus().bitLength());
            Validators.validateRsaPublicExponent(rSAPublicKey.getPublicExponent());
            this.publicKey = rSAPublicKey;
            this.sigHash = hashType;
            this.mgf1Hash = hashType2;
            this.saltLength = i;
            this.outputPrefix = bArr;
            this.messageSuffix = bArr2;
        }

        /* synthetic */ InternalImpl(RSAPublicKey rSAPublicKey, Enums.HashType hashType, Enums.HashType hashType2, int i, byte[] bArr, byte[] bArr2, AnonymousClass1 anonymousClass1) throws GeneralSecurityException {
            this(rSAPublicKey, hashType, hashType2, i, bArr, bArr2);
        }

        private void emsaPssVerify(byte[] bArr, byte[] bArr2, int i) throws GeneralSecurityException {
            Validators.validateSignatureHash(this.sigHash);
            MessageDigest engineFactory = EngineFactory.MESSAGE_DIGEST.getInstance(SubtleUtil.toDigestAlgo(this.sigHash));
            engineFactory.update(bArr);
            byte[] bArr3 = this.messageSuffix;
            if (bArr3.length != 0) {
                engineFactory.update(bArr3);
            }
            byte[] bArrDigest = engineFactory.digest();
            int digestLength = engineFactory.getDigestLength();
            int length = bArr2.length;
            if (length < this.saltLength + digestLength + 2) {
                throw new GeneralSecurityException("inconsistent");
            }
            byte b = 1;
            if (bArr2[bArr2.length - 1] != -68) {
                throw new GeneralSecurityException("inconsistent");
            }
            int i2 = length - digestLength;
            int i3 = i2 - 1;
            byte[] bArrCopyOf = Arrays.copyOf(bArr2, i3);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, bArrCopyOf.length, bArrCopyOf.length + digestLength);
            int i4 = 0;
            while (true) {
                int i5 = i4;
                byte b2 = b;
                int i6 = i3;
                long j = (((long) length) * 8) - ((long) i);
                if (i4 < j) {
                    if (((bArrCopyOf[i5 / 8] >> (7 - (i5 % 8))) & 1) != 0) {
                        throw new GeneralSecurityException("inconsistent");
                    }
                    i4 = i5 + 1;
                    b = b2;
                    i3 = i6;
                } else {
                    byte[] bArrMgf1 = SubtleUtil.mgf1(bArrCopyOfRange, i6, this.mgf1Hash);
                    int length2 = bArrMgf1.length;
                    byte[] bArr4 = new byte[length2];
                    for (int i7 = 0; i7 < length2; i7++) {
                        bArr4[i7] = (byte) (bArrMgf1[i7] ^ bArrCopyOf[i7]);
                    }
                    for (int i8 = 0; i8 <= j; i8++) {
                        int i9 = i8 / 8;
                        bArr4[i9] = (byte) ((~(b2 << (7 - (i8 % 8)))) & bArr4[i9]);
                    }
                    int i10 = 0;
                    while (true) {
                        int i11 = this.saltLength;
                        if (i10 >= (i2 - i11) - 2) {
                            if (bArr4[(i2 - i11) - 2] != b2) {
                                throw new GeneralSecurityException("inconsistent");
                            }
                            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr4, length2 - i11, length2);
                            int i12 = digestLength + 8;
                            byte[] bArr5 = new byte[this.saltLength + i12];
                            System.arraycopy(bArrDigest, 0, bArr5, 8, bArrDigest.length);
                            System.arraycopy(bArrCopyOfRange2, 0, bArr5, i12, bArrCopyOfRange2.length);
                            if (!Bytes.equal(engineFactory.digest(bArr5), bArrCopyOfRange)) {
                                throw new GeneralSecurityException("inconsistent");
                            }
                            return;
                        }
                        if (bArr4[i10] != 0) {
                            throw new GeneralSecurityException("inconsistent");
                        }
                        i10++;
                    }
                }
            }
        }

        private void noPrefixVerify(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            BigInteger publicExponent = this.publicKey.getPublicExponent();
            BigInteger modulus = this.publicKey.getModulus();
            int iBitLength = (modulus.bitLength() + 7) / 8;
            int iBitLength2 = (modulus.bitLength() + 6) / 8;
            if (iBitLength != bArr.length) {
                throw new GeneralSecurityException("invalid signature's length");
            }
            BigInteger bigIntegerBytes2Integer = SubtleUtil.bytes2Integer(bArr);
            if (bigIntegerBytes2Integer.compareTo(modulus) >= 0) {
                throw new GeneralSecurityException("signature out of range");
            }
            emsaPssVerify(bArr2, SubtleUtil.integer2Bytes(bigIntegerBytes2Integer.modPow(publicExponent, modulus), iBitLength2), modulus.bitLength() - 1);
        }

        @Override // com.google.crypto.tink.PublicKeyVerify
        public void verify(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            byte[] bArr3 = this.outputPrefix;
            if (bArr3.length == 0) {
                noPrefixVerify(bArr, bArr2);
            } else {
                if (!Util.isPrefix(bArr3, bArr)) {
                    throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
                }
                noPrefixVerify(Arrays.copyOfRange(bArr, this.outputPrefix.length, bArr.length), bArr2);
            }
        }
    }

    public RsaSsaPssVerifyJce(RSAPublicKey rSAPublicKey, Enums.HashType hashType, Enums.HashType hashType2, int i) throws GeneralSecurityException {
        this.verify = create(convertKey(rSAPublicKey, hashType, hashType2, i));
    }

    private RsaSsaPssPublicKey convertKey(RSAPublicKey rSAPublicKey, Enums.HashType hashType, Enums.HashType hashType2, int i) throws GeneralSecurityException {
        return RsaSsaPssPublicKey.builder().setParameters(RsaSsaPssParameters.builder().setModulusSizeBits(rSAPublicKey.getModulus().bitLength()).setPublicExponent(rSAPublicKey.getPublicExponent()).setSigHashType(getHashType(hashType)).setMgf1HashType(getHashType(hashType2)).setSaltLengthBytes(i).setVariant(RsaSsaPssParameters.Variant.NO_PREFIX).build()).setModulus(rSAPublicKey.getModulus()).build();
    }

    public static PublicKeyVerify create(RsaSsaPssPublicKey rsaSsaPssPublicKey) throws GeneralSecurityException {
        try {
            return RsaSsaPssVerifyConscrypt.create(rsaSsaPssPublicKey);
        } catch (NoSuchProviderException unused) {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) EngineFactory.KEY_FACTORY.getInstance("RSA").generatePublic(new RSAPublicKeySpec(rsaSsaPssPublicKey.getModulus(), rsaSsaPssPublicKey.getParameters().getPublicExponent()));
            RsaSsaPssParameters parameters = rsaSsaPssPublicKey.getParameters();
            return new InternalImpl(rSAPublicKey, (Enums.HashType) HASH_TYPE_CONVERTER.toProtoEnum(parameters.getSigHashType()), (Enums.HashType) HASH_TYPE_CONVERTER.toProtoEnum(parameters.getMgf1HashType()), parameters.getSaltLengthBytes(), rsaSsaPssPublicKey.getOutputPrefix().toByteArray(), rsaSsaPssPublicKey.getParameters().getVariant().equals(RsaSsaPssParameters.Variant.LEGACY) ? legacyMessageSuffix : EMPTY, null);
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

    @Override // com.google.crypto.tink.PublicKeyVerify
    public void verify(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        this.verify.verify(bArr, bArr2);
    }
}
