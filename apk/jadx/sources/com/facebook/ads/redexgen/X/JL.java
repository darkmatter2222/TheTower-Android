package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class JL implements InterfaceC2524hL {
    public final Rect A00 = new Rect();
    public final /* synthetic */ C2553hp A01;

    public JL(C2553hp c2553hp) {
        this.A01 = c2553hp;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2524hL
    public final C2556hs ADs(View view, C2556hs c2556hs) {
        C2556hs c2556hsA06 = AbstractC2540hb.A06(view, c2556hs);
        if (c2556hsA06.A07()) {
            return c2556hsA06;
        }
        Rect rect = this.A00;
        rect.left = c2556hsA06.A03();
        rect.top = c2556hsA06.A05();
        rect.right = c2556hsA06.A04();
        rect.bottom = c2556hsA06.A02();
        int childCount = this.A01.getChildCount();
        for (int i = 0; i < childCount; i++) {
            C2556hs c2556hsA05 = AbstractC2540hb.A05(this.A01.getChildAt(i), c2556hsA06);
            rect.left = Math.min(c2556hsA05.A03(), rect.left);
            rect.top = Math.min(c2556hsA05.A05(), rect.top);
            rect.right = Math.min(c2556hsA05.A04(), rect.right);
            rect.bottom = Math.min(c2556hsA05.A02(), rect.bottom);
        }
        return c2556hsA06.A06(rect.left, rect.top, rect.right, rect.bottom);
    }
}
