package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class ViewOnClickListenerC3249tF implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ F6 A00;

    static {
        A01();
    }

    public ViewOnClickListenerC3249tF(F6 f6) {
        this.A00 = f6;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-58, -57, -44, -38, -39, -97, -57, -47, -58, -45, -48, Ascii.DC4, 33, Ascii.DC2, Ascii.DC4, Ascii.SYN, 39, Ascii.FS, 41, Ascii.FS, 39, 44, -60, -47, -57, -43, -46, -52, -57, -111, -52, -47, -41, -56, -47, -41, -111, -60, -58, -41, -52, -46, -47, -111, -71, -84, -88, -70};
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(this.A00.A07) && !A00(0, 11, 35).equals(this.A00.A07)) {
                Intent intent = new Intent(A00(22, 26, 33), AbstractC3011pP.A00(this.A00.A07));
                intent.addFlags(268435456);
                this.A00.A09.A0F().AAc();
                try {
                    C2997p8.A0F(this.A00.A09, intent);
                    if (this.A00.A06 != null) {
                        this.A00.A06.AG4();
                        return;
                    }
                    return;
                } catch (C2995p6 e) {
                    Throwable cause = e.getCause();
                    C2995p6 cause2 = e;
                    if (cause != null) {
                        cause2 = e.getCause();
                    }
                    this.A00.A09.A08().ABz(A00(11, 11, InterfaceC3669k1.d.b.k), AbstractC2786lf.A00, new C2787lg(cause2));
                    return;
                }
                AbstractC2971oi.A00(th, this);
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
