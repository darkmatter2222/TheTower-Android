package com.facebook.ads.androidx.media3.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.X.C1744Mk;
import com.facebook.ads.redexgen.X.C1752Ms;
import com.facebook.ads.redexgen.X.C2091aI;
import com.facebook.ads.redexgen.X.C2092aJ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class SpliceInsertCommand extends SpliceCommand {
    public static String[] A0D = {"bQjU", "lDOOg9IOKycthmf3moi8TWpc", "mq8taTyObxEnETGJK2snRsGGUnFN", "tHlzPpr4jJ1ZDU", "2ZBX7AdMaENlXNaVwRncxy7CKdlVjwqp", "5mUBmesNVC8eBzYCNPYtJGFmIZEY", "z3qhQV", "J3XiIOF3cceaw5H1"};
    public static final Parcelable.Creator<SpliceInsertCommand> CREATOR = new C2091aI();
    public final int A00;
    public final int A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final List<C2092aJ> A07;
    public final boolean A08;
    public final boolean A09;
    public final boolean A0A;
    public final boolean A0B;
    public final boolean A0C;

    public SpliceInsertCommand(long j, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, List<C2092aJ> list, boolean z5, long j4, int i, int i2, int i3) {
        this.A06 = j;
        this.A0B = z;
        this.A09 = z2;
        this.A0A = z3;
        this.A0C = z4;
        this.A05 = j2;
        this.A04 = j3;
        this.A07 = Collections.unmodifiableList(list);
        this.A08 = z5;
        this.A03 = j4;
        this.A02 = i;
        this.A00 = i2;
        this.A01 = i3;
    }

    public SpliceInsertCommand(Parcel parcel) {
        this.A06 = parcel.readLong();
        this.A0B = parcel.readByte() == 1;
        this.A09 = parcel.readByte() == 1;
        this.A0A = parcel.readByte() == 1;
        this.A0C = parcel.readByte() == 1;
        this.A05 = parcel.readLong();
        this.A04 = parcel.readLong();
        int i = parcel.readInt();
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(C2092aJ.A00(parcel));
        }
        this.A07 = Collections.unmodifiableList(arrayList);
        this.A08 = parcel.readByte() == 1;
        this.A03 = parcel.readLong();
        this.A02 = parcel.readInt();
        this.A00 = parcel.readInt();
        this.A01 = parcel.readInt();
    }

    public /* synthetic */ SpliceInsertCommand(Parcel parcel, C2091aI c2091aI) {
        this(parcel);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x007e  */
    public static SpliceInsertCommand A00(C1744Mk c1744Mk, long j, C1752Ms c1752Ms) {
        long jA0Q = c1744Mk.A0Q();
        boolean z = (c1744Mk.A0I() & 128) != 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        long jA00 = -9223372036854775807L;
        List listEmptyList = Collections.emptyList();
        int iA0M = 0;
        int iA0I = 0;
        int iA0I2 = 0;
        boolean z5 = false;
        long jA0Q2 = -9223372036854775807L;
        if (!z) {
            int iA0I3 = c1744Mk.A0I();
            String[] strArr = A0D;
            if (strArr[6].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A0D[1] = "TYWB5U4XEobqurYG6LzX57FR";
            z2 = (iA0I3 & 128) != 0;
            z3 = (iA0I3 & 64) != 0;
            boolean z6 = (iA0I3 & 32) != 0;
            z4 = (iA0I3 & 16) != 0;
            if (A0D[3].length() != 17) {
                A0D[1] = "4O0buXygssTTRhmDywTA31Dw";
                if (z3) {
                    if (!z4) {
                        jA00 = TimeSignalCommand.A00(c1744Mk, j);
                    }
                }
            } else if (z3) {
                if (!z4) {
                    jA00 = TimeSignalCommand.A00(c1744Mk, j);
                }
            }
            if (!z3) {
                int iA0I4 = c1744Mk.A0I();
                listEmptyList = new ArrayList(iA0I4);
                for (int i = 0; i < iA0I4; i++) {
                    int iA0I5 = c1744Mk.A0I();
                    long jA01 = -9223372036854775807L;
                    if (!z4) {
                        jA01 = TimeSignalCommand.A00(c1744Mk, j);
                    }
                    listEmptyList.add(new C2092aJ(iA0I5, jA01, c1752Ms.A06(jA01), null));
                }
            }
            if (z6) {
                long jA0I = c1744Mk.A0I();
                z5 = (jA0I & 128) != 0;
                jA0Q2 = (1000 * (((jA0I & 1) << 32) | c1744Mk.A0Q())) / 90;
            }
            iA0M = c1744Mk.A0M();
            iA0I = c1744Mk.A0I();
            iA0I2 = c1744Mk.A0I();
        }
        return new SpliceInsertCommand(jA0Q, z, z2, z3, z4, jA00, c1752Ms.A06(jA00), listEmptyList, z5, jA0Q2, iA0M, iA0I, iA0I2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A06);
        parcel.writeByte(this.A0B ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A09 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A0A ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.A0C ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.A05);
        parcel.writeLong(this.A04);
        int size = this.A07.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            this.A07.get(i2).A01(parcel);
        }
        parcel.writeByte(this.A08 ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.A03);
        parcel.writeInt(this.A02);
        parcel.writeInt(this.A00);
        parcel.writeInt(this.A01);
    }
}
