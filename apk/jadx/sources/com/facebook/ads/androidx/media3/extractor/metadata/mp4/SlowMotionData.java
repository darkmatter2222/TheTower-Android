package com.facebook.ads.androidx.media3.extractor.metadata.mp4;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData;
import com.facebook.ads.redexgen.X.A6;
import com.facebook.ads.redexgen.X.AbstractC1722Ln;
import com.facebook.ads.redexgen.X.C2084aA;
import com.facebook.ads.redexgen.X.C2086aC;
import com.facebook.ads.redexgen.X.L3;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.VC;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class SlowMotionData implements Metadata.Entry {
    public static byte[] A01;
    public static String[] A02 = {"4Hx7OvDSSY6Qn1Dlb29M9", "IjalnB", "VfpXP03MgioH1ypmjAoNGAx3WvRNgJFY", "x0bd", "ZPU15yp6", "jkdOWxrankEP9khq", "gTJFwo", "xvbGWmtrtKgtEhgKRff6QL0k8Z6vwV14"};
    public static final Parcelable.Creator<SlowMotionData> CREATOR;
    public final List<Segment> A00;

    public static final class Segment implements Parcelable {
        public static byte[] A03;
        public static final Comparator<Segment> A04;
        public static final Parcelable.Creator<Segment> CREATOR;
        public final int A00;
        public final long A01;
        public final long A02;

        static {
            A02();
            A04 = new Comparator() { // from class: com.facebook.ads.redexgen.X.aB
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    SlowMotionData.Segment segment = (SlowMotionData.Segment) obj;
                    SlowMotionData.Segment segment2 = (SlowMotionData.Segment) obj2;
                    return AbstractC1974Vy.A01().A07(segment.A02, segment2.A02).A07(segment.A01, segment2.A01).A06(segment.A00, segment2.A00).A05();
                }
            };
            CREATOR = new C2086aC();
        }

        public Segment(long j, long j2, int i) {
            AbstractC1722Ln.A07(j < j2);
            this.A02 = j;
            this.A01 = j2;
            this.A00 = i;
        }

        public static String A01(int i, int i2, int i3) {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 20);
            }
            return new String(bArrCopyOfRange);
        }

        public static void A02() {
            A03 = new byte[]{Ascii.VT, Base64.padSymbol, 63, 53, Base64.padSymbol, 54, 44, 98, 120, 43, 44, 57, 42, 44, Ascii.FF, 49, 53, Base64.padSymbol, Ascii.NAK, 43, 101, 125, 60, 116, 120, Base64.padSymbol, 54, 60, Ascii.FF, 49, 53, Base64.padSymbol, Ascii.NAK, 43, 101, 125, 60, 116, 120, 43, 40, Base64.padSymbol, Base64.padSymbol, 60, Ascii.FS, 49, 46, 49, 43, 55, 42, 101, 125, 60};
        }

        @Override // android.os.Parcelable
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
            Segment segment = (Segment) obj;
            return this.A02 == segment.A02 && this.A01 == segment.A01 && this.A00 == segment.A00;
        }

        public final int hashCode() {
            return A6.A00(Long.valueOf(this.A02), Long.valueOf(this.A01), Integer.valueOf(this.A00));
        }

        public final String toString() {
            return N1.A0n(A01(0, 54, 76), Long.valueOf(this.A02), Long.valueOf(this.A01), Integer.valueOf(this.A00));
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.A02);
            parcel.writeLong(this.A01);
            parcel.writeInt(this.A00);
        }
    }

    static {
        A01();
        CREATOR = new C2084aA();
    }

    public SlowMotionData(List<Segment> list) {
        this.A00 = list;
        AbstractC1722Ln.A07(!A02(list));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[4].length() != 8) {
                throw new RuntimeException();
            }
            A02[5] = "KLycsjpkvsjMD5X8";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 111);
            i4++;
        }
    }

    public static void A01() {
        A01 = new byte[]{47, 72, 75, 83, 41, 75, 80, 69, 75, 74, Ascii.SYN, -4, 79, 65, 67, 73, 65, 74, 80, 79, Ascii.EM};
    }

    public static boolean A02(List<Segment> list) {
        if (list.isEmpty()) {
            return false;
        }
        long j = list.get(0).A01;
        for (int i = 1; i < list.size(); i++) {
            if (list.get(i).A02 < j) {
                if (A02[4].length() != 8) {
                    throw new RuntimeException();
                }
                A02[5] = "ZRcff976jmehsSMZ";
                return true;
            }
            j = list.get(i).A01;
        }
        return false;
    }

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] AAE() {
        return L3.A01(this);
    }

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ VC AAF() {
        return L3.A00(this);
    }

    @Override // android.os.Parcelable
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
        return this.A00.equals(((SlowMotionData) obj).A00);
    }

    public final int hashCode() {
        return this.A00.hashCode();
    }

    public final String toString() {
        return A00(0, 21, 109) + this.A00;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.A00);
    }
}
