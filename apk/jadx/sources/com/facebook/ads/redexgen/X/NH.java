package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.google.common.base.Ascii;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class NH implements InterfaceC2283dO {
    public static byte[] A01;
    public static String[] A02 = {"0PvfoUFANCVNmnYZfPoejD6ohCtuxysE", "CTVBuEwwodohpQOP7b4j4", "9BgxiAbaVpMmFPJgyPUrG0VpyjL4diCu", "0p8mXLPxFyBv4phdqx8YrWMD1W9nJbZf", "G0yvPsPNC2vYmeMn8hYLEKyQ1tXXfhoe", "IW3zcZDApc8b2NyXBv", "Oqr2oLquorC4BSN9LXFNL8a9XNzmbM1Z", com.ironsource.G5.q};
    public static final String A03;
    public final ExecutorService A00 = Executors.newSingleThreadExecutor();

    static {
        A04();
        A03 = NH.class.getSimpleName();
    }

    private long A02(List<File> list) {
        long length = 0;
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            length += it.next().length();
        }
        return length;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 54);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A01 = new byte[]{-104, -34, -25, -22, -104, -20, -22, -31, -27, -27, -31, -26, -33, -104, -37, -39, -37, -32, -35, -50, Ascii.ETB, 33, -50, Ascii.DC2, 19, Ascii.SUB, 19, 34, 19, Ascii.DC2, -50, Ascii.DLE, 19, 17, Ascii.SI, 35, 33, 19, -50, Ascii.ETB, 34, -50, 19, 38, 17, 19, 19, Ascii.DC2, 33, -50, 17, Ascii.SI, 17, Ascii.SYN, 19, -50, Ascii.SUB, Ascii.ETB, Ascii.ESC, Ascii.ETB, 34, -125, -95, -93, -88, -91, 96, -90, -87, -84, -91, 96, -10, 35, 35, 32, 35, -47, Ascii.NAK, Ascii.SYN, Ascii.GS, Ascii.SYN, 37, Ascii.SUB, Ascii.US, Ascii.CAN, -47, Ascii.ETB, Ascii.SUB, Ascii.GS, Ascii.SYN, -47};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(File file) throws IOException {
        C2286dR.A03(file);
        A07(C2286dR.A01(file.getParentFile()));
    }

    private void A07(List<File> list) {
        long jA02 = A02(list);
        int size = list.size();
        for (File file : list) {
            String[] strArr = A02;
            if (strArr[5].length() == strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[0] = "0WEexOrIiLXDlCjHBxNry1dxuPi8TFF2";
            strArr2[3] = "0ARlW4XVdH4TDXa7R7a2wpH1vFPRrHRN";
            if (!A08(file, jA02, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    jA02 -= length;
                    Log.i(A03, A03(61, 11, 10) + file + A03(19, 42, 120));
                } else {
                    Log.e(A03, A03(72, 20, 123) + file + A03(0, 19, 66));
                }
            }
        }
    }

    public abstract boolean A08(File file, long j, int i);

    @Override // com.facebook.ads.redexgen.X.InterfaceC2283dO
    public void ALl(File file) throws IOException {
        this.A00.submit(new CallableC2287dS(this, file));
    }
}
