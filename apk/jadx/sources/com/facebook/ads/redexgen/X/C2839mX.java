package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.facebook.ads.internal.util.common.Preconditions;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mX, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2839mX {
    public static byte[] A06;
    public static String[] A07 = {"eZRg0", "9V6E8W", "xj5QhV", "OA95VIvTvwhgOpg1JzD5APn5ld4Fxl09", "KVXKxw3vFVm2nsonOqXLQ2M9", "1wiEXg5TWKy6aTJl", "hr3sX5JQ1zlqribj", "Vt9t5ut5ZgjhHbMTByjzA5y3IT5Rov5"};
    public C2858mq A00;
    public final Handler A01 = new Handler(Looper.getMainLooper());
    public final C2755lA A02;
    public final AbstractC2833mR<String> A03;
    public final InterfaceC2849mh<C2881nD> A04;
    public final C2881nD A05;

    static {
        A02();
    }

    public C2839mX(C2881nD c2881nD, AbstractC2833mR<String> abstractC2833mR, InterfaceC2849mh<C2881nD> interfaceC2849mh, C2755lA c2755lA) {
        this.A05 = c2881nD;
        this.A04 = interfaceC2849mh;
        this.A03 = abstractC2833mR;
        this.A02 = c2755lA;
    }

    private String A00() {
        String string = null;
        try {
            string = UUID.randomUUID().toString();
            this.A02.A08().AAh(this.A05.A06().toString());
            if (TextUtils.isEmpty(this.A05.A08())) {
                return null;
            }
            if (this.A02.A05().AB6()) {
                String str = A01(29, 15, 118) + this.A05.A06().toString() + A01(0, 1, 13) + this.A05.A09().toString();
            }
            this.A04.ALa(H8.A07(this.A02, string, this.A05));
        } catch (C2858mq e) {
            this.A00 = e;
            this.A02.A08().ABz(A01(44, 15, 76), AbstractC2786lf.A2N, new C2787lg(e));
        }
        return string;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 55);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{Ascii.SUB, 40, Ascii.US, Ascii.US, 2, Ascii.US, 77, 0, 8, Ascii.RS, Ascii.RS, Ascii.FF, 10, 8, 77, Ascii.SO, Ascii.FF, 3, 3, 2, Ascii.EM, 77, Ascii.SI, 8, 77, 3, Ascii.CAN, 1, 1, Ascii.CR, 46, 38, 38, 40, 47, 38, 97, 36, 55, 36, 47, 53, 123, 97, 9, Ascii.RS, Ascii.CAN, Ascii.DC4, 9, Ascii.US, 36, Ascii.US, Ascii.SUB, Ascii.SI, Ascii.SUB, Ascii.EM, Ascii.SUB, 8, Ascii.RS};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A03, reason: merged with bridge method [inline-methods] */
    public void A05(String str) {
        if (this.A00 == null) {
            AbstractC2833mR<String> abstractC2833mR = this.A03;
            if (A07[0].length() == 0) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[5] = "shQ0u07cw4p4b8Uc";
            strArr[6] = "JjSvAUnNTB5Zbg5c";
            abstractC2833mR.A02(str);
            return;
        }
        AbstractC2833mR<String> abstractC2833mR2 = this.A03;
        String str2 = (String) Preconditions.checkNotNull(this.A00.getMessage(), A01(1, 28, 90));
        String[] strArr2 = A07;
        if (strArr2[5].length() != strArr2[6].length()) {
            abstractC2833mR2.A01(0, str2);
        } else {
            A07[4] = "N66E9jsqBkZQOUjdGlNkK47WGUg";
            abstractC2833mR2.A01(0, str2);
        }
    }

    public final /* synthetic */ void A04() {
        final String strA00 = A00();
        this.A01.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.mV
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A05(strA00);
            }
        });
    }

    public final void A06(Executor executor) {
        executor.execute(new Runnable() { // from class: com.facebook.ads.redexgen.X.mW
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A04();
            }
        });
    }
}
