package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3320uO extends LinearLayout {
    public static String[] A05 = {"JiUd07qZ", "phaLMHqUBlp6P5RZzzm", "VtPMRXbuUkVLmtGCwM", "RgvNiIo52t", "FYi9K2JmgPw1hqWSXD3EPgcEPQmLRiB", "yPPKnDMDveXTdnfoUUkFxo3t2NtgVDwK", "Cr", "5lHXxybE2bQiDNmNKuHItJ8Sueck67l"};
    public int A00;
    public List<GradientDrawable> A01;
    public final int A02;
    public final int A03;
    public final int A04;

    public C3320uO(C1618Hi c1618Hi, C2404fN c2404fN, int i) {
        super(c1618Hi);
        this.A00 = -1;
        setOrientation(0);
        setGravity(17);
        float f = AbstractC3045px.A02;
        int i2 = (int) (8.0f * f);
        this.A02 = (int) (1.0f * f);
        this.A04 = c2404fN.A05(false);
        this.A03 = AbstractC2501gx.A02(this.A04, 128);
        this.A01 = new ArrayList();
        for (int i3 = 0; i3 < i; i3++) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setSize(i2, i2);
            gradientDrawable.setStroke(this.A02, 0);
            ImageView imageView = new ImageView(c1618Hi);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, AbstractC3043pv.A0w, 0);
            layoutParams.gravity = 17;
            imageView.setLayoutParams(layoutParams);
            imageView.setImageDrawable(gradientDrawable);
            this.A01.add(gradientDrawable);
            addView(imageView);
        }
        A00(0);
    }

    public final void A00(int i) {
        int i2;
        int i3;
        if (this.A00 == i) {
            return;
        }
        this.A00 = i;
        if (A05[2].length() == 22) {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[4] = "BJqXxH8n0fuaHx3JVwGHjWVcPjmBGjI";
        strArr[7] = "ZUGfW6Md7SIL60yz7Eq8Bq3LU56iFcm";
        for (int i4 = 0; i4 < this.A01.size(); i4++) {
            if (i4 == i) {
                i2 = this.A04;
                i3 = this.A04;
            } else {
                i2 = this.A03;
                i3 = 0;
            }
            this.A01.get(i4).setStroke(this.A02, i3);
            this.A01.get(i4).setColor(i2);
            this.A01.get(i4).invalidateSelf();
        }
    }
}
