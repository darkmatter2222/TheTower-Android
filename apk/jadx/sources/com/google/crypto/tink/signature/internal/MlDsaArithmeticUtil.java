package com.google.crypto.tink.signature.internal;

import java.lang.reflect.Array;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class MlDsaArithmeticUtil {

    static final class MatrixTq {
        final RingTq[][] matrix;

        MatrixTq(int i, int i2) throws GeneralSecurityException {
            if ((i != 6 || i2 != 5) && (i != 8 || i2 != 7)) {
                throw new GeneralSecurityException("Wrong size of the ML-DSA matrix: k=" + i + ", l=" + i2);
            }
            this.matrix = (RingTq[][]) Array.newInstance((Class<?>) RingTq.class, i, i2);
            for (int i3 = 0; i3 < i; i3++) {
                for (int i4 = 0; i4 < i2; i4++) {
                    this.matrix[i3][i4] = new RingTq();
                }
            }
        }

        VectorTq multiplyVector(VectorTq vectorTq) throws GeneralSecurityException {
            if (this.matrix[0].length != vectorTq.vector.length) {
                throw new GeneralSecurityException("Invalid parameters for matrix multiplication: matrix size (" + this.matrix.length + ", " + this.matrix[0].length + "), vector size " + vectorTq.vector.length);
            }
            VectorTq vectorTq2 = new VectorTq(this.matrix.length);
            for (int i = 0; i < this.matrix.length; i++) {
                for (int i2 = 0; i2 < vectorTq.vector.length; i2++) {
                    vectorTq2.vector[i] = vectorTq2.vector[i].plus(this.matrix[i][i2].multiply(vectorTq.vector[i2]));
                }
            }
            return vectorTq2;
        }
    }

    static final class PolyRq {
        final RingZq[] polynomial = new RingZq[256];

        PolyRq() {
            for (int i = 0; i < 256; i++) {
                this.polynomial[i] = new RingZq(0);
            }
        }

        static PolyRq copyFromVector(RingTq ringTq) {
            PolyRq polyRq = new PolyRq();
            System.arraycopy(ringTq.vector, 0, polyRq.polynomial, 0, 256);
            return polyRq;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof PolyRq) {
                return Arrays.equals(this.polynomial, ((PolyRq) obj).polynomial);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.polynomial);
        }

        PolyRq plus(PolyRq polyRq) {
            PolyRq polyRq2 = new PolyRq();
            for (int i = 0; i < 256; i++) {
                polyRq2.polynomial[i] = this.polynomial[i].plus(polyRq.polynomial[i]);
            }
            return polyRq2;
        }

        PolyRqPair power2Round() {
            PolyRq polyRq = new PolyRq();
            PolyRq polyRq2 = new PolyRq();
            for (int i = 0; i < 256; i++) {
                RingZqPair ringZqPairPower2Round = this.polynomial[i].power2Round();
                polyRq.polynomial[i] = ringZqPairPower2Round.r1;
                polyRq2.polynomial[i] = ringZqPairPower2Round.r0;
            }
            return new PolyRqPair(polyRq, polyRq2);
        }
    }

    static final class PolyRqPair {
        final PolyRq t0Bold;
        final PolyRq t1Bold;

        PolyRqPair(PolyRq polyRq, PolyRq polyRq2) {
            this.t1Bold = polyRq;
            this.t0Bold = polyRq2;
        }
    }

    static final class RingTq {
        final RingZq[] vector = new RingZq[256];

        RingTq() {
            for (int i = 0; i < 256; i++) {
                this.vector[i] = new RingZq(0);
            }
        }

        static RingTq copyFromPolynomial(PolyRq polyRq) {
            RingTq ringTq = new RingTq();
            System.arraycopy(polyRq.polynomial, 0, ringTq.vector, 0, 256);
            return ringTq;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof RingTq) {
                return Arrays.equals(this.vector, ((RingTq) obj).vector);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.vector);
        }

        RingTq multiply(RingTq ringTq) {
            RingTq ringTq2 = new RingTq();
            for (int i = 0; i < 256; i++) {
                ringTq2.vector[i] = this.vector[i].multiply(ringTq.vector[i]);
            }
            return ringTq2;
        }

        RingTq plus(RingTq ringTq) {
            RingTq ringTq2 = new RingTq();
            for (int i = 0; i < 256; i++) {
                ringTq2.vector[i] = this.vector[i].plus(ringTq.vector[i]);
            }
            return ringTq2;
        }
    }

    static final class RingZq {
        static final RingZq INVALID = new RingZq(-1);
        static final int Q = 8380417;
        final int r;

        RingZq(int i) {
            RingZq ringZq;
            if ((i < 0 || i >= Q) && (ringZq = INVALID) != null) {
                this.r = ringZq.r;
            } else {
                this.r = i;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RingZq) && this.r == ((RingZq) obj).r;
        }

        public int hashCode() {
            return Integer.hashCode(this.r);
        }

        RingZq minus(RingZq ringZq) {
            return new RingZq(((this.r - ringZq.r) + Q) % Q);
        }

        RingZq multiply(RingZq ringZq) {
            return new RingZq((int) ((((long) this.r) * ((long) ringZq.r)) % 8380417));
        }

        RingZq negative() {
            return new RingZq((Q - this.r) % Q);
        }

        RingZq plus(RingZq ringZq) {
            return new RingZq((this.r + ringZq.r) % Q);
        }

        RingZqPair power2Round() {
            int i = this.r % Q;
            int i2 = (((i + 4095) & 8191) - (-8376322)) % Q;
            return new RingZqPair((((i - i2) + Q) % Q) >> 13, i2);
        }
    }

    static final class RingZqPair {
        final RingZq r0;
        final RingZq r1;

        RingZqPair(int i, int i2) {
            this.r1 = new RingZq(i);
            this.r0 = new RingZq(i2);
        }
    }

    static final class VectorRq {
        final PolyRq[] vector;

        VectorRq(int i) {
            this.vector = new PolyRq[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.vector[i2] = new PolyRq();
            }
        }
    }

    static final class VectorRqPair {
        VectorRq s1;
        VectorRq s2;

        VectorRqPair(int i, int i2) {
            this.s1 = new VectorRq(i);
            this.s2 = new VectorRq(i2);
        }
    }

    static final class VectorTq {
        final RingTq[] vector;

        VectorTq(int i) {
            this.vector = new RingTq[i];
            for (int i2 = 0; i2 < i; i2++) {
                this.vector[i2] = new RingTq();
            }
        }
    }

    private MlDsaArithmeticUtil() {
    }
}
