package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.ads.AdError;
import com.google.common.base.Ascii;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ez, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2380ez extends BroadcastReceiver {
    public static byte[] A04;
    public static String[] A05 = {"Mqy89T38jyDNWJYJSU97Fc", "8J9Kjrdi7zCHtnCCZzRPzmuoDEsoDeEL", "VQNvZgn", "c7o7ADX8z3LY2p80YK3DAawzYrr5z54S", "gktsaQP9OjZySj1PqQ2WnsX4vKhqWtKG", "61ITioRvjCkhn", "SKricJIDyiylSn4Sa9TNq02zv28wIgF", "PC7X20f3JEut9CIsHKyQodWFOl4CO7PL"};
    public C1725Lq A00;
    public InterfaceC2379ey A01;
    public C1618Hi A02;
    public String A03;

    static {
        A01();
    }

    public C2380ez(C1618Hi c1618Hi, String str, C1725Lq c1725Lq, InterfaceC2379ey interfaceC2379ey) {
        this.A02 = c1618Hi;
        this.A03 = str;
        this.A01 = interfaceC2379ey;
        this.A00 = c1725Lq;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 53);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-39, -92, -80, -82, 111, -89, -94, -92, -90, -93, -80, -80, -84, 111, -94, -91, -76, 111, -86, -81, -75, -90, -77, -76, -75, -86, -75, -86, -94, -83, 111, -94, -92, -75, -86, -73, -86, -75, -70, -96, -91, -90, -76, -75, -77, -80, -70, -90, -91, -72, -60, -62, -125, -69, -74, -72, -70, -73, -60, -60, -64, -125, -74, -71, -56, -125, -66, -61, -55, -70, -57, -56, -55, -66, -55, -66, -74, -63, -125, -74, -72, -55, -66, -53, -66, -55, -50, -76, -71, -70, -56, -55, -57, -60, -50, -70, -71, -113, -44, -32, -34, -97, -41, -46, -44, -42, -45, -32, -32, -36, -97, -46, -43, -28, -97, -38, -33, -27, -42, -29, -28, -27, -38, -27, -38, -46, -35, -97, -44, -35, -38, -44, -36, -42, -43, Ascii.CR, Ascii.EM, Ascii.ETB, -40, Ascii.DLE, Ascii.VT, Ascii.CR, Ascii.SI, Ascii.FF, Ascii.EM, Ascii.EM, Ascii.NAK, -40, Ascii.VT, Ascii.SO, Ascii.GS, -40, 19, Ascii.CAN, Ascii.RS, Ascii.SI, Ascii.FS, Ascii.GS, Ascii.RS, 19, Ascii.RS, 19, Ascii.VT, Ascii.SYN, -40, Ascii.CR, Ascii.SYN, 19, Ascii.CR, Ascii.NAK, Ascii.SI, Ascii.SO, -28, -87, -75, -77, 116, -84, -89, -87, -85, -88, -75, -75, -79, 116, -89, -86, -71, 116, -81, -76, -70, -85, -72, -71, -70, -81, -70, -81, -89, -78, 116, -86, -81, -71, -77, -81, -71, -71, -85, -86, -76, -64, -66, 127, -73, -78, -76, -74, -77, -64, -64, -68, 127, -78, -75, -60, 127, -70, -65, -59, -74, -61, -60, -59, -70, -59, -70, -78, -67, 127, -75, -70, -60, -66, -70, -60, -60, -74, -75, -117, -58, -46, -48, -111, -55, -60, -58, -56, -59, -46, -46, -50, -111, -60, -57, -42, -111, -52, -47, -41, -56, -43, -42, -41, -52, -41, -52, -60, -49, -111, -57, -52, -42, -45, -49, -60, -36, -56, -57, -30, -18, -20, -83, -27, -32, -30, -28, -31, -18, -18, -22, -83, -32, -29, -14, -83, -24, -19, -13, -28, -15, -14, -13, -24, -13, -24, -32, -21, -83, -29, -24, -14, -17, -21, -32, -8, -28, -29, -71, -104, -92, -94, 99, -101, -106, -104, -102, -105, -92, -92, -96, 99, -106, -103, -88, 99, -98, -93, -87, -102, -89, -88, -87, -98, -87, -98, -106, -95, 99, -102, -89, -89, -92, -89, -53, -41, -43, -106, -50, -55, -53, -51, -54, -41, -41, -45, -106, -55, -52, -37, -106, -47, -42, -36, -51, -38, -37, -36, -47, -36, -47, -55, -44, -106, -51, -38, -38, -41, -38, -94, -66, -54, -56, -119, -63, -68, -66, -64, -67, -54, -54, -58, -119, -68, -65, -50, -119, -60, -55, -49, -64, -51, -50, -49, -60, -49, -60, -68, -57, -119, -63, -60, -55, -60, -50, -61, -70, -68, -66, -49, -60, -47, -60, -49, -44, -107, -93, -81, -83, 110, -90, -95, -93, -91, -94, -81, -81, -85, 110, -95, -92, -77, 110, -87, -82, -76, -91, -78, -77, -76, -87, -76, -87, -95, -84, 110, -87, -83, -80, -78, -91, -77, -77, -87, -81, -82, 110, -84, -81, -89, -89, -91, -92, -75, -63, -65, -128, -72, -77, -75, -73, -76, -63, -63, -67, -128, -77, -74, -59, -128, -69, -64, -58, -73, -60, -59, -58, -69, -58, -69, -77, -66, -128, -69, -65, -62, -60, -73, -59, -59, -69, -63, -64, -128, -66, -63, -71, -71, -73, -74, -116, -52, -40, -42, -105, -49, -54, -52, -50, -53, -40, -40, -44, -105, -54, -51, -36, -105, -46, -41, -35, -50, -37, -36, -35, -46, -35, -46, -54, -43, -105, -37, -50, -32, -54, -37, -51, -23, -11, -13, -76, -20, -25, -23, -21, -24, -11, -11, -15, -76, -25, -22, -7, -76, -17, -12, -6, -21, -8, -7, -6, -17, -6, -17, -25, -14, -76, -8, -21, -3, -25, -8, -22, -64, Ascii.NAK, 33, Ascii.US, -32, Ascii.CAN, 19, Ascii.NAK, Ascii.ETB, Ascii.DC4, 33, 33, Ascii.GS, -32, 19, Ascii.SYN, 37, -32, Ascii.ESC, 32, 38, Ascii.ETB, 36, 37, 38, Ascii.ESC, 38, Ascii.ESC, 19, Ascii.RS, -32, 36, Ascii.ETB, 41, 19, 36, Ascii.SYN, 17, 37, Ascii.ETB, 36, 40, Ascii.ETB, 36, 17, Ascii.CAN, 19, Ascii.ESC, Ascii.RS, 39, 36, Ascii.ETB, -61, -49, -51, -114, -58, -63, -61, -59, -62, -49, -49, -53, -114, -63, -60, -45, -114, -55, -50, -44, -59, -46, -45, -44, -55, -44, -55, -63, -52, -114, -46, -59, -41, -63, -46, -60, -65, -45, -59, -46, -42, -59, -46, -65, -58, -63, -55, -52, -43, -46, -59, -102, -46, -34, -36, -99, -43, -48, -46, -44, -47, -34, -34, -38, -99, -48, -45, -30, -99, -40, -35, -29, -44, -31, -30, -29, -40, -29, -40, -48, -37, -99, -31, -44, -26, -48, -31, -45, -50, -30, -44, -31, -27, -44, -31, -50, -30, -28, -46, -46, -44, -30, -30, -73, -61, -63, -126, -70, -75, -73, -71, -74, -61, -61, -65, -126, -75, -72, -57, -126, -67, -62, -56, -71, -58, -57, -56, -67, -56, -67, -75, -64, -126, -58, -71, -53, -75, -58, -72, -77, -57, -71, -58, -54, -71, -58, -77, -57, -55, -73, -73, -71, -57, -57, -114};
    }

    public final void A02() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A00(495, 48, 29) + this.A03);
        intentFilter.addAction(A00(291, 40, 74) + this.A03);
        intentFilter.addAction(A00(212, 40, 28) + this.A03);
        intentFilter.addAction(A00(135, 38, 117) + this.A03);
        intentFilter.addAction(A00(366, 36, 51) + this.A03);
        intentFilter.addAction(A00(49, 49, 32) + this.A03);
        intentFilter.addAction(A00(579, 37, 81) + this.A03);
        intentFilter.addAction(A00(770, 52, 31) + this.A03);
        intentFilter.addAction(A00(667, 52, 43) + this.A03);
        intentFilter.addAction(A00(TypedValues.CycleType.TYPE_VISIBILITY, 46, 38) + this.A03);
        C2500gw.A00(this.A02).A06(this, intentFilter);
    }

    public final void A03() {
        try {
            C2500gw.A00(this.A02).A05(this);
        } catch (Exception unused) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        String str = action.split(A00(0, 1, kotlin.fh.g1))[0];
        if (this.A01 == null || str == null) {
            return;
        }
        if (A00(98, 37, 60).equals(str)) {
            InterfaceC2379ey interfaceC2379ey = this.A01;
            C1725Lq c1725Lq = this.A00;
            if (A05[0].length() != 22) {
                throw new RuntimeException();
            }
            A05[3] = "aZIvEWsb8DNHwIIatfYd47toXevBFNNm";
            interfaceC2379ey.AFF(c1725Lq, null, true);
            return;
        }
        if (A00(173, 39, 17).equals(str)) {
            InterfaceC2379ey interfaceC2379ey2 = this.A01;
            C1725Lq c1725Lq2 = this.A00;
            if (A05[3].charAt(4) != 'D') {
                A05[0] = "TqpNublq1V6zWfVafs4QLB";
                interfaceC2379ey2.AFG(c1725Lq2);
                return;
            } else {
                A05[3] = "eUYQ7IhEg8fLvUIhXbZonlQsFkme40oK";
                interfaceC2379ey2.AFG(c1725Lq2);
                return;
            }
        }
        if (A00(252, 39, 46).equals(str)) {
            this.A01.AFH(this.A00);
            return;
        }
        if (A00(448, 47, 11).equals(str)) {
            this.A01.AFK(this.A00);
            return;
        }
        if (A00(331, 35, 0).equals(str)) {
            if (C2863mv.A1y(context)) {
                this.A01.AFJ(this.A00, AdError.AD_PRESENTATION_ERROR);
                return;
            } else {
                this.A01.AFJ(this.A00, AdError.INTERNAL_ERROR);
                return;
            }
        }
        if (!A00(1, 48, 12).equals(str)) {
            if (A00(543, 36, 52).equals(str)) {
                this.A01.AFL();
                return;
            }
            if (!A00(719, 51, 58).equals(str)) {
                if (A00(IronSourceError.ERROR_BN_UNSUPPORTED_SIZE, 51, 125).equals(str)) {
                    this.A01.AFM();
                    return;
                }
                return;
            } else {
                InterfaceC2379ey interfaceC2379ey3 = this.A01;
                if (A05[7].charAt(0) != 'P') {
                    throw new RuntimeException();
                }
                A05[0] = "2dNMpRkIvORsTqY7tSIXPx";
                interfaceC2379ey3.AFN();
                return;
            }
        }
        InterfaceC2379ey interfaceC2379ey4 = this.A01;
        String[] strArr = A05;
        if (strArr[5].length() != strArr[6].length()) {
            String[] strArr2 = A05;
            strArr2[5] = "PFaD7A78iWhw0";
            strArr2[6] = "Xokjp6dtHHi9pHEHnv2i6gjJxblfyLK";
            interfaceC2379ey4.onInterstitialActivityDestroyed();
            return;
        }
        String[] strArr3 = A05;
        strArr3[5] = "QgYf1mTjAK5D7";
        strArr3[6] = "MAH4q6CsALUjtSr7ZeRTo0JQtTwrXFy";
        interfaceC2379ey4.onInterstitialActivityDestroyed();
    }
}
