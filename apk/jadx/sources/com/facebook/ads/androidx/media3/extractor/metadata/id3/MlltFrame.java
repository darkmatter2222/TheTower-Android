package com.facebook.ads.androidx.media3.extractor.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.X.C2077a3;
import com.facebook.ads.redexgen.X.N1;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class MlltFrame extends Id3Frame {
    public static byte[] A05;
    public static String[] A06 = {"xYFlZ2jS9gdgYlP7fB1066ejsTaRsBVf", "hXNB9WeVAfJWbZ5Wgd6mFyTEJ5hP0oNw", "j2ArwGb6aNcAkwvPV8Cc7f0SAg1G02YR", "CTqJPuvhjiMIQpbN4efAD99PtL8FpJOg", "k51rOGYjjPjBPp4SMMDQM0lrDITAlfxG", "9KqPh05aG07fimLEj4sqoz9DCkbPdJew", "T4ZO1YhxkBMqg4zq80SCRW5ofZZyB6jn", "57dFbvcRjFcqgbOWAa9xngOC33aKhfYa"};
    public static final Parcelable.Creator<MlltFrame> CREATOR;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int[] A03;
    public final int[] A04;

    static {
        A01();
        CREATOR = new C2077a3();
    }

    public MlltFrame(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super(A00(0, 4, 114));
        this.A02 = i;
        this.A00 = i2;
        this.A01 = i3;
        this.A03 = iArr;
        this.A04 = iArr2;
    }

    public MlltFrame(Parcel parcel) {
        super(A00(0, 4, 114));
        this.A02 = parcel.readInt();
        this.A00 = parcel.readInt();
        this.A01 = parcel.readInt();
        this.A03 = (int[]) N1.A0f(parcel.createIntArray());
        this.A04 = (int[]) N1.A0f(parcel.createIntArray());
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {Ascii.SI, Ascii.SO, Ascii.SO, Ascii.SYN};
        if (A06[1].charAt(29) != 'o') {
            throw new RuntimeException();
        }
        A06[1] = "Kvp8llCvXTXRNC5jXNCNcZIXjFkrSoDE";
        A05 = bArr;
    }

    @Override // com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MlltFrame mlltFrame = (MlltFrame) obj;
        return this.A02 == mlltFrame.A02 && this.A00 == mlltFrame.A00 && this.A01 == mlltFrame.A01 && Arrays.equals(this.A03, mlltFrame.A03) && Arrays.equals(this.A04, mlltFrame.A04);
    }

    public final int hashCode() {
        return (((((((((17 * 31) + this.A02) * 31) + this.A00) * 31) + this.A01) * 31) + Arrays.hashCode(this.A03)) * 31) + Arrays.hashCode(this.A04);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.A02);
        parcel.writeInt(this.A00);
        parcel.writeInt(this.A01);
        parcel.writeIntArray(this.A03);
        parcel.writeIntArray(this.A04);
    }
}
