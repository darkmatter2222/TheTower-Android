package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Context;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2673jn {
    public static InterfaceC2300df A00(Context context, InterfaceC2757lC interfaceC2757lC) {
        return A01(context, interfaceC2757lC, null);
    }

    public static InterfaceC2300df A01(Context context, InterfaceC2757lC interfaceC2757lC, String str) {
        InterfaceC2304dj interfaceC2304djA8n = interfaceC2757lC.A8n(A09(context));
        if (interfaceC2304djA8n != null) {
            return str != null ? interfaceC2304djA8n.ADD(str) : interfaceC2304djA8n.ADC();
        }
        return new C1757Mx();
    }

    public static C1618Hi A02(Activity activity) {
        return new C1618Hi(activity, (InterfaceC2757lC) A0A(), A00(activity, A0A()));
    }

    public static C1618Hi A03(Context context) {
        return new C1618Hi(context, A0A(), new C1757Mx());
    }

    public static C1618Hi A04(Context context) {
        return C2863mv.A0v(context) ? new C1618Hi(context, A0A(), A00(context, A0A())) : A03(context);
    }

    public static C1618Hi A05(Context context, String str) {
        InterfaceC2300df interfaceC2300dfA01 = A01(context, A0A(), str);
        interfaceC2300dfA01.AKl(1000);
        return new C1618Hi(context, A0A(), interfaceC2300dfA01);
    }

    public static C1618Hi A06(Context context, String str) {
        return new C1618Hi(context, A0A(), A01(context, A0A(), str));
    }

    public static C1618Hi A07(Context context, String str) {
        return new C1618Hi(context, A0A(), A01(context, A0A(), str));
    }

    public static C7D A08(Context context) {
        return new C7D(context, A0A(), A0A().A8n(A09(context)));
    }

    public static C1617Hh A09(Context context) {
        return new C1617Hh(context, A0A());
    }

    public static synchronized HG A0A() {
        return HG.A02();
    }
}
