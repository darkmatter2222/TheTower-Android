package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.ads.AdError;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.f7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2388f7 extends BroadcastReceiver {
    public static String[] A03 = {"JgmY627JJ4fVvMUsUI7dBJzvca", "2Fivc7ze9Y6M7vLBAhVCw66dd2zEUTp", "oqNyJxLxp23hnAfKGRpFUMlaCTnSy4au", "HRO7fC4J0U3bXqsrOiWljP6J940cuLTJ", "rhEs9JkkityiMJcgD18RNPKtdGmllPs6", "c8I5EiJJKjWgwuyghylYWruaZ4nXJiut", "YeKDqRnNq5JcEGU0HYsnt6sxK1D4K6hE", "zIQMBMVVQmczFglCifMrZtV9RNUhKeCf"};
    public LG A00;
    public InterfaceC2387f6 A01;
    public String A02;

    public C2388f7(String str, LG lg, InterfaceC2387f6 interfaceC2387f6) {
        this.A00 = lg;
        this.A01 = interfaceC2387f6;
        this.A02 = str;
    }

    public final IntentFilter A00() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(EnumC2318dy.A06.A04(this.A02));
        intentFilter.addAction(EnumC2318dy.A09.A04(this.A02));
        intentFilter.addAction(EnumC2318dy.A04.A04(this.A02));
        intentFilter.addAction(EnumC2318dy.A0A.A04(this.A02));
        intentFilter.addAction(EnumC2318dy.A05.A04(this.A02));
        intentFilter.addAction(EnumC2318dy.A0C.A04(this.A02));
        intentFilter.addAction(EnumC2318dy.A0B.A04(this.A02));
        intentFilter.addAction(EnumC2318dy.A03.A04(this.A02));
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (EnumC2318dy.A06.A04(this.A02).equals(action)) {
            InterfaceC2387f6 interfaceC2387f6 = this.A01;
            LG lg = this.A00;
            if (A03[1].length() != 11) {
                A03[0] = "z37hhVYNur1y5njE4t22VYTMbB";
                interfaceC2387f6.AGv(lg);
                return;
            }
        } else {
            if (!EnumC2318dy.A09.A04(this.A02).equals(action)) {
                if (EnumC2318dy.A04.A04(this.A02).equals(action)) {
                    this.A01.AGs(this.A00);
                    return;
                }
                if (EnumC2318dy.A0A.A04(this.A02).equals(action)) {
                    this.A01.AGu(this.A00);
                    return;
                }
                if (EnumC2318dy.A05.A04(this.A02).equals(action)) {
                    this.A01.onRewardedVideoClosed();
                    return;
                }
                if (EnumC2318dy.A0B.A04(this.A02).equals(action)) {
                    this.A01.AGq(this.A00);
                    return;
                } else if (EnumC2318dy.A0C.A04(this.A02).equals(action)) {
                    this.A01.AGr(this.A00);
                    return;
                } else {
                    if (EnumC2318dy.A03.A04(this.A02).equals(action)) {
                        this.A01.onRewardedVideoActivityDestroyed();
                        return;
                    }
                    return;
                }
            }
            boolean zA1y = C2863mv.A1y(context);
            String[] strArr = A03;
            if (strArr[3].charAt(16) != strArr[4].charAt(16)) {
                A03[0] = "a2nbOp8yH430aeg70B0MHQFnwN";
                if (!zA1y) {
                    this.A01.AGw(this.A00, AdError.INTERNAL_ERROR);
                    return;
                }
                InterfaceC2387f6 interfaceC2387f7 = this.A01;
                LG lg2 = this.A00;
                AdError adError = AdError.AD_PRESENTATION_ERROR;
                String[] strArr2 = A03;
                if (strArr2[3].charAt(16) != strArr2[4].charAt(16)) {
                    String[] strArr3 = A03;
                    strArr3[2] = "Smm3aT6IchFgLH9ob00fwQqxHFnPPG6O";
                    strArr3[5] = "wzZfDEncWZ9M4YUYJFr8Gzf2lfnMb6hd";
                    interfaceC2387f7.AGw(lg2, adError);
                    return;
                }
                String[] strArr4 = A03;
                strArr4[6] = "douVyTcHxmEKv1YyJqQbVTsvWWCOpXBn";
                strArr4[7] = "x6yn97aV8hj96Z0WREVv4HAdEeLr9VIY";
                interfaceC2387f7.AGw(lg2, adError);
                return;
            }
        }
        throw new RuntimeException();
    }
}
