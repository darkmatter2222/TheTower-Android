package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Kh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1692Kh implements InterfaceC2738kr {
    public static String[] A05 = {"udExhBBZigXHD765", "VCbgsgLtwNII3DWSf3Df", "sJ3cSki5Ts1gkpIy0", "hudoenMQ7OfQJqKUwYviTAHkC5956B", "3GiDDKpH2PPu7", "VAV0OzmNbR17K1ZAu", "eIBPlY8UdwZIA15YBWaPzTw3Re1i6Niv", "w6ShnqqW6c5InpRu2fdQvGfdyx0XiT7r"};
    public final /* synthetic */ LA A00;
    public final /* synthetic */ InterfaceC2427fk A01;
    public final /* synthetic */ C2428fl A02;
    public final /* synthetic */ C1618Hi A03;
    public final /* synthetic */ boolean A04;

    public C1692Kh(C2428fl c2428fl, C1618Hi c1618Hi, boolean z, LA la, InterfaceC2427fk interfaceC2427fk) {
        this.A02 = c2428fl;
        this.A03 = c1618Hi;
        this.A04 = z;
        this.A00 = la;
        this.A01 = interfaceC2427fk;
    }

    private void A00(boolean z) {
        if (!z) {
            this.A01.ADk(AdError.CACHE_ERROR);
            return;
        }
        C1618Hi c1618Hi = this.A03;
        String[] strArr = A05;
        if (strArr[7].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A05;
        strArr2[5] = "ua1Hqbcww3qJrVJ6O";
        strArr2[2] = "2U70GzBDbPON7gkn8";
        if (C2863mv.A1q(c1618Hi) && this.A04) {
            this.A02.A02.add(M1.A01(this.A03, this.A00, 1, new C1696Kl(this)));
        } else {
            this.A01.ADl();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2738kr
    public final void AEJ() {
        A00(false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2738kr
    public final void AEU() {
        A00(true);
    }
}
