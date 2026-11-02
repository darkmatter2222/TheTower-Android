package com.facebook.ads.redexgen.X;

import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.google.common.base.Ascii;
import com.ironsource.C3829se;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HandlerC2455gC extends Handler {
    public static byte[] A0A;
    public static String[] A0B = {"gcJlMo3lQ2pvKCdW2p1sJtuziP4vmf3g", "UeVkxUw", "", "mK9oSbAokt8TQ0dXUmD3wWyanMNanYZS", "2sppJEO", "qJx5aWB0ThxzYc01mDGkt7c3QG7aYNlh", "VEMLINTEzdP6zY82lzj", "ayakGQouLRgcgrHEvJCPTB1FEKY99m"};
    public Messenger A00;
    public boolean A01;
    public boolean A02;
    public final ServiceConnection A03;
    public final Handler A04;
    public final Messenger A05;
    public final K6 A06;
    public final C1618Hi A07;
    public final C1617Hh A08;
    public final AbstractRunnableC2979oq A09;

    static {
        A07();
    }

    public HandlerC2455gC(C1618Hi c1618Hi, K6 k6) {
        super(Looper.getMainLooper());
        this.A04 = new Handler(Looper.getMainLooper());
        this.A03 = new ServiceConnectionC2454gB(this);
        this.A07 = c1618Hi;
        this.A08 = c1618Hi.A02();
        this.A05 = new Messenger(this);
        this.A06 = k6;
        this.A09 = new C1669Ji(this);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ InterfaceC3669k1.d.b.j);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (this.A01) {
            A0C();
            if (A0B[0].charAt(10) != 'p') {
                throw new RuntimeException();
            }
            A0B[0] = "nLMfglhqWUp8cQyLFKCyrpcnfEaexaDa";
            this.A00 = null;
        }
        this.A06.A0A();
        this.A06.A09();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:22:0x00ac  */
    public void A06() {
        this.A00 = null;
        A0C();
        if (this.A06.A03().A7P() == EnumC2447g4.A07) {
            this.A07.A0F().AJB();
            this.A06.A0C(10, AdErrorType.INTERNAL_ERROR, null);
            return;
        }
        if (this.A06.A03().A7Q() != EnumC2447g4.A08) {
            EnumC2447g4 enumC2447g4A7P = this.A06.A03().A7P();
            EnumC2447g4 enumC2447g4 = EnumC2447g4.A06;
            if (A0B[2].length() != 6) {
                String[] strArr = A0B;
                strArr[4] = "UkTM1Ed";
                strArr[1] = "qtIwwU7";
                if (enumC2447g4A7P != enumC2447g4) {
                    return;
                }
            } else if (enumC2447g4A7P != enumC2447g4) {
                return;
            }
            if (!AbstractC2866my.A0J(this.A07)) {
                this.A07.A0F().AJH();
                this.A06.A03().AKj(new AdError(AdError.REMOTE_ADS_SERVICE_ERROR, A04(31, 21, 34)));
                return;
            } else {
                this.A07.A0F().AJI();
                this.A06.A03().ABe();
                this.A06.A0E(true);
                this.A06.A09();
                return;
            }
        }
        if (!AbstractC2866my.A0A(this.A07)) {
            this.A07.A0F().AJB();
            K6 k6 = this.A06;
            AdErrorType adErrorType = AdErrorType.INTERNAL_ERROR;
            if (A0B[6].length() != 19) {
                A0B[0] = "g9K0Z2syi6pHATMwVPoLqfWcGNzb5ezM";
                k6.A0C(10, adErrorType, null);
                return;
            } else {
                String[] strArr2 = A0B;
                strArr2[4] = "CMvvdGA";
                strArr2[1] = "SkuOyls";
                k6.A0C(10, adErrorType, null);
                return;
            }
        }
        C1618Hi c1618Hi = this.A07;
        String[] strArr3 = A0B;
        if (strArr3[3].charAt(27) != strArr3[5].charAt(27)) {
            throw new RuntimeException();
        }
        A0B[7] = "eWy5dFEIXLQZTiIRTgsO";
        c1618Hi.A0F().AJ1();
        if (this.A06 instanceof C7Z) {
            this.A06.AFw(IronSourceError.ERROR_RV_SHOW_CALLED_DURING_SHOW, this.A06.A04(), null);
            return;
        }
        if (this.A06 instanceof C7Y) {
            this.A06.AFw(3000, this.A06.A04(), null);
            RewardData rewardData = ((C7Y) this.A06).A0F().A03;
            String[] strArr4 = A0B;
            if (strArr4[4].length() == strArr4[1].length()) {
                A0B[7] = "c6k72gA3xT0mEX";
                if (rewardData != null) {
                    this.A06.AFw(3002, this.A06.A04(), null);
                }
            } else if (rewardData != null) {
                this.A06.AFw(3002, this.A06.A04(), null);
            }
            this.A06.AFw(C3829se.h, this.A06.A04(), null);
        }
    }

    public static void A07() {
        A0A = new byte[]{98, 109, 101, Ascii.EM, 3, 103, 96, 122, 113, 124, 120, 113, 111, 126, 126, 113, 97, 124, 103, 107, 96, 122, 111, 122, 103, 97, 96, 113, 101, 107, 119, 0, 55, 63, Base64.padSymbol, 38, 55, 114, 33, 55, 32, 36, 59, 49, 55, 114, 55, 32, 32, Base64.padSymbol, 32, 124, 37, 34, 36, 41, 55, 50, 41, 63, 50, 41, Base64.padSymbol, 51, 47, 58, 37, 41, 59, Ascii.CAN, 53, 60, 41};
    }

    private void A08(Messenger messenger, int i, Bundle bundle) throws RemoteException {
        Message messageObtain = Message.obtain((Handler) null, i);
        messageObtain.replyTo = this.A05;
        if (bundle != null) {
            messageObtain.setData(bundle);
        }
        messageObtain.getData().putString(A04(52, 13, 6), this.A06.A04());
        messenger.send(messageObtain);
    }

    public static void A0B(C1618Hi c1618Hi, String str) {
        c1618Hi.A0F().AJ5(str);
        InterfaceC2752l7 interfaceC2752l7A0G = c1618Hi.A0G();
        if (interfaceC2752l7A0G == null || interfaceC2752l7A0G.A7O() == null || interfaceC2752l7A0G.A7K() == null) {
            return;
        }
        interfaceC2752l7A0G.A7O().onError(interfaceC2752l7A0G.A7K(), AdError.AD_PRESENTATION_ERROR);
    }

    public final void A0C() {
        if (this.A01) {
            this.A07.A0F().AJU();
            this.A01 = false;
            this.A08.unbindService(this.A03);
        }
    }

    public final void A0D(C1618Hi c1618Hi, int i) {
        this.A07.A0F().AJS();
        AdActivityIntent adActivityIntentA06 = C2997p8.A06(c1618Hi);
        adActivityIntentA06.putExtra(A04(65, 8, 60), EnumC2955oR.A0G);
        adActivityIntentA06.putExtra(A04(52, 13, 6), this.A06.A04());
        adActivityIntentA06.putExtra(A04(5, 26, 94), i);
        try {
            this.A07.A0F().AJT(C2997p8.A00(c1618Hi, adActivityIntentA06));
        } catch (C2995p6 e) {
            String strA04 = A04(0, 5, 83);
            Throwable cause = e.getCause();
            if (cause != null) {
                strA04 = strA04 + cause.toString();
            }
            A0B(c1618Hi, strA04);
        }
    }

    public final void A0E(boolean z) {
        this.A01 = C2459gG.A01(this.A08, z, this.A03).A00 == 0;
        if (this.A01) {
            this.A07.A0F().AJ7();
            if (this.A00 == null) {
                this.A04.postDelayed(this.A09, AbstractC2866my.A00(this.A08));
                return;
            }
            return;
        }
        this.A07.A0F().AJF();
        this.A02 = false;
        this.A06.A0A();
        this.A06.A09();
    }

    public final boolean A0F(int i, Bundle bundle) {
        try {
            Messenger messenger = this.A00;
            if (messenger == null) {
                return false;
            }
            A08(messenger, i, bundle);
            return true;
        } catch (RemoteException e) {
            A0C();
            this.A07.A0F().AJA(e);
            return false;
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (message.what == 3) {
                return;
            }
            if (message.what == 20 || message.what == 30 || message.what == 40) {
                if (message.what == 20) {
                    this.A07.A0F().AJP();
                    AbstractC2866my.A09(this.A08);
                } else {
                    this.A07.A0F().AJO(message.what);
                }
                A05();
                return;
            }
            if (!this.A06.A04().equals(message.getData().getString(A04(52, 13, 6)))) {
                this.A07.A0F().AJV();
            } else if (message.what == 2001 || message.what == 1011) {
                C2459gG.A04(this.A08, message);
            } else {
                this.A07.A0F().AJG(message.what);
                this.A06.A0D(message);
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
