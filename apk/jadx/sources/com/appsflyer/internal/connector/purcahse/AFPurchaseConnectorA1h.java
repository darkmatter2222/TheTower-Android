package com.appsflyer.internal.connector.purcahse;

import com.google.common.base.Ascii;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class AFPurchaseConnectorA1h extends FilterInputStream {
    private final byte[][] PurchaseClient;
    private final byte[] PurchaseClientBuilder;
    private final int autoLogInApps;
    private final int[] equals;
    private int getVERSION_NAME;
    private final byte[] hashCode;
    private final int logSubscriptions;
    private int setSandbox;
    private int setSubscriptionPurchaseEventDataSource;
    private int setSubscriptionValidationResultListener;
    private final int startObservingTransactions;
    private final int[] stopObservingTransactions;
    private static final byte[] toJsonMap = AFPurchaseConnectorA1j.InAppPurchaseEvent;
    private static final int[] getQuantity = AFPurchaseConnectorA1j.toJsonMap;
    private static final int[] InAppPurchaseEvent = AFPurchaseConnectorA1j.getOneTimePurchaseOfferDetails;
    private static final int[] getOneTimePurchaseOfferDetails = AFPurchaseConnectorA1j.getQuantity;
    private static final int[] getPackageName = AFPurchaseConnectorA1j.getPackageName;

    public AFPurchaseConnectorA1h(InputStream inputStream, int i, byte[] bArr, byte[][] bArr2) {
        this(inputStream, i, bArr, bArr2, (byte) 0);
    }

    private AFPurchaseConnectorA1h(InputStream inputStream, int i, byte[] bArr, byte[][] bArr2, byte b) {
        super(new BufferedInputStream(inputStream, 4096));
        this.stopObservingTransactions = new int[4];
        this.hashCode = new byte[16];
        this.PurchaseClientBuilder = new byte[16];
        this.setSandbox = 1;
        this.getVERSION_NAME = Integer.MAX_VALUE;
        this.setSubscriptionValidationResultListener = 16;
        this.setSubscriptionPurchaseEventDataSource = 16;
        this.startObservingTransactions = i;
        this.equals = AFPurchaseConnectorA1j.getPackageName(bArr, i);
        byte[][] bArr3 = new byte[bArr2.length][];
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            bArr3[i2] = new byte[bArr2[i2].length];
            int i3 = 0;
            while (true) {
                byte[] bArr4 = bArr2[i2];
                if (i3 < bArr4.length) {
                    bArr3[i2][bArr4[i3]] = (byte) i3;
                    i3++;
                }
            }
        }
        this.PurchaseClient = bArr3;
        this.autoLogInApps = 100;
        this.logSubscriptions = 100;
    }

    private void getOneTimePurchaseOfferDetails(byte[] bArr, byte[] bArr2) {
        int[] iArr = this.stopObservingTransactions;
        char c = 1;
        char c2 = 2;
        char c3 = '\b';
        char c4 = 3;
        int i = (bArr[0] << Ascii.CAN) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        int[] iArr2 = this.equals;
        iArr[0] = i ^ iArr2[0];
        char c5 = 5;
        char c6 = 6;
        iArr[1] = ((((bArr[4] << Ascii.CAN) | ((bArr[5] & 255) << 16)) | ((bArr[6] & 255) << 8)) | (bArr[7] & 255)) ^ iArr2[1];
        iArr[2] = ((bArr[11] & 255) | (((bArr[8] << Ascii.CAN) | ((bArr[9] & 255) << 16)) | ((bArr[10] & 255) << 8))) ^ iArr2[2];
        char c7 = 14;
        iArr[3] = (((((bArr[13] & 255) << 16) | (bArr[12] << Ascii.CAN)) | ((bArr[14] & 255) << 8)) | (bArr[15] & 255)) ^ iArr2[3];
        int i2 = 1;
        int i3 = 4;
        while (i2 < this.startObservingTransactions) {
            int[] iArr3 = getQuantity;
            int[] iArr4 = this.stopObservingTransactions;
            char c8 = c;
            byte[][] bArr3 = this.PurchaseClient;
            byte[] bArr4 = bArr3[0];
            int i4 = iArr3[iArr4[bArr4[0]] >>> 24];
            int[] iArr5 = InAppPurchaseEvent;
            byte[] bArr5 = bArr3[c8];
            char c9 = c2;
            int i5 = i4 ^ iArr5[(iArr4[bArr5[0]] >>> 16) & 255];
            int[] iArr6 = getOneTimePurchaseOfferDetails;
            byte[] bArr6 = bArr3[c9];
            char c10 = c4;
            int i6 = i5 ^ iArr6[(iArr4[bArr6[0]] >>> 8) & 255];
            int[] iArr7 = getPackageName;
            byte[] bArr7 = bArr3[c10];
            char c11 = c3;
            int i7 = i6 ^ iArr7[iArr4[bArr7[0]] & 255];
            int[] iArr8 = this.equals;
            int i8 = i7 ^ iArr8[i3];
            char c12 = c7;
            char c13 = c5;
            int i9 = (((iArr3[iArr4[bArr4[c8]] >>> 24] ^ iArr5[(iArr4[bArr5[c8]] >>> 16) & 255]) ^ iArr6[(iArr4[bArr6[c8]] >>> 8) & 255]) ^ iArr7[iArr4[bArr7[c8]] & 255]) ^ iArr8[i3 + 1];
            int i10 = (((iArr3[iArr4[bArr4[c9]] >>> 24] ^ iArr5[(iArr4[bArr5[c9]] >>> 16) & 255]) ^ iArr6[(iArr4[bArr6[c9]] >>> 8) & 255]) ^ iArr7[iArr4[bArr7[c9]] & 255]) ^ iArr8[i3 + 2];
            int i11 = (((iArr3[iArr4[bArr4[c10]] >>> 24] ^ iArr5[(iArr4[bArr5[c10]] >>> 16) & 255]) ^ iArr6[(iArr4[bArr6[c10]] >>> 8) & 255]) ^ iArr7[iArr4[bArr7[c10]] & 255]) ^ iArr8[i3 + 3];
            iArr4[0] = i8;
            iArr4[c8] = i9;
            iArr4[c9] = i10;
            iArr4[c10] = i11;
            i2++;
            i3 += 4;
            c = c8;
            c2 = c9;
            c4 = c10;
            c3 = c11;
            c5 = c13;
            c7 = c12;
            c6 = c6;
        }
        char c14 = c;
        char c15 = c2;
        char c16 = c4;
        char c17 = c3;
        char c18 = c7;
        int[] iArr9 = this.equals;
        int i12 = iArr9[i3];
        byte[] bArr8 = toJsonMap;
        int[] iArr10 = this.stopObservingTransactions;
        byte[][] bArr9 = this.PurchaseClient;
        byte[] bArr10 = bArr9[0];
        bArr2[0] = (byte) (bArr8[iArr10[bArr10[0]] >>> 24] ^ (i12 >>> 24));
        byte[] bArr11 = bArr9[c14];
        bArr2[c14] = (byte) (bArr8[(iArr10[bArr11[0]] >>> 16) & 255] ^ (i12 >>> 16));
        byte[] bArr12 = bArr9[c15];
        bArr2[c15] = (byte) (bArr8[(iArr10[bArr12[0]] >>> 8) & 255] ^ (i12 >>> 8));
        byte[] bArr13 = bArr9[c16];
        bArr2[c16] = (byte) (i12 ^ bArr8[iArr10[bArr13[0]] & 255]);
        int i13 = iArr9[i3 + 1];
        bArr2[4] = (byte) (bArr8[iArr10[bArr10[c14]] >>> 24] ^ (i13 >>> 24));
        bArr2[c5] = (byte) (bArr8[(iArr10[bArr11[c14]] >>> 16) & 255] ^ (i13 >>> 16));
        bArr2[c6] = (byte) (bArr8[(iArr10[bArr12[c14]] >>> 8) & 255] ^ (i13 >>> 8));
        bArr2[7] = (byte) (i13 ^ bArr8[iArr10[bArr13[c14]] & 255]);
        int i14 = iArr9[i3 + 2];
        bArr2[c17] = (byte) (bArr8[iArr10[bArr10[c15]] >>> 24] ^ (i14 >>> 24));
        bArr2[9] = (byte) (bArr8[(iArr10[bArr11[c15]] >>> 16) & 255] ^ (i14 >>> 16));
        bArr2[10] = (byte) (bArr8[(iArr10[bArr12[c15]] >>> 8) & 255] ^ (i14 >>> 8));
        bArr2[11] = (byte) (i14 ^ bArr8[iArr10[bArr13[c15]] & 255]);
        int i15 = iArr9[i3 + 3];
        bArr2[12] = (byte) (bArr8[iArr10[bArr10[c16]] >>> 24] ^ (i15 >>> 24));
        bArr2[13] = (byte) (bArr8[(iArr10[bArr11[c16]] >>> 16) & 255] ^ (i15 >>> 16));
        bArr2[c18] = (byte) (bArr8[(iArr10[bArr12[c16]] >>> 8) & 255] ^ (i15 >>> 8));
        bArr2[15] = (byte) (i15 ^ bArr8[iArr10[bArr13[c16]] & 255]);
    }

    private int toJsonMap() throws IOException {
        if (this.getVERSION_NAME == Integer.MAX_VALUE) {
            this.getVERSION_NAME = ((FilterInputStream) this).in.read();
        }
        if (this.setSubscriptionValidationResultListener == 16) {
            byte[] bArr = this.hashCode;
            int i = this.getVERSION_NAME;
            bArr[0] = (byte) i;
            if (i < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i2 = 1;
            do {
                int i3 = ((FilterInputStream) this).in.read(this.hashCode, i2, 16 - i2);
                if (i3 <= 0) {
                    break;
                }
                i2 += i3;
            } while (i2 < 16);
            if (i2 < 16) {
                throw new IllegalStateException("unexpected block size");
            }
            int i4 = this.autoLogInApps;
            if (i4 == this.logSubscriptions) {
                getOneTimePurchaseOfferDetails(this.hashCode, this.PurchaseClientBuilder);
            } else {
                if (this.setSandbox <= i4) {
                    getOneTimePurchaseOfferDetails(this.hashCode, this.PurchaseClientBuilder);
                } else {
                    byte[] bArr2 = this.hashCode;
                    System.arraycopy(bArr2, 0, this.PurchaseClientBuilder, 0, bArr2.length);
                }
                int i5 = this.setSandbox;
                if (i5 < this.logSubscriptions) {
                    this.setSandbox = i5 + 1;
                } else {
                    this.setSandbox = 1;
                }
            }
            int i6 = ((FilterInputStream) this).in.read();
            this.getVERSION_NAME = i6;
            this.setSubscriptionValidationResultListener = 0;
            this.setSubscriptionPurchaseEventDataSource = i6 < 0 ? 16 - (this.PurchaseClientBuilder[15] & 255) : 16;
        }
        return this.setSubscriptionPurchaseEventDataSource;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        toJsonMap();
        return this.setSubscriptionPurchaseEventDataSource - this.setSubscriptionValidationResultListener;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        toJsonMap();
        int i = this.setSubscriptionValidationResultListener;
        if (i >= this.setSubscriptionPurchaseEventDataSource) {
            return -1;
        }
        byte[] bArr = this.PurchaseClientBuilder;
        this.setSubscriptionValidationResultListener = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            toJsonMap();
            int i5 = this.setSubscriptionValidationResultListener;
            if (i5 >= this.setSubscriptionPurchaseEventDataSource) {
                if (i4 == i) {
                    return -1;
                }
                return i2 - (i3 - i4);
            }
            byte[] bArr2 = this.PurchaseClientBuilder;
            this.setSubscriptionValidationResultListener = i5 + 1;
            bArr[i4] = bArr2[i5];
        }
        return i2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long j2 = 0;
        while (j2 < j && read() != -1) {
            j2++;
        }
        return j2;
    }
}
