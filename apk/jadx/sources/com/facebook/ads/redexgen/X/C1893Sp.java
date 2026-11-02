package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.ads.AdSize;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1893Sp implements InterfaceC1815Pi {
    public static byte[] A05;
    public static String[] A06 = {"w7FmdcKa8pngMAI1ofM9tGcPgubEwS6I", "G4XM5A1ldBG3E5yA3epg3o5qg0QLp1T2", "glDZUWNu5T0zJFmfXUIs5xtG", "o9sC3VMeizDjQUTAC5wAvBEfTWobkrYh", "qsnEDthQ3OJnai8XV", "VFXKzS", "a5IEfHye95zKOrvSHpcHTRp6SfP6mQmG", "5rWd8cfd9Po2GSZijgcRQcfntIzg1gOO"};
    public WB A00;
    public final int A01;
    public final long A02;
    public final Context A03;
    public final InterfaceC1872Ru A04;

    static {
        A01();
    }

    public C1893Sp(Context context) {
        this(context, 0);
    }

    public C1893Sp(Context context, int i) {
        this(context, null, i, 5000L);
    }

    @Deprecated
    public C1893Sp(Context context, InterfaceC1872Ru interfaceC1872Ru, int i, long j) {
        this.A00 = new C1899Sv(this);
        this.A03 = context;
        this.A01 = i;
        this.A02 = j;
        this.A04 = interfaceC1872Ru;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 46);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{73, 104, 107, 108, 120, 97, 121, 95, 104, 99, 105, 104, 127, 104, 127, 126, 75, 108, 110, 121, 98, 127, 116, 82, 101, 101, 120, 101, 55, 126, 121, 100, 99, 118, 121, 99, 126, 118, 99, 126, 121, 112, 55, 81, 81, 122, 103, 114, 112, 55, 114, 111, 99, 114, 121, 100, 126, 120, 121, 76, 123, 123, 102, 123, 41, 96, 103, 122, 125, 104, 103, 125, 96, 104, 125, 96, 103, 110, 41, 79, 69, 72, 74, 41, 108, 113, 125, 108, 103, 122, 96, 102, 103, Ascii.FF, 59, 59, 38, 59, 105, 32, 39, 58, Base64.padSymbol, 40, 39, Base64.padSymbol, 32, 40, Base64.padSymbol, 32, 39, 46, 105, 6, 57, 60, 58, 105, 44, 49, Base64.padSymbol, 44, 39, 58, 32, 38, 39, 95, 104, 104, 117, 104, 58, 115, 116, 105, 110, 123, 116, 110, 115, 123, 110, 115, 116, 125, 58, 76, 74, 35, 58, 127, 98, 110, 127, 116, 105, 115, 117, 116, 122, 89, 87, 82, 83, 82, Ascii.SYN, 112, 80, 91, 70, 83, 81, 119, 67, 82, 95, 89, 100, 83, 88, 82, 83, 68, 83, 68, Ascii.CAN, 39, 4, 10, Ascii.SI, Ascii.SO, Ascii.SI, 75, 39, 2, 9, Ascii.CR, 7, 10, 8, 42, Ascii.RS, Ascii.SI, 2, 4, 57, Ascii.SO, 5, Ascii.SI, Ascii.SO, Ascii.EM, Ascii.SO, Ascii.EM, 69, Ascii.CR, 46, 32, 37, 36, 37, 97, Ascii.CR, 40, 35, 46, 49, 52, 50, 0, 52, 37, 40, 46, 19, 36, 47, 37, 36, 51, 36, 51, 111, 17, 50, 60, 57, 56, 57, 125, 17, 52, 63, 43, 45, 37, Ascii.VT, 52, 57, 56, 50, Ascii.SI, 56, 51, 57, 56, 47, 56, 47, 115, Ascii.SO, 2, 0, 67, Ascii.VT, Ascii.FF, Ascii.SO, 8, Ascii.SI, 2, 2, 6, 67, Ascii.FF, 9, Ascii.RS, 67, Ascii.FF, 3, 9, Ascii.US, 2, 4, 9, Ascii.NAK, 67, 0, 8, 9, 4, Ascii.FF, 94, 67, 8, Ascii.NAK, 2, Ascii.GS, 1, Ascii.FF, Ascii.DC4, 8, Ascii.US, 67, 8, Ascii.NAK, Ascii.EM, 67, Ascii.VT, Ascii.VT, 0, Ascii.GS, 8, 10, 67, 43, Ascii.VT, 0, Ascii.GS, 8, 10, 44, Ascii.CAN, 9, 4, 2, 63, 8, 3, 9, 8, Ascii.US, 8, Ascii.US, 119, 123, 121, 58, 114, 117, 119, 113, 118, 123, 123, 127, 58, 117, 112, 103, 58, 117, 122, 112, 102, 123, 125, 112, 108, 58, 121, 113, 112, 125, 117, 39, 58, 113, 108, 123, 100, 120, 117, 109, 113, 102, 58, 113, 108, 96, 58, 114, 120, 117, 119, 58, 88, 125, 118, 114, 120, 117, 119, 85, 97, 112, 125, 123, 70, 113, 122, 112, 113, 102, 113, 102, 19, Ascii.US, Ascii.GS, 94, Ascii.SYN, 17, 19, Ascii.NAK, Ascii.DC2, Ascii.US, Ascii.US, Ascii.ESC, 94, 17, Ascii.DC4, 3, 94, 17, Ascii.RS, Ascii.DC4, 2, Ascii.US, Ascii.EM, Ascii.DC4, 8, 94, Ascii.GS, Ascii.NAK, Ascii.DC4, Ascii.EM, 17, 67, 94, Ascii.NAK, 8, Ascii.US, 0, Ascii.FS, 17, 9, Ascii.NAK, 2, 94, Ascii.NAK, 8, 4, 94, Ascii.US, 0, 5, 3, 94, 60, Ascii.EM, Ascii.DC2, Ascii.US, 0, 5, 3, 49, 5, Ascii.DC4, Ascii.EM, Ascii.US, 34, Ascii.NAK, Ascii.RS, Ascii.DC4, Ascii.NAK, 2, Ascii.NAK, 2, 105, 101, 103, 36, 108, 107, 105, 111, 104, 101, 101, 97, 36, 107, 110, 121, 36, 107, 100, 110, 120, 101, 99, 110, 114, 36, 103, 111, 110, 99, 107, 57, 36, 111, 114, 101, 122, 102, 107, 115, 111, 120, 36, 111, 114, 126, 36, 124, 122, 51, 36, 70, 99, 104, 124, 122, 114, 92, 99, 110, 111, 101, 88, 111, 100, 110, 111, 120, 111, 120};
    }

    private final void A02(Context context, InterfaceC1872Ru interfaceC1872Ru, long j, Handler handler, YC yc, int i, ArrayList<InterfaceC1884Sg> arrayList) {
        arrayList.add(new C3X(context, C2001Xc.A0a, new C2004Xf(null, false), TG.A00, j, interfaceC1872Ru, false, false, handler, yc, 50, 5, 0, 0, 0));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                Class<?> cls = Class.forName(A00(487, 70, 36));
                Class<?> cls2 = Integer.TYPE;
                try {
                    arrayList.add(size, (InterfaceC1884Sg) cls.getConstructor(Boolean.TYPE, Long.TYPE, Handler.class, YC.class, cls2, cls2).newInstance(true, Long.valueOf(j), handler, yc, 50, 5));
                    Log.i(A00(0, 23, 35), A00(243, 27, 115));
                } catch (Exception e) {
                    e = e;
                    throw new RuntimeException(A00(127, 33, 52), e);
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (ClassNotFoundException unused) {
        }
    }

    private final void A03(Context context, InterfaceC1872Ru interfaceC1872Ru, LZ[] lzArr, Handler handler, InterfaceC1830Qe interfaceC1830Qe, int i, ArrayList<InterfaceC1884Sg> arrayList) {
        int i2;
        int i3;
        String strA00 = A00(0, 23, 35);
        arrayList.add(new C3Z(context, C2001Xc.A0a, new C2004Xf(null, false), TG.A00, interfaceC1872Ru, false, false, false, handler, interfaceC1830Qe, QG.A02(context), lzArr));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            i2 = size + 1;
            try {
                arrayList.add(size, (InterfaceC1884Sg) Class.forName(A00(415, 72, 94)).getConstructor(Handler.class, InterfaceC1830Qe.class, LZ[].class).newInstance(handler, interfaceC1830Qe, lzArr));
                Log.i(strA00, A00(215, 28, 111));
            } catch (ClassNotFoundException unused) {
                size = i2;
                i2 = size;
            } catch (Exception e) {
                e = e;
                throw new RuntimeException(A00(93, 34, 103), e);
            }
        } catch (ClassNotFoundException unused2) {
        } catch (Exception e2) {
            e = e2;
        }
        try {
            i3 = i2 + 1;
            try {
                arrayList.add(i2, (InterfaceC1884Sg) Class.forName(A00(343, 72, 58)).getConstructor(Handler.class, InterfaceC1830Qe.class, LZ[].class).newInstance(handler, interfaceC1830Qe, lzArr));
                Log.i(strA00, A00(187, 28, 69));
            } catch (ClassNotFoundException unused3) {
                i2 = i3;
                i3 = i2;
            } catch (Exception e3) {
                e = e3;
                throw new RuntimeException(A00(59, 34, 39), e);
            }
        } catch (ClassNotFoundException unused4) {
        } catch (Exception e4) {
            e = e4;
        }
        try {
            try {
                try {
                    arrayList.add(i3, (InterfaceC1884Sg) Class.forName(A00(270, 73, 67)).getConstructor(Handler.class, InterfaceC1830Qe.class, LZ[].class).newInstance(handler, interfaceC1830Qe, lzArr));
                    Log.i(strA00, A00(AdSize.WIDE_SKYSCRAPER_WIDTH, 27, 24));
                } catch (Exception e5) {
                    e = e5;
                    throw new RuntimeException(A00(23, 36, 57), e);
                }
            } catch (Exception e6) {
                e = e6;
            }
        } catch (ClassNotFoundException unused5) {
        }
    }

    private final void A04(Context context, TS ts, Looper looper, int i, ArrayList<InterfaceC1884Sg> arrayList) {
        arrayList.add(new C4G(ts, looper));
    }

    private final void A05(Context context, WE we, Looper looper, int i, ArrayList<InterfaceC1884Sg> arrayList) {
        arrayList.add(new C4C(we, looper, this.A00));
    }

    private final LZ[] A06() {
        return new LZ[0];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1815Pi
    public final InterfaceC1884Sg[] A67(Handler handler, YC yc, InterfaceC1830Qe interfaceC1830Qe, WE we, TS ts, InterfaceC1872Ru interfaceC1872Ru) {
        InterfaceC1872Ru interfaceC1872Ru2 = interfaceC1872Ru;
        if (interfaceC1872Ru2 == null) {
            interfaceC1872Ru2 = this.A04;
            String[] strArr = A06;
            if (strArr[6].charAt(18) != strArr[7].charAt(18)) {
                throw new RuntimeException();
            }
            A06[2] = "WfeVjcmwJbgNQHCJ";
        }
        ArrayList<InterfaceC1884Sg> arrayList = new ArrayList<>();
        A02(this.A03, interfaceC1872Ru2, this.A02, handler, yc, this.A01, arrayList);
        A03(this.A03, interfaceC1872Ru2, A06(), handler, interfaceC1830Qe, this.A01, arrayList);
        A05(this.A03, we, handler.getLooper(), this.A01, arrayList);
        A04(this.A03, ts, handler.getLooper(), this.A01, arrayList);
        return (InterfaceC1884Sg[]) arrayList.toArray(new InterfaceC1884Sg[arrayList.size()]);
    }
}
