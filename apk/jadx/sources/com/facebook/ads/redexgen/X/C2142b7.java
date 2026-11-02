package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.SlowMotionData;
import com.google.android.gms.nearby.messages.NearbyMessagesStatusCodes;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.b7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2142b7 {
    public static byte[] A03;
    public static String[] A04 = {"zNK", "vIvWglcnQ7qKFb0Rok0hx", "c1ukHyGfRSnoNQd5OEd6G0pJfqf7lC", "iP7assWOFbLL7DDJmweoic8YvcJmysXt", "uXxcjU8o62g", "FqikrlfUwRV", "1rV7ujrtkRGNIaUMcxQUSxZM0OyLCHMu", "p4"};
    public static final C1979We A05;
    public static final C1979We A06;
    public int A01;
    public final List<C2139b4> A02 = new ArrayList();
    public int A00 = 0;

    static {
        A03();
        A06 = C1979We.A02(AbstractJsonLexerKt.COLON);
        A05 = C1979We.A02('*');
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    public static int A00(String str) throws L9 {
        byte b;
        switch (str.hashCode()) {
            case -1711564334:
                if (!str.equals(A02(16, 15, 97))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -1332107749:
                if (!str.equals(A02(104, 26, 68))) {
                    b = -1;
                } else {
                    b = 3;
                }
                break;
            case -1251387154:
                if (!str.equals(A02(51, 21, 31))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            case -830665521:
                if (!str.equals(A02(72, 32, InterfaceC3669k1.d.b.j))) {
                    b = -1;
                } else {
                    b = 4;
                }
                break;
            case 1760745220:
                if (!str.equals(A02(31, 20, 20))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return 2192;
            case 1:
                return 2816;
            case 2:
                return 2817;
            case 3:
                return 2819;
            case 4:
                return NearbyMessagesStatusCodes.BLUETOOTH_OFF;
            default:
                throw L9.A01(A02(0, 16, 74), null);
        }
    }

    public static SlowMotionData A01(C1744Mk c1744Mk, int i) throws L9 {
        ArrayList arrayList = new ArrayList();
        List<String> listA06 = A05.A06(c1744Mk.A0W(i));
        for (int i2 = 0; i2 < listA06.size(); i2++) {
            List<String> listA07 = A06.A06(listA06.get(i2));
            if (listA07.size() != 3) {
                throw L9.A01(null, null);
            }
            try {
                arrayList.add(new SlowMotionData.Segment(Long.parseLong(listA07.get(0)), Long.parseLong(listA07.get(1)), 1 << (Integer.parseInt(listA07.get(2)) - 1)));
            } catch (NumberFormatException e) {
                throw L9.A01(null, e);
            }
        }
        return new SlowMotionData(arrayList);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{100, 67, 91, 76, 65, 68, 73, Ascii.CR, 126, 104, 107, Ascii.CR, 67, 76, SignedBytes.MAX_POWER_OF_TWO, 72, 85, 106, 105, 113, 75, 105, 114, 111, 105, 104, 89, 66, 103, 114, 103, 32, 6, 3, Ascii.SYN, 1, 44, 32, Ascii.US, Ascii.FS, 4, 62, Ascii.FS, 7, Ascii.SUB, Ascii.FS, Ascii.GS, 44, 49, 52, 62, 43, Ascii.CR, 8, Ascii.GS, 10, 39, 43, Ascii.DC4, Ascii.ETB, Ascii.SI, 53, Ascii.ETB, Ascii.FF, 17, Ascii.ETB, Ascii.SYN, 39, 60, Ascii.EM, Ascii.FF, Ascii.EM, 68, 98, 103, 114, 101, 72, 68, 123, 120, 96, 90, 120, 99, 126, 120, 121, 72, 83, 114, 113, 123, 126, 116, 124, 114, 101, 126, 121, 112, 72, 88, 121, 112, 86, 83, 70, 81, 124, 112, 79, 76, 84, 110, 76, 87, 74, 76, 77, 124, 102, 71, 74, 87, 124, 103, 66, 87, 66};
    }

    private void A04(Q9 q9, ZH zh) throws IOException {
        C1744Mk c1744Mk = new C1744Mk(8);
        q9.readFully(c1744Mk.A0l(), 0, 8);
        this.A01 = c1744Mk.A0E() + 8;
        if (c1744Mk.A0C() != 1397048916) {
            zh.A00 = 0L;
        } else {
            zh.A00 = q9.A9Q() - ((long) (this.A01 - 12));
            this.A00 = 2;
        }
    }

    private void A05(Q9 q9, ZH zh) throws IOException {
        long jA90 = q9.A90();
        int i = (this.A01 - 12) - 8;
        C1744Mk c1744Mk = new C1744Mk(i);
        q9.readFully(c1744Mk.A0l(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            c1744Mk.A0g(2);
            short sA0a = c1744Mk.A0a();
            switch (sA0a) {
                case 2192:
                case 2816:
                case 2817:
                case 2819:
                case NearbyMessagesStatusCodes.BLUETOOTH_OFF /* 2820 */:
                    this.A02.add(new C2139b4(sA0a, (jA90 - ((long) this.A01)) - ((long) c1744Mk.A0E()), c1744Mk.A0E()));
                    break;
                default:
                    c1744Mk.A0g(8);
                    break;
            }
        }
        if (this.A02.isEmpty()) {
            zh.A00 = 0L;
        } else {
            this.A00 = 3;
            zh.A00 = this.A02.get(0).A02;
        }
    }

    private void A06(Q9 q9, List<Metadata.Entry> list) throws IOException {
        long jA9Q = q9.A9Q();
        int iA90 = (int) ((q9.A90() - q9.A9Q()) - ((long) this.A01));
        C1744Mk c1744Mk = new C1744Mk(iA90);
        q9.readFully(c1744Mk.A0l(), 0, iA90);
        for (int i = 0; i < this.A02.size(); i++) {
            C2139b4 c2139b4 = this.A02.get(i);
            c1744Mk.A0f((int) (c2139b4.A02 - jA9Q));
            c1744Mk.A0g(4);
            int iA0E = c1744Mk.A0E();
            if (A04[3].charAt(11) != 'L') {
                throw new RuntimeException();
            }
            A04[2] = "xMc6j4gz3ok9CZcN6alkrEQubRj6HZ";
            int iA00 = A00(c1744Mk.A0W(iA0E));
            int i2 = c2139b4.A01 - (iA0E + 8);
            switch (iA00) {
                case 2192:
                    list.add(A01(c1744Mk, i2));
                    break;
                case 2816:
                case 2817:
                case 2819:
                case NearbyMessagesStatusCodes.BLUETOOTH_OFF /* 2820 */:
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    public final int A07(Q9 q9, ZH zh, List<Metadata.Entry> list) throws IOException {
        long j = 0;
        switch (this.A00) {
            case 0:
                long jA90 = q9.A90();
                if (jA90 != -1 && jA90 >= 8) {
                    j = jA90 - 8;
                }
                zh.A00 = j;
                this.A00 = 1;
                return 1;
            case 1:
                A04(q9, zh);
                return 1;
            case 2:
                A05(q9, zh);
                return 1;
            case 3:
                A06(q9, list);
                zh.A00 = 0L;
                return 1;
            default:
                throw new IllegalStateException();
        }
    }

    public final void A08() {
        this.A02.clear();
        this.A00 = 0;
    }
}
