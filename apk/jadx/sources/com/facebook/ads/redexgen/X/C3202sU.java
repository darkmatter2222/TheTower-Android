package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3202sU extends LinearLayout {
    public static final int A03 = (int) (AbstractC3045px.A02 * 40.0f);
    public static final int A04 = (int) (AbstractC3045px.A02 * 20.0f);
    public static final int A05 = (int) (AbstractC3045px.A02 * 10.0f);
    public final C2483ge A00;
    public final C1618Hi A01;
    public final InterfaceC3186sE A02;

    public C3202sU(C1618Hi c1618Hi, C2483ge c2483ge, InterfaceC3186sE interfaceC3186sE, EnumC3097qn enumC3097qn) {
        this(c1618Hi, c2483ge, interfaceC3186sE, null, enumC3097qn);
    }

    public C3202sU(C1618Hi c1618Hi, C2483ge c2483ge, InterfaceC3186sE interfaceC3186sE, String str, EnumC3097qn enumC3097qn) {
        super(c1618Hi);
        this.A01 = c1618Hi;
        this.A00 = c2483ge;
        this.A02 = interfaceC3186sE;
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (!TextUtils.isEmpty(str)) {
            View viewA01 = A01(str);
            viewA01.setPadding(0, 0, 0, 0);
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
            AbstractC3086qc.A0O(view, -10459280);
            addView(viewA01, layoutParams);
            addView(view);
        }
        if (!TextUtils.isEmpty(this.A00.A03())) {
            View viewA00 = A00(enumC3097qn, this.A00.A03());
            viewA00.setPadding(0, A05, 0, A05);
            addView(viewA00, layoutParams);
        }
        C3208sa c3208saA03 = A03();
        c3208saA03.setPadding(0, A05, 0, 0);
        addView(c3208saA03, layoutParams);
    }

    private View A00(EnumC3097qn enumC3097qn, String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 16;
        imageView.setImageBitmap(AbstractC3098qo.A01(enumC3097qn));
        TextView textView = new TextView(getContext());
        AbstractC3086qc.A0b(textView, true, 14);
        textView.setTextColor(-10459280);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        textView.setText(str);
        textView.setPadding(A05, 0, 0, 0);
        textView.setFocusable(true);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }

    private View A01(String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        imageView.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.BACK_ARROW));
        imageView.setPadding(0, A05, A05 * 2, A05);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A03, A03);
        imageView.setOnClickListener(new ViewOnClickListenerC3200sS(this));
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(str);
        AbstractC3086qc.A0b(textView, true, 16);
        textView.setTextColor(-14934495);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(0, 0, A03, 0);
        layoutParams2.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }

    private C3208sa A03() {
        C3208sa c3208sa = new C3208sa(this.A01);
        for (C2483ge c2483ge : this.A00.A05()) {
            C3188sG c3188sG = new C3188sG(this.A01);
            c3188sG.setData(c2483ge.A04(), null);
            c3188sG.setOnClickListener(new ViewOnClickListenerC3201sT(this, c3188sG, c2483ge));
            c3208sa.addView(c3188sG);
        }
        return c3208sa;
    }
}
