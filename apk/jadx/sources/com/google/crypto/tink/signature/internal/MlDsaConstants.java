package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.signature.MlDsaParameters;

/* JADX INFO: loaded from: classes3.dex */
final class MlDsaConstants {
    static final int COMPRESSED_PK_BIT_LENGTH = 10;
    static final int D = 13;
    static final int DEGREE = 256;
    static final int K_LENGTH = 32;
    static final int ML_DSA_65_ETA = 4;
    static final int ML_DSA_65_K = 6;
    static final int ML_DSA_65_L = 5;
    static final int ML_DSA_87_ETA = 2;
    static final int ML_DSA_87_K = 8;
    static final int ML_DSA_87_L = 7;
    static final int RHO_LENGTH = 32;
    static final int RHO_PRIME_LENGTH = 64;
    static final int TR_LENGTH = 64;
    static final int TWO_POW_D = 8192;
    static final int TWO_POW_D_MINUS_ONE = 4096;

    static final class Params {
        final int bitlen2Eta;
        final int eta;
        final byte k;
        final byte l;
        final int pkLength;
        final int skLength;

        Params(byte b, byte b2, int i, int i2, int i3, int i4, MlDsaParameters.MlDsaInstance mlDsaInstance) {
            if (mlDsaInstance == MlDsaParameters.MlDsaInstance.ML_DSA_65) {
                if (b != 6 || b2 != 5 || i != 4 || i3 != 4 || i2 != 1952 || i4 != 4032) {
                    throw new IllegalStateException("Wrong parameters for ML-DSA-65: (k, l, eta, bitlen2Eta) was (" + ((int) b) + ", " + ((int) b2) + ", " + i + ", " + i3 + "), expected (6, 5, 4, 4)");
                }
            } else {
                if (mlDsaInstance != MlDsaParameters.MlDsaInstance.ML_DSA_87) {
                    throw new IllegalStateException("MlDsaInstance not ML_DSA_65 nor ML_DSA_87");
                }
                if (b != 8 || b2 != 7 || i != 2 || i3 != 3 || i2 != 2592 || i4 != 4896) {
                    throw new IllegalStateException("Wrong parameters for ML-DSA-87: (k, l, eta, bitlen2Eta) was (" + ((int) b) + ", " + ((int) b2) + ", " + i + ", " + i3 + "), expected (8, 7, 2, 3)");
                }
            }
            this.k = b;
            this.l = b2;
            this.eta = i;
            this.bitlen2Eta = i3;
            this.pkLength = i2;
            this.skLength = i4;
        }
    }

    private MlDsaConstants() {
    }
}
