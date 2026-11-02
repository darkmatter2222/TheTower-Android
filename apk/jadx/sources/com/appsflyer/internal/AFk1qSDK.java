package com.appsflyer.internal;

import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class AFk1qSDK extends FilterInputStream {
    private final int AFAdRevenueData;
    private int areAllFieldsValid;
    private short component1;
    private int component2;
    private byte[] component3;
    private long[] component4;
    private int equals;
    private final int getCurrencyIso4217Code;
    private int getMediationNetwork;
    private long[] getMonetizationNetwork;
    private final int getRevenue;

    public AFk1qSDK(InputStream inputStream, int i, int i2, short s, int i3, int i4) throws IOException {
        this(inputStream, i, i2, s, i3, i4, (byte) 0);
    }

    private AFk1qSDK(InputStream inputStream, int i, int i2, short s, int i3, int i4, byte b) throws IOException {
        super(new BufferedInputStream(inputStream, 4096));
        this.getMediationNetwork = 1;
        this.component2 = Integer.MAX_VALUE;
        int iMin = Math.min(Math.max((int) s, 4), 8);
        this.AFAdRevenueData = iMin;
        this.component3 = new byte[iMin];
        this.getMonetizationNetwork = new long[4];
        this.component4 = new long[4];
        this.areAllFieldsValid = iMin;
        this.equals = iMin;
        this.getMonetizationNetwork = AFk1rSDK.AFAdRevenueData(i ^ i4, iMin ^ i4);
        this.component4 = AFk1rSDK.AFAdRevenueData(i2 ^ i4, i3 ^ i4);
        this.getRevenue = 100;
        this.getCurrencyIso4217Code = 100;
    }

    private int getMediationNetwork() throws IOException {
        int i;
        if (this.component2 == Integer.MAX_VALUE) {
            this.component2 = ((FilterInputStream) this).in.read();
        }
        if (this.areAllFieldsValid == this.AFAdRevenueData) {
            byte[] bArr = this.component3;
            int i2 = this.component2;
            bArr[0] = (byte) i2;
            if (i2 < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i3 = 1;
            do {
                int i4 = ((FilterInputStream) this).in.read(this.component3, i3, this.AFAdRevenueData - i3);
                if (i4 <= 0) {
                    break;
                }
                i3 += i4;
            } while (i3 < this.AFAdRevenueData);
            if (i3 < this.AFAdRevenueData) {
                throw new IllegalStateException("unexpected block size");
            }
            int i5 = this.getRevenue;
            if (i5 == this.getCurrencyIso4217Code) {
                getMonetizationNetwork();
            } else {
                if (this.getMediationNetwork <= i5) {
                    getMonetizationNetwork();
                }
                int i6 = this.getMediationNetwork;
                if (i6 < this.getCurrencyIso4217Code) {
                    this.getMediationNetwork = i6 + 1;
                } else {
                    this.getMediationNetwork = 1;
                }
            }
            int i7 = ((FilterInputStream) this).in.read();
            this.component2 = i7;
            this.areAllFieldsValid = 0;
            if (i7 < 0) {
                int i8 = this.AFAdRevenueData;
                i = i8 - (this.component3[i8 - 1] & 255);
            } else {
                i = this.AFAdRevenueData;
            }
            this.equals = i;
        }
        return this.equals;
    }

    private void getMonetizationNetwork() {
        long[] jArr = this.getMonetizationNetwork;
        long[] jArr2 = this.component4;
        short s = this.component1;
        long j = jArr[s % 4] * 2147483085;
        long j2 = jArr2[(s + 2) % 4];
        int i = (s + 3) % 4;
        jArr2[i] = ((jArr[i] * 2147483085) + j2) / 2147483647L;
        jArr[i] = (j + j2) % 2147483647L;
        for (int i2 = 0; i2 < this.AFAdRevenueData; i2++) {
            byte[] bArr = this.component3;
            bArr[i2] = (byte) (((long) bArr[i2]) ^ ((this.getMonetizationNetwork[this.component1] >> (i2 << 3)) & 255));
        }
        this.component1 = (short) ((this.component1 + 1) % 4);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        getMediationNetwork();
        return this.equals - this.areAllFieldsValid;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        getMediationNetwork();
        int i = this.areAllFieldsValid;
        if (i >= this.equals) {
            return -1;
        }
        byte[] bArr = this.component3;
        this.areAllFieldsValid = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            getMediationNetwork();
            int i5 = this.areAllFieldsValid;
            if (i5 >= this.equals) {
                if (i4 == i) {
                    return -1;
                }
                return i2 - (i3 - i4);
            }
            byte[] bArr2 = this.component3;
            this.areAllFieldsValid = i5 + 1;
            bArr[i4] = bArr2[i5];
        }
        return i2;
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
