package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hR, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2530hR {
    public ViewOnClickListenerC1544El A00;
    public final LA A01;
    public final C2391fA A02;
    public final C2402fL A03;
    public final C2407fQ A04;
    public final C2416fZ A05;
    public final C1618Hi A06;
    public final C2892nO A07;
    public static String[] A08 = {"67PC1vS7qkP", "IjFo3BG6VwtzNtFBLMxB3hm7uxcMitzp", "CicRHWg02u8tYTVNboa", "Lc1HqPOOGgkkm0o4iF185HVfJQb2Oy4J", "rfUiy7qGv2cTTJD", "veTQu7RBhk0w6DuY7Y8JViB1PkIKs", "nFnk8VxBkehLa6QhTm5QccOE2IAl", "l0nPd7gOfqjUiTZVoVDHfvPfOU4VPF8e"};
    public static final int A0B = (int) (AbstractC3045px.A02 * 4.0f);
    public static final int A09 = (int) (AbstractC3045px.A02 * 72.0f);
    public static final int A0A = (int) (AbstractC3045px.A02 * 8.0f);

    public C2530hR(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, LA la) {
        this.A06 = c1618Hi;
        this.A07 = new C2892nO(la.A37(), interfaceC2884nG);
        this.A02 = la.A31();
        this.A03 = la.A32().A0J();
        this.A05 = la.A35();
        this.A04 = la.A32().A0L();
        this.A01 = la;
    }

    private View A00(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        C3327uV c3327uV = new C3327uV(this.A06, this.A02.A01(), true, false, false);
        c3327uV.A04(this.A03.A0H(), this.A03.A04(), null, false, true);
        c3327uV.setAlignment(17);
        C3321uP c3321uP = new C3321uP(this.A06);
        AbstractC3086qc.A0O(c3321uP, 0);
        c3321uP.setRadius(50);
        new AsyncTaskC1552Et(c3321uP, this.A06).A04().A07(this.A05.A01());
        LinearLayout linearLayout = new LinearLayout(this.A06);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(c3321uP, new LinearLayout.LayoutParams(A09, A09));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A0A, 0, A0A);
        linearLayout.addView(c3327uV, layoutParams);
        if (viewOnClickListenerC1544El != null) {
            AbstractC3086qc.A0K(viewOnClickListenerC1544El);
            linearLayout.addView(viewOnClickListenerC1544El, layoutParams);
            viewOnClickListenerC1544El.setPadding(AbstractC3043pv.A0c, 0, AbstractC3043pv.A0c, 0);
            if (TextUtils.isEmpty(viewOnClickListenerC1544El.getText())) {
                AbstractC3086qc.A0I(viewOnClickListenerC1544El);
            }
        }
        return linearLayout;
    }

    private C7O A01() {
        C7O c7o = new C7O(this.A06);
        c7o.setLayoutManager(new J7(this.A06, 0, false));
        c7o.setAdapter(new C1474Bt(this.A06, this.A04.A03(), A0B, this.A00));
        return c7o;
    }

    private final EnumC2531hS A02() {
        if (!this.A04.A03().isEmpty()) {
            return EnumC2531hS.A04;
        }
        EnumC2531hS enumC2531hS = EnumC2531hS.A03;
        String[] strArr = A08;
        if (strArr[3].charAt(8) == strArr[7].charAt(8)) {
            throw new RuntimeException();
        }
        A08[4] = "qwlEjiYhEcV8j1J";
        return enumC2531hS;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x003f  */
    /* JADX WARN: Code duplicated, block: B:13:0x0050  */
    /* JADX WARN: Code duplicated, block: B:16:0x006d  */
    public final Pair<EnumC2531hS, View> A03(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        EnumC2531hS enumC2531hSA02;
        View viewA01;
        ViewOnClickListenerC1544El viewOnClickListenerC1544El2;
        this.A00 = viewOnClickListenerC1544El;
        if (this.A00 == null) {
            enumC2531hSA02 = A02();
            switch (enumC2531hSA02.ordinal()) {
                case 0:
                    viewA01 = A01();
                    break;
                default:
                    viewOnClickListenerC1544El2 = this.A00;
                    if (A08[1].charAt(8) != 'B') {
                        String[] strArr = A08;
                        strArr[3] = "Zp7LuBr5a7K9gEFEeOpzYbARSVoCtcwg";
                        strArr[7] = "303OjW9Y3KvsAANvIIzHKKxaCufSpSA6";
                        viewA01 = A00(viewOnClickListenerC1544El2);
                    }
                    break;
            }
            AbstractC2894nQ.A04(viewA01, this.A07, EnumC2891nN.A0S);
            return new Pair<>(enumC2531hSA02, viewA01);
        }
        ViewOnClickListenerC1544El viewOnClickListenerC1544El3 = this.A00;
        C2395fE c2395fEA32 = this.A01.A32();
        if (A08[4].length() == 15) {
            String[] strArr2 = A08;
            strArr2[3] = "Oe6IO8Uak3tx5GvHWoKp5mKUb4E2rtDt";
            strArr2[7] = "t7tx5cDm578ghKblxCWBuUm65hKnqcQl";
            viewOnClickListenerC1544El3.A0G(c2395fEA32.A0K());
            enumC2531hSA02 = A02();
            switch (enumC2531hSA02.ordinal()) {
                case 0:
                    viewA01 = A01();
                    break;
                default:
                    viewOnClickListenerC1544El2 = this.A00;
                    if (A08[1].charAt(8) != 'B') {
                        String[] strArr3 = A08;
                        strArr3[3] = "Zp7LuBr5a7K9gEFEeOpzYbARSVoCtcwg";
                        strArr3[7] = "303OjW9Y3KvsAANvIIzHKKxaCufSpSA6";
                        viewA01 = A00(viewOnClickListenerC1544El2);
                    }
                    break;
            }
            AbstractC2894nQ.A04(viewA01, this.A07, EnumC2891nN.A0S);
            return new Pair<>(enumC2531hSA02, viewA01);
        }
        throw new RuntimeException();
    }
}
