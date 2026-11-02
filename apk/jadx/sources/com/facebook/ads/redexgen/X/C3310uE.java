package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3310uE extends RelativeLayout {
    public static String[] A06 = {"GfXFZtEZk1NZfob7Kzf1xTq0EESlD7si", "ewzI1iE8tF5Z2B86REyPWWZDw7DKLBH9", "kOyZSgqEibXIKTIW7tLvn8rBuxcmsyDd", "XpDxTY", "v6DhXkGtrQWw75h", "XA27k4WXBENWs2k6KViFhCSGxV0pMN8g", "cLUj8uWE8C4NOcjwK2waVMiWyPuWQVsm", ""};
    public final int A00;
    public final LinearLayout A01;
    public final C1708Kz A02;
    public final C1618Hi A03;
    public final InterfaceC2884nG A04;
    public final InterfaceC3119r9 A05;

    public C3310uE(C1618Hi c1618Hi, C1708Kz c1708Kz, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9, int i, int i2) {
        super(c1618Hi);
        this.A03 = c1618Hi;
        this.A02 = c1708Kz;
        this.A04 = interfaceC2884nG;
        this.A05 = interfaceC3119r9;
        this.A00 = i;
        this.A01 = new LinearLayout(c1618Hi);
        A00();
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
        setLayoutOrientation(i2);
    }

    private void A00() {
        int i = 0;
        while (true) {
            C1708Kz c1708Kz = this.A02;
            if (A06[4].length() != 15) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[6] = "6kBjYVyQvbEVjVKJKeawSG2VEKMXDcJL";
            strArr[5] = "aQimcOJmMOk7TFcbK4Cqi1kaRliNN4Qj";
            if (i >= c1708Kz.A2v()) {
                return;
            }
            C1550Er c1550Er = new C1550Er(this.A03, this.A02.A2z(i), this.A04, this.A05);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
            layoutParams.weight = 1.0f;
            layoutParams.setMargins(C1550Er.A0B, C1550Er.A0B, C1550Er.A0B, C1550Er.A0B);
            c1550Er.setLayoutParams(layoutParams);
            this.A01.addView(c1550Er);
            i++;
        }
    }

    private void setLayoutOrientation(int i) {
        if (i == 1) {
            this.A01.setOrientation(1);
            this.A01.setPadding(0, (int) (((double) this.A00) * 1.5d), 0, this.A00);
        } else {
            this.A01.setOrientation(0);
            this.A01.setPadding(0, this.A00, 0, (int) (((double) this.A00) * 0.25d));
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setLayoutOrientation(configuration.orientation);
    }
}
