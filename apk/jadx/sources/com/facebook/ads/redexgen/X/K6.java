package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class K6 implements InterfaceC2469gQ {
    public static byte[] A06;
    public final InterfaceC2448g5 A00;
    public final HandlerC2455gC A01;
    public final C1618Hi A02;
    public final Handler A03;
    public final String A04;
    public final InterfaceC2463gK A05;

    static {
        A02();
    }

    public K6(C1618Hi c1618Hi, String str, InterfaceC2464gL interfaceC2464gL) {
        this.A02 = c1618Hi;
        this.A04 = str;
        DynamicLoaderFactory.makeLoader(this.A02).getInitApi().onAdLoadInvoked(this.A02);
        this.A00 = new K9(c1618Hi, this);
        this.A01 = new HandlerC2455gC(c1618Hi, this);
        this.A03 = new Handler(Looper.getMainLooper());
        this.A05 = interfaceC2464gL.A61(this.A00, this, this.A01);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 36);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A06 = new byte[]{-65, -46, -53, -63, -55, -62, -36, -62, -43, -47, -49, -66, -48, -36, -56, -62, -42, -46, -41, -35, -24, -50, -37, -37, -40, -37, -24, -52, -40, -51, -50, -24, -44, -50, -30, -83, -82, -84, -71, -101, -98, -71, -93, -98, -71, -91, -97, -77, -24, -23, -25, -12, -38, -25, -25, -28, -25, -12, -30, -38, -24, -24, -42, -36, -38, -12, -32, -38, -18};
    }

    public final InterfaceC2448g5 A03() {
        return this.A00;
    }

    public final String A04() {
        return this.A04;
    }

    public final void A05() {
        if (this.A01.A01) {
            this.A02.A0F().AJE();
            A06();
        } else {
            this.A02.A0F().AJ6();
            this.A01.A02 = true;
            this.A01.A0E(AbstractC2866my.A01.get());
        }
    }

    public final void A06() {
        this.A02.A0F().AJK();
        if (this.A01.A0F(this.A05.A91(), this.A05.A60(this.A04))) {
            return;
        }
        A0A();
        A09();
        this.A02.A0F().AJC();
    }

    public final void A07() {
        if (C2863mv.A0t(this.A02)) {
            ExecutorC3079qV.A00(new K7(this));
        }
    }

    public abstract void A08();

    public abstract void A09();

    public abstract void A0A();

    public final void A0B(int i) {
        this.A01.A0D(this.A02, i);
    }

    public final void A0C(int i, AdErrorType adErrorType, String str) {
        Bundle bundle = new Bundle();
        String strA01 = A01(48, 21, InterfaceC3669k1.d.b.k);
        if (str != null) {
            bundle.putString(strA01, str);
        } else {
            bundle.putString(strA01, adErrorType.getDefaultErrorMessage());
        }
        bundle.putInt(A01(17, 18, 101), adErrorType.getErrorCode());
        AFw(i, this.A04, bundle);
    }

    public final void A0D(Message message) {
        this.A05.AAN(message);
    }

    public abstract void A0E(boolean z);

    @Override // com.facebook.ads.redexgen.X.InterfaceC2469gQ
    public final void AFw(int i, String str, Bundle bundle) {
        Message messageObtain = Message.obtain((Handler) null, i);
        messageObtain.getData().putString(A01(35, 13, 54), str);
        if (bundle != null) {
            messageObtain.getData().putBundle(A01(0, 17, 89), bundle);
        }
        this.A03.post(new K8(this, messageObtain));
    }
}
