package com.facebook.ads.redexgen.X;

import android.animation.AnimatorListenerAdapter;
import android.os.Handler;
import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.At, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1448At implements InterfaceC2323e3 {
    public static String[] A0B = {"82Zz8oCZg8zkkbzw8opl2Yz4CtrF2SDp", "9Qv", "sj5N5SmrmBRQmWue5o8rJw6ys3alFtJa", "lBA7odrZYL425", "CSSBUKaIJSWMhqfJuWGnuyX4cipoTk5I", "IDQP5gLMbSSnC18VVbdsGZXvkzghwpNg", "Yf1MSxzKxHs57zUlY7hI2xykX4pHUq1P", "T3bn0lMwtbok5v0PvXD6574OGDOrX6LS"};
    public View A00;
    public C1459Be A01;
    public EnumC2314du A02;
    public boolean A03;
    public final Handler A04;
    public final BM A05;
    public final BG A06;
    public final BE A07;
    public final B5 A08;
    public final boolean A09;
    public final boolean A0A;

    public C1448At(View view, EnumC2314du enumC2314du, boolean z) {
        this(view, enumC2314du, z, false);
    }

    public C1448At(View view, EnumC2314du enumC2314du, boolean z, boolean z2) {
        this.A06 = new BG() { // from class: com.facebook.ads.redexgen.X.5L
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5W c5w) {
                this.A00.A06(1, 0);
            }
        };
        this.A07 = new BE() { // from class: com.facebook.ads.redexgen.X.5K
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                if (this.A00.A03) {
                    if (this.A00.A02 != EnumC2314du.A03 && !this.A00.A09) {
                        this.A00.A06(0, 8);
                    } else {
                        this.A00.A02 = null;
                        this.A00.A05();
                    }
                }
            }
        };
        this.A05 = new BM() { // from class: com.facebook.ads.redexgen.X.5J
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                if (this.A00.A02 != EnumC2314du.A04) {
                    this.A00.A00.setAlpha(1.0f);
                    this.A00.A00.setVisibility(0);
                }
            }
        };
        this.A08 = new C5I(this);
        this.A03 = true;
        this.A04 = new Handler();
        this.A09 = z;
        this.A0A = z2;
        A08(view, enumC2314du);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        this.A00.animate().alpha(0.0f).setDuration(500L).setListener(new C2315dv(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(int i, int i2) {
        this.A04.removeCallbacksAndMessages(null);
        this.A00.clearAnimation();
        this.A00.setAlpha(i);
        this.A00.setVisibility(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(AnimatorListenerAdapter animatorListenerAdapter) {
        this.A00.setVisibility(0);
        this.A00.animate().alpha(1.0f).setDuration(500L).setListener(animatorListenerAdapter);
    }

    private final void A08(View view, EnumC2314du enumC2314du) {
        this.A02 = enumC2314du;
        this.A00 = view;
        this.A00.clearAnimation();
        if (enumC2314du != EnumC2314du.A04) {
            this.A00.setAlpha(1.0f);
            this.A00.setVisibility(0);
            return;
        }
        this.A00.setAlpha(0.0f);
        String[] strArr = A0B;
        if (strArr[5].charAt(26) == strArr[0].charAt(26)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0B;
        strArr2[5] = "3OWa54Sl5zOXBo6RskK22JrE4LW5JWKj";
        strArr2[0] = "lt7hksMEFpJVhV2333OBcIopOVPW9bfy";
        this.A00.setVisibility(8);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2323e3
    public final void ABd(C1459Be c1459Be) {
        this.A01 = c1459Be;
        c1459Be.getEventBus().A03(this.A06, this.A07, this.A08, this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2323e3
    public final void ALp(C1459Be c1459Be) {
        A06(1, 0);
        if (c1459Be != null) {
            c1459Be.getEventBus().A04(this.A05, this.A08, this.A07, this.A06);
        }
        this.A01 = null;
    }
}
