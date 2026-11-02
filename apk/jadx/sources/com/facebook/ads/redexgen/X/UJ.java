package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.os.Handler;
import com.facebook.ads.androidx.media3.exoplayer.scheduler.Requirements;
import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class UJ {
    public static byte[] A07;
    public static String[] A08 = {"H25WLHBrrvP7l88I9x10Qp4nHRvRA6nw", "lqsvNd", "Zn3q39Cc4F7qtIfbUACQjkSAS1vYQsjk", "bsTqqOin3D0IAsjvKEBwwy2G", "3cBrjZurdiMpwDV31", "do8IuHsOsvhcOw91jAoqijjrWk6yEpTZ", "tIMcVhCDoOTcDgd22TvbQaRVyir", "rHQworN4IdV2Rjc4FWQK4f9KpEk8ttEK"};
    public int A00;
    public UE A01;
    public UI A02;
    public final Context A03;
    public final Handler A04 = N1.A0Z();
    public final Requirements A05;
    public final UF A06;

    static {
        A06();
    }

    public UJ(Context context, UF uf, Requirements requirements) {
        this.A03 = context.getApplicationContext();
        this.A06 = uf;
        this.A05 = requirements;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            String[] strArr = A08;
            if (strArr[2].charAt(17) != strArr[5].charAt(17)) {
                throw new RuntimeException();
            }
            A08[4] = "eKo9tx8SVU8zDpoYsQfJKvvllyV45r";
            bArrCopyOfRange[i4] = (byte) ((b ^ i3) ^ 75);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        int iA07 = this.A05.A07(this.A03);
        if (this.A00 != iA07) {
            this.A00 = iA07;
            this.A06.AGo(this, iA07);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        if ((this.A00 & 3) == 0) {
            return;
        }
        A03();
    }

    private void A05() {
        ConnectivityManager connectivityManager = (ConnectivityManager) AbstractC1722Ln.A01((ConnectivityManager) this.A03.getSystemService(A02(311, 12, 93)));
        this.A02 = new UI(this);
        connectivityManager.registerDefaultNetworkCallback(this.A02);
    }

    public static void A06() {
        A07 = new byte[]{74, 69, 79, 89, 68, 66, 79, 5, 66, 69, 95, 78, 69, 95, 5, 74, 72, 95, 66, 68, 69, 5, 106, 104, 127, 98, 100, 101, 116, 123, 100, 124, 110, 121, 116, 104, 100, 101, 101, 110, 104, 127, 110, 111, 44, 35, 41, 63, 34, 36, 41, 99, 36, 35, 57, 40, 35, 57, 99, 44, 46, 57, 36, 34, 35, 99, Ascii.FF, Ascii.SO, Ascii.EM, 4, 2, 3, Ascii.DC2, Ascii.GS, 2, Ascii.SUB, 8, Ascii.US, Ascii.DC2, 9, 4, Ascii.RS, Ascii.SO, 2, 3, 3, 8, Ascii.SO, Ascii.EM, 8, 9, 73, 70, 76, 90, 71, 65, 76, 6, 65, 70, 92, 77, 70, 92, 6, 73, 75, 92, 65, 71, 70, 6, 108, 109, 126, 97, 107, 109, 119, 123, 124, 103, 122, 105, 111, 109, 119, 100, 103, 127, 56, 55, Base64.padSymbol, 43, 54, 48, Base64.padSymbol, 119, 48, 55, 45, 60, 55, 45, 119, 56, 58, 45, 48, 54, 55, 119, Ascii.GS, Ascii.FS, Ascii.SI, Ascii.DLE, Ascii.SUB, Ascii.FS, 6, 10, Ascii.CR, Ascii.SYN, Ascii.VT, Ascii.CAN, Ascii.RS, Ascii.FS, 6, Ascii.SYN, Ascii.DC2, Ascii.NAK, Ascii.SUB, Ascii.DLE, 6, Ascii.ESC, Ascii.GS, Ascii.DLE, 90, Ascii.GS, Ascii.SUB, 0, 17, Ascii.SUB, 0, 90, Ascii.NAK, Ascii.ETB, 0, Ascii.GS, Ascii.ESC, Ascii.SUB, 90, 39, 55, 38, 49, 49, 58, 43, 59, 50, 50, 63, 48, 58, 44, 49, 55, 58, 112, 55, 48, 42, 59, 48, 42, 112, 63, Base64.padSymbol, 42, 55, 49, 48, 112, Ascii.CR, Ascii.GS, Ascii.FF, Ascii.ESC, Ascii.ESC, Ascii.DLE, 1, 17, Ascii.DLE, 127, 112, 122, 108, 113, 119, 122, 48, 112, 123, 106, 48, 125, 113, 112, 112, 48, 93, 81, 80, 80, 91, 93, 74, 87, 72, 87, 74, 71, 65, 93, 86, 95, 80, 89, 91, Ascii.VT, 4, Ascii.SO, Ascii.CAN, 5, 3, Ascii.SO, 68, 5, Ascii.EM, 68, Ascii.VT, 9, Ascii.RS, 3, 5, 4, 68, 46, 47, 60, 35, 41, 47, 53, 35, 46, 38, 47, 53, 39, 37, 46, 47, 53, 41, 34, 43, 36, 45, 47, 46, 117, 121, 120, 120, 115, 117, 98, 127, 96, 127, 98, 111};
    }

    public final int A09() {
        this.A00 = this.A05.A07(this.A03);
        IntentFilter intentFilter = new IntentFilter();
        if (this.A05.A0A()) {
            if (N1.A02 >= 24) {
                A05();
            } else {
                intentFilter.addAction(A02(233, 36, 85));
            }
        }
        if (this.A05.A08()) {
            intentFilter.addAction(A02(0, 44, 96));
            String[] strArr = A08;
            if (strArr[0].charAt(13) == strArr[7].charAt(13)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[0] = "G2AOV2V462hihMOpNOfAgzrhCZwz3WTj";
            strArr2[7] = "NBWDAaa8uGGe7TpQa5hdDMPXVqbtMJQn";
            intentFilter.addAction(A02(44, 47, 6));
        }
        if (this.A05.A09()) {
            if (N1.A02 >= 23) {
                intentFilter.addAction(A02(269, 42, 33));
            } else {
                intentFilter.addAction(A02(202, 31, 21));
                intentFilter.addAction(A02(170, 32, 63));
            }
        }
        if (this.A05.A0B()) {
            intentFilter.addAction(A02(91, 40, 99));
            intentFilter.addAction(A02(131, 39, 18));
        }
        this.A01 = new UE(this);
        this.A03.registerReceiver(this.A01, intentFilter, null, this.A04);
        return this.A00;
    }

    public final Requirements A0A() {
        return this.A05;
    }
}
