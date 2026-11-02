package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6r, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13596r extends C1483Cc {
    public static String[] A00 = {"4DJOkXe9rib7uWc4nLa4kcuSPdxs7gf4", "Dyxr4XzeXsq4jjw5BU630cyoQdL32ISv", "MScpZjpz", "3XC0FNsyX3k6WX9dbHhU9IwCEOagJZ1X", "JEKgPGdFYfe9RoD8dW0t8x0Mvi1GtEmi", "N5tdloXdcly7PUtxD1ZshZXdUDk2Lr2A", "5elKCHWntj6O1Wqi1faAvLWvEV4yzp2T", "JBMx9492vmjOwkRP6"};

    public C13596r(C12843u c12843u, int i, List<C2974ol> list, C2199c2 c2199c2, Bundle bundle) {
        super(c12843u, i, list != null ? list.size() : 0, c2199c2, bundle, false);
        A0k(list);
        c12843u.A1o(this);
        this.A0A = new F3(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A00() {
        int iA38 = this.A0M.A38();
        if (this.A0C == null || iA38 == -1 || iA38 >= this.A0C.size() - 1) {
            return;
        }
        A0c(iA38 + 1);
    }

    private void A01(int i) {
        int iA39 = this.A0M.A39();
        int iA3A = this.A0M.A3A();
        int iA38 = this.A0M.A38();
        if (iA38 != iA39) {
            A0a(iA39);
        }
        if (iA38 != iA3A) {
            A0a(iA3A);
        }
        A0b(iA38);
        A0d(iA39, iA3A, i);
    }

    @Override // com.facebook.ads.redexgen.X.C1483Cc, com.facebook.ads.redexgen.X.AbstractC2625j1
    public final void A0P(C7O c7o, int i) {
    }

    @Override // com.facebook.ads.redexgen.X.C1483Cc, com.facebook.ads.redexgen.X.AbstractC2625j1
    public final void A0Q(C7O c7o, int i, int i2) {
        if (this.A0M.A38() != -1) {
            ED ed = (ED) this.A0M.A1z(this.A0M.A38());
            if (A00[2].length() == 4) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[3] = "IxYVUA16uQkbjXwNztolao4gyOA0tKzF";
            strArr[6] = "jcO9EzcXxFOxyF2BSjZiD0vteRj0mA5y";
            if (ed != null && ed.A1o() && !ed.A1n()) {
                ed.A1l();
            }
            A01(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1483Cc
    public final void A0g(View view, boolean z) {
        view.setAlpha(z ? 1.0f : 0.8f);
    }

    @Override // com.facebook.ads.redexgen.X.C1483Cc
    public final void A0j(ED ed, boolean z) {
        A0g(ed, z);
        if (z || !ed.A1n()) {
            return;
        }
        ed.A1k();
    }

    @Override // com.facebook.ads.redexgen.X.C1483Cc
    public final void A0k(List<C2974ol> list) {
        this.A0C = list;
    }

    @Override // com.facebook.ads.redexgen.X.C1483Cc
    public final boolean A0m(View view) {
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return ((float) rect.width()) / ((float) view.getWidth()) >= 0.75f;
    }

    public final C2199c2 A0n() {
        return this.A0B;
    }

    public final void A0o(C2199c2 c2199c2) {
        this.A0B = c2199c2;
    }
}
