package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.graphics.Color;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.ads.AdSize;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2708kM {
    public static byte[] A03;
    public static String[] A04 = {"RIyp", "8bfHllwZoJb6KTmdH", "gFRo5MPf1zEWFunFtAAEYqP", "2XHgfeMv64qze1uh4GiM7vxhoXT0t7Cn", "quPWe4yK7yTe2sBfqWZeaK6wCXbMRc", "gUzUbxfzFDg4sHtG6Y2fsTTyyICVeZlZ", "LOCp7uX4vp7jyQxaUZAF345u43tgoRc", "drvNVtrUFEvpRd3TylNZ7LyCWMwJR1"};
    public C3275tf A00;
    public final AudienceNetworkActivity A01;
    public final C1618Hi A02;

    static {
        A01();
    }

    public C2708kM(C1618Hi c1618Hi, AudienceNetworkActivity audienceNetworkActivity) {
        this.A02 = c1618Hi;
        this.A01 = audienceNetworkActivity;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ InterfaceC3669k1.d.b.k);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{96, 65, 70, 81, 67, 112, 120, 121, 116, 124, 105, 116, 114, 115, 89, 124, 105, 124, 48, 44, 33, 35, 37, 45, 37, 46, 52, 9, 36, 76, 91, 79, 75, 91, 77, 74, 106, 87, 83, 91};
    }

    private void A02(int i, int i2) {
        if (this.A01.getWindow() != null) {
            AudienceNetworkActivity audienceNetworkActivity = this.A01;
            String[] strArr = A04;
            if (strArr[0].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[7] = "nXCJSGtHylGbDsR3FZ0lW1J4MHkyDP";
            strArr2[4] = "Au0OMy1esseUGEC1uzZ3fS0ZPW6iiT";
            audienceNetworkActivity.getWindow().setFlags(i, i2);
        }
    }

    public final C2568i4 A03(Intent intent, RelativeLayout relativeLayout) {
        String stringExtra = intent.getStringExtra(A00(5, 13, 108));
        if (stringExtra == null) {
            return null;
        }
        C2568i4 c2568i4A01 = AbstractC2569i5.A01(this.A02, stringExtra);
        if (c2568i4A01 != null) {
            relativeLayout.addView(c2568i4A01, new RelativeLayout.LayoutParams(-1, -1));
        }
        return c2568i4A01;
    }

    public final void A04() {
        if (C2863mv.A2K(this.A01)) {
            A02(16777216, 16777216);
        }
    }

    public final void A05() {
        if (this.A00 == null || !C2863mv.A1B(this.A01)) {
            return;
        }
        this.A00.A07();
    }

    public final void A06() {
        if (C2863mv.A2S(this.A01)) {
            A02(128, 128);
        }
    }

    public final void A07(Intent intent, EnumC2955oR enumC2955oR, RelativeLayout relativeLayout) {
        if (!C2863mv.A1B(this.A01) || enumC2955oR == EnumC2955oR.A04) {
            return;
        }
        this.A00 = new C3275tf();
        this.A00.A0C(intent.getStringExtra(A00(18, 11, 49)));
        this.A00.A0B(this.A01.getPackageName());
        long longExtra = intent.getLongExtra(A00(29, 11, 79), 0L);
        if (longExtra != 0) {
            C3275tf c3275tf = this.A00;
            String[] strArr = A04;
            if (strArr[7].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[5] = "e0sFc3betYzrocSt2r05YpNlTQ2co3YK";
            strArr2[3] = "r1SSJ0D7soBhWfOqDmBWbr3oKQtX3s0q";
            c3275tf.A09(longExtra);
        }
        TextView textView = new TextView(this.A01);
        textView.setText(A00(0, 5, 85));
        textView.setTextColor(-1);
        AbstractC3086qc.A0O(textView, Color.argb(AdSize.WIDE_SKYSCRAPER_WIDTH, 0, 0, 0));
        textView.setPadding(5, 5, 5, 5);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12, -1);
        layoutParams.addRule(11, -1);
        textView.setLayoutParams(layoutParams);
        ViewOnLongClickListenerC2674jo viewOnLongClickListenerC2674jo = new ViewOnLongClickListenerC2674jo(this.A00, relativeLayout);
        textView.setOnLongClickListener(viewOnLongClickListenerC2674jo);
        relativeLayout.setOnLongClickListener(viewOnLongClickListenerC2674jo);
        relativeLayout.getOverlay().add(this.A00);
    }

    public final void A08(EnumC2955oR enumC2955oR, boolean z) {
        if (C2863mv.A2z(this.A02)) {
            EnumC2955oR enumC2955oR2 = EnumC2955oR.A04;
            String[] strArr = A04;
            if (strArr[5].charAt(26) == strArr[3].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[0] = "wjWX";
            strArr2[6] = "VbcFO09W4hKPvYCxrEZ3e5LbEpSKqoE";
            if (enumC2955oR == enumC2955oR2 && z) {
                A02(512, 512);
                return;
            }
        }
        this.A01.requestWindowFeature(1);
        A02(1024, 1024);
    }
}
