package com.google.crypto.tink.signature.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
final class MlDsaMarshalUtil {
    private MlDsaMarshalUtil() {
    }

    static void bitPack13(MlDsaArithmeticUtil.PolyRq polyRq, byte[] bArr, int i) throws GeneralSecurityException {
        if (i + TypedValues.CycleType.TYPE_PATH_ROTATE > bArr.length) {
            throw new GeneralSecurityException("Provided buffer too short");
        }
        MlDsaArithmeticUtil.RingZq ringZq = new MlDsaArithmeticUtil.RingZq(4096);
        for (int i2 = 0; i2 < 32; i2++) {
            int i3 = i2 * 8;
            int i4 = ringZq.minus(polyRq.polynomial[i3]).r;
            int i5 = ringZq.minus(polyRq.polynomial[i3 + 1]).r;
            int i6 = ringZq.minus(polyRq.polynomial[i3 + 2]).r;
            int i7 = ringZq.minus(polyRq.polynomial[i3 + 3]).r;
            int i8 = ringZq.minus(polyRq.polynomial[i3 + 4]).r;
            int i9 = ringZq.minus(polyRq.polynomial[i3 + 5]).r;
            int i10 = ringZq.minus(polyRq.polynomial[i3 + 6]).r;
            int i11 = ringZq.minus(polyRq.polynomial[i3 + 7]).r;
            if (i4 >= 8192 || i5 >= 8192 || i6 >= 8192 || i7 >= 8192 || i8 >= 8192 || i9 >= 8192 || i10 >= 8192 || i11 >= 8192) {
                throw new GeneralSecurityException("Polynomial coefficient too large");
            }
            int i12 = (i2 * 13) + i;
            bArr[i12] = (byte) i4;
            bArr[i12 + 1] = (byte) ((i4 >> 8) | (i5 << 5));
            bArr[i12 + 2] = (byte) (i5 >> 3);
            bArr[i12 + 3] = (byte) ((i5 >> 11) | (i6 << 2));
            bArr[i12 + 4] = (byte) ((i6 >> 6) | (i7 << 7));
            bArr[i12 + 5] = (byte) (i7 >> 1);
            bArr[i12 + 6] = (byte) ((i7 >> 9) | (i8 << 4));
            bArr[i12 + 7] = (byte) (i8 >> 4);
            bArr[i12 + 8] = (byte) ((i8 >> 12) | (i9 << 1));
            bArr[i12 + 9] = (byte) ((i9 >> 7) | (i10 << 6));
            bArr[i12 + 10] = (byte) (i10 >> 2);
            bArr[i12 + 11] = (byte) ((i10 >> 10) | (i11 << 3));
            bArr[i12 + 12] = (byte) (i11 >> 5);
        }
    }

    static void bitPack3(MlDsaArithmeticUtil.PolyRq polyRq, byte[] bArr, int i) throws GeneralSecurityException {
        if (i + 96 > bArr.length) {
            throw new GeneralSecurityException("Provided buffer too short");
        }
        MlDsaArithmeticUtil.RingZq ringZq = new MlDsaArithmeticUtil.RingZq(2);
        for (int i2 = 0; i2 < 32; i2++) {
            int i3 = i2 * 8;
            int i4 = ringZq.minus(polyRq.polynomial[i3]).r;
            int i5 = ringZq.minus(polyRq.polynomial[i3 + 1]).r;
            int i6 = ringZq.minus(polyRq.polynomial[i3 + 2]).r;
            int i7 = ringZq.minus(polyRq.polynomial[i3 + 3]).r;
            int i8 = ringZq.minus(polyRq.polynomial[i3 + 4]).r;
            int i9 = ringZq.minus(polyRq.polynomial[i3 + 5]).r;
            int i10 = ringZq.minus(polyRq.polynomial[i3 + 6]).r;
            int i11 = ringZq.minus(polyRq.polynomial[i3 + 7]).r;
            if (i4 > 4 || i5 > 4 || i6 > 4 || i7 > 4 || i8 > 4 || i9 > 4 || i10 > 4 || i11 > 4) {
                throw new GeneralSecurityException("Polynomial coefficients out of bounds");
            }
            int i12 = (i2 * 3) + i;
            bArr[i12] = (byte) (i4 | (i5 << 3) | (i6 << 6));
            bArr[i12 + 1] = (byte) ((i6 >> 2) | (i7 << 1) | (i8 << 4) | (i9 << 7));
            bArr[i12 + 2] = (byte) ((i9 >> 1) | (i10 << 2) | (i11 << 5));
        }
    }

    static void bitPack4(MlDsaArithmeticUtil.PolyRq polyRq, byte[] bArr, int i) throws GeneralSecurityException {
        if (i + 128 > bArr.length) {
            throw new GeneralSecurityException("Provided buffer too short");
        }
        MlDsaArithmeticUtil.RingZq ringZq = new MlDsaArithmeticUtil.RingZq(4);
        for (int i2 = 0; i2 < 128; i2++) {
            int i3 = i2 * 2;
            int i4 = ringZq.minus(polyRq.polynomial[i3]).r;
            int i5 = ringZq.minus(polyRq.polynomial[i3 + 1]).r;
            if (i4 > 8 || i5 > 8) {
                throw new GeneralSecurityException("Polynomial coefficients out of bounds");
            }
            bArr[i + i2] = (byte) (i4 | (i5 << 4));
        }
    }

    static byte[] pkEncode(byte[] bArr, MlDsaArithmeticUtil.VectorRq vectorRq, MlDsaConstants.Params params) throws GeneralSecurityException {
        if (bArr.length != 32 || vectorRq.vector.length != params.k) {
            throw new GeneralSecurityException("Invalid parameters length for pkEncode");
        }
        byte[] bArr2 = new byte[params.pkLength];
        System.arraycopy(bArr, 0, bArr2, 0, 32);
        for (int i = 0; i < params.k; i++) {
            simpleBitPack10(vectorRq.vector[i], bArr2, (i * 320) + 32);
        }
        return bArr2;
    }

    static void simpleBitPack10(MlDsaArithmeticUtil.PolyRq polyRq, byte[] bArr, int i) throws GeneralSecurityException {
        if (i + 320 > bArr.length) {
            throw new GeneralSecurityException("Provided buffer too short");
        }
        for (int i2 = 0; i2 < 64; i2++) {
            int i3 = i2 * 4;
            int i4 = polyRq.polynomial[i3].r;
            int i5 = polyRq.polynomial[i3 + 1].r;
            int i6 = polyRq.polynomial[i3 + 2].r;
            int i7 = polyRq.polynomial[i3 + 3].r;
            if (i4 >= 1024 || i5 >= 1024 || i6 >= 1024 || i7 >= 1024) {
                throw new GeneralSecurityException("Polynomial coefficient too large");
            }
            int i8 = (i2 * 5) + i;
            bArr[i8] = (byte) i4;
            bArr[i8 + 1] = (byte) ((i4 >> 8) | (i5 << 2));
            bArr[i8 + 2] = (byte) ((i5 >> 6) | (i6 << 4));
            bArr[i8 + 3] = (byte) ((i6 >> 4) | (i7 << 6));
            bArr[i8 + 4] = (byte) (i7 >> 2);
        }
    }

    static SecretBytes skEncode(byte[] bArr, byte[] bArr2, byte[] bArr3, MlDsaArithmeticUtil.VectorRq vectorRq, MlDsaArithmeticUtil.VectorRq vectorRq2, MlDsaArithmeticUtil.VectorRq vectorRq3, MlDsaConstants.Params params) throws GeneralSecurityException {
        if (bArr.length != 32 || bArr2.length != 32 || bArr3.length != 64 || vectorRq.vector.length != params.l || vectorRq2.vector.length != params.k || vectorRq3.vector.length != params.k) {
            throw new GeneralSecurityException("Invalid parameters length");
        }
        byte[] bArr4 = new byte[params.skLength];
        System.arraycopy(bArr, 0, bArr4, 0, 32);
        System.arraycopy(bArr2, 0, bArr4, 32, 32);
        System.arraycopy(bArr3, 0, bArr4, 64, 64);
        int i = 128;
        if (params.eta == 2) {
            for (int i2 = 0; i2 < params.l; i2++) {
                bitPack3(vectorRq.vector[i2], bArr4, (i2 * 32 * params.bitlen2Eta) + 128);
            }
            i = 128 + (params.l * 32 * params.bitlen2Eta);
            for (int i3 = 0; i3 < params.k; i3++) {
                bitPack3(vectorRq2.vector[i3], bArr4, (i3 * 32 * params.bitlen2Eta) + i);
            }
        } else if (params.eta == 4) {
            for (int i4 = 0; i4 < params.l; i4++) {
                bitPack4(vectorRq.vector[i4], bArr4, (i4 * 32 * params.bitlen2Eta) + 128);
            }
            i = 128 + (params.l * 32 * params.bitlen2Eta);
            for (int i5 = 0; i5 < params.k; i5++) {
                bitPack4(vectorRq2.vector[i5], bArr4, (i5 * 32 * params.bitlen2Eta) + i);
            }
        }
        int i6 = i + (params.k * 32 * params.bitlen2Eta);
        for (int i7 = 0; i7 < params.k; i7++) {
            bitPack13(vectorRq3.vector[i7], bArr4, (i7 * TypedValues.CycleType.TYPE_PATH_ROTATE) + i6);
        }
        return SecretBytes.copyFrom(bArr4, InsecureSecretKeyAccess.get());
    }
}
