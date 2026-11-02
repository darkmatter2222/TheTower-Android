package com.facebook.ads.androidx.media3.extractor.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.X.C1744Mk;
import com.facebook.ads.redexgen.X.C1752Ms;
import com.facebook.ads.redexgen.X.C2097aO;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new C2097aO();
    public final long A00;
    public final long A01;

    public TimeSignalCommand(long j, long j2) {
        this.A01 = j;
        this.A00 = j2;
    }

    public /* synthetic */ TimeSignalCommand(long j, long j2, C2097aO c2097aO) {
        this(j, j2);
    }

    public static long A00(C1744Mk c1744Mk, long j) {
        long jA0I = c1744Mk.A0I();
        if ((128 & jA0I) != 0) {
            return ((((1 & jA0I) << 32) | c1744Mk.A0Q()) + j) & 8589934591L;
        }
        return -9223372036854775807L;
    }

    public static TimeSignalCommand A01(C1744Mk c1744Mk, long j, C1752Ms c1752Ms) {
        long jA00 = A00(c1744Mk, j);
        return new TimeSignalCommand(jA00, c1752Ms.A06(jA00));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A01);
        parcel.writeLong(this.A00);
    }
}
