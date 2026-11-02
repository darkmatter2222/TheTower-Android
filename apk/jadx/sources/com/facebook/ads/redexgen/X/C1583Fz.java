package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.app.AlertDialog;
import android.widget.EditText;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import com.google.android.gms.ads.AdSize;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Executor;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1583Fz implements InterfaceC3104qu {
    public static byte[] A04;
    public C1617Hh A00;
    public C2805ly A01;
    public InterfaceC2189bs A02;
    public final Executor A03;

    static {
        A06();
    }

    public C1583Fz(Executor executor, C2805ly c2805ly, C1618Hi c1618Hi) {
        this.A00 = c1618Hi.A02();
        this.A02 = C2114af.A01(this.A00);
        this.A03 = executor;
        this.A01 = c2805ly;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> A02(String str) {
        C2134az c2134az = new C2134az();
        C2134az c2134az2 = new C2134az();
        C2134az c2134az3 = new C2134az();
        c2134az.put(A03(257, 15, 96), AbstractC2723kb.A00().A03());
        c2134az.put(A03(220, 9, InterfaceC3669k1.d.b.j), A03(15, 15, 13));
        c2134az.put(A03(186, 11, 18), A03(0, 15, 38));
        c2134az.put(A03(174, 12, 5), A03(30, 48, 9));
        c2134az.put(A03(197, 11, 54), (System.currentTimeMillis() / 1000) + A03(0, 0, 125));
        String strA09 = this.A01.A09();
        if (strA09 != null) {
            c2134az3.put(A03(208, 12, 70), strA09);
        }
        c2134az2.put(A03(229, 11, 59), str);
        c2134az2.put(A03(248, 9, 102), AbstractC3052q4.A01(c2134az3));
        c2134az.A04(A03(240, 8, 47), AbstractC3052q4.A01(c2134az2));
        return c2134az;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 127);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A04 = new byte[]{107, 110, 110, 104, 109, 96, 104, 106, 111, 107, 106, 105, 110, 104, 107, SignedBytes.MAX_POWER_OF_TWO, 75, 69, 66, 65, 71, 70, SignedBytes.MAX_POWER_OF_TWO, 66, 74, 74, 71, 70, 65, 70, SignedBytes.MAX_POWER_OF_TWO, 79, 69, 79, 67, 69, 79, 66, 70, 79, 79, 65, 79, 70, 71, 10, 79, Ascii.DC4, Ascii.DLE, 68, 79, Ascii.ETB, 71, Ascii.DLE, 68, 65, 66, 67, 65, 66, SignedBytes.MAX_POWER_OF_TWO, Ascii.ETB, SignedBytes.MAX_POWER_OF_TWO, Ascii.NAK, SignedBytes.MAX_POWER_OF_TWO, 70, Ascii.DC2, 65, 70, 65, Ascii.DLE, 67, Ascii.DC4, Ascii.NAK, 68, 69, Ascii.NAK, 68, 116, 86, 89, 84, 82, 91, Ascii.RS, 50, 42, 115, 60, 39, 59, 54, 33, 32, 115, 63, 60, 52, 58, Base64.padSymbol, 115, 50, 32, 115, 42, 60, 38, 115, 39, 60, 115, 55, 54, 49, 38, 52, 108, 115, Ascii.ESC, 60, 36, 115, 55, 60, 115, 42, 60, 38, 115, 33, 54, 35, 33, 60, 55, 38, 48, 54, 115, 39, 59, 54, 115, 58, 32, 32, 38, 54, 108, 83, 101, 110, 100, 32, 82, 101, 112, 111, 114, 116, 52, Ascii.VT, 2, Ascii.ETB, 67, 43, 2, 19, 19, 6, Ascii.CR, 6, 7, 92, Ascii.ESC, Ascii.EM, Ascii.EM, Ascii.US, 9, 9, 37, Ascii.SO, Ascii.NAK, 17, Ascii.US, Ascii.DC4, Ascii.SO, Ascii.FF, Ascii.EM, 8, 10, 2, Ascii.US, Ascii.DC4, 50, 4, 9, 42, 37, 32, 44, 39, Base64.padSymbol, Ascii.SYN, Base64.padSymbol, 32, 36, 44, 90, 85, 80, 92, 87, 77, 102, 77, 86, 82, 92, 87, 108, 96, 97, 105, 102, 104, 80, 102, 107, 32, 33, 55, 39, 54, 45, 52, 48, 45, 43, 42, Base64.padSymbol, 53, 36, 49, 52, 49, 36, 49, 116, 112, 106, 122, 70, 112, 119, 127, 118, 106, 108, 122, 109, SignedBytes.MAX_POWER_OF_TWO, 118, 123, 122, 113, 107, 118, 121, 118, 122, 109};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(C2805ly c2805ly) {
        this.A01 = c2805ly;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3104qu
    public final void AH2() {
        Activity activityA00 = ActivityUtils.A00();
        if (activityA00 == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activityA00);
        builder.setTitle(A03(AdSize.WIDE_SKYSCRAPER_WIDTH, 14, 28));
        EditText editText = new EditText(activityA00);
        editText.setSingleLine(false);
        editText.setImeOptions(1073741824);
        editText.setHint(A03(84, 65, 44));
        editText.setMaxLines(2);
        editText.setMinLines(2);
        builder.setView(editText);
        builder.setNegativeButton(A03(78, 6, 72), new DialogInterfaceOnClickListenerC3101qr(this));
        builder.setPositiveButton(A03(149, 11, 127), new DialogInterfaceOnClickListenerC3102qs(this, editText));
        builder.create().show();
    }
}
