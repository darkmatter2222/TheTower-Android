package com.facebook.ads.redexgen.X;

import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2927nz {
    public static EnumC2925nx A00(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.widthPixels / displayMetrics.density);
        int i2 = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (C3046py.A04(i, i2)) {
            return EnumC2925nx.A0H;
        }
        return i2 > i ? EnumC2925nx.A0J : EnumC2925nx.A0G;
    }

    public static void A01(DisplayMetrics displayMetrics, View view, EnumC2924nw enumC2924nw) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(((int) (((float) displayMetrics.widthPixels) / displayMetrics.density)) >= enumC2924nw.A04() ? displayMetrics.widthPixels : (int) Math.ceil(enumC2924nw.A04() * displayMetrics.density), (int) Math.ceil(enumC2924nw.A03() * displayMetrics.density));
        layoutParams.addRule(14, -1);
        view.setLayoutParams(layoutParams);
    }
}
