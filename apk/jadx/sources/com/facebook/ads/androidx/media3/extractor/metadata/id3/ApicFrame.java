package com.facebook.ads.androidx.media3.extractor.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.X.C2068Zu;
import com.facebook.ads.redexgen.X.N1;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ApicFrame extends Id3Frame {
    public static byte[] A04;
    public static final Parcelable.Creator<ApicFrame> CREATOR;
    public final int A00;
    public final String A01;
    public final String A02;
    public final byte[] A03;

    static {
        A01();
        CREATOR = new C2068Zu();
    }

    public ApicFrame(Parcel parcel) {
        super(A00(25, 4, 88));
        this.A02 = (String) N1.A0f(parcel.readString());
        this.A01 = parcel.readString();
        this.A00 = parcel.readInt();
        this.A03 = (byte[]) N1.A0f(parcel.createByteArray());
    }

    public ApicFrame(String str, String str2, int i, byte[] bArr) {
        super(A00(25, 4, 88));
        this.A02 = str;
        this.A01 = str2;
        this.A00 = i;
        this.A03 = bArr;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ InterfaceC3669k1.d.b.j);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{88, 84, Ascii.DLE, 17, 7, Ascii.ETB, 6, Ascii.GS, 4, 0, Ascii.GS, Ascii.ESC, Ascii.SUB, 73, Ascii.ETB, Ascii.CR, SignedBytes.MAX_POWER_OF_TWO, 68, SignedBytes.MAX_POWER_OF_TWO, 72, 121, 84, 93, 72, Ascii.DLE, 105, 120, 97, 107};
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        return this.A00 == apicFrame.A00 && N1.A1E(this.A02, apicFrame.A02) && N1.A1E(this.A01, apicFrame.A01) && Arrays.equals(this.A03, apicFrame.A03);
    }

    public final int hashCode() {
        return (((((((17 * 31) + this.A00) * 31) + (this.A02 != null ? this.A02.hashCode() : 0)) * 31) + (this.A01 != null ? this.A01.hashCode() : 0)) * 31) + Arrays.hashCode(this.A03);
    }

    @Override // com.facebook.ads.androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return super.A00 + A00(14, 11, 93) + this.A02 + A00(0, 14, 4) + this.A01;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.A02);
        parcel.writeString(this.A01);
        parcel.writeInt(this.A00);
        parcel.writeByteArray(this.A03);
    }
}
