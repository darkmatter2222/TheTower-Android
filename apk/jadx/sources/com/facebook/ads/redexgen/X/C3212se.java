package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.se, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3212se extends LinearLayout {
    public final Bitmap A00;

    public C3212se(C1618Hi c1618Hi, EnumC3229sv enumC3229sv) {
        super(c1618Hi);
        this.A00 = AbstractC3098qo.A01(EnumC3097qn.AD_CHOICE_ICON);
        c1618Hi.A0F().ABk(enumC3229sv.name().toLowerCase(Locale.US));
        A00();
        setAdChoiceIcon(c1618Hi);
    }

    private void A00() {
        setOrientation(0);
        setPadding(AbstractC3043pv.A0K, AbstractC3043pv.A0K, AbstractC3043pv.A0K, AbstractC3043pv.A0K);
        setClipToPadding(false);
        setGravity(17);
        AbstractC3086qc.A0O(this, -859190839);
        AbstractC3086qc.A0F(AbstractC3043pv.A0D, this);
    }

    private void setAdChoiceIcon(C1618Hi c1618Hi) {
        ImageView imageView = new ImageView(c1618Hi);
        AbstractC3086qc.A0L(imageView);
        imageView.setImageBitmap(this.A00);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setAdjustViewBounds(true);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, AbstractC3043pv.A0X));
        addView(imageView);
    }
}
