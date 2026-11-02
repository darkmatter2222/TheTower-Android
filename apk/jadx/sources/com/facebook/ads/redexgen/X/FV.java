package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class FV implements InterfaceC3111r1 {
    public static String[] A01 = {"NIVlg4RLOxs016je15Qw8kqCcOoANSS2", "YBgw0iVVHEs89HKc917JVySxvHGXu8ii", "9S6rrW0LJlBb5EsNj", "ijS0C88KGWZ3jJB5u", "v6ldUs015xuBDlgaVlw1RSKBcjvSpPmf", "5qsds4jO", "MiBk3sPYJoodUqMCCRoa32LVhqBeYU8g", "bfGboqjs"};
    public final /* synthetic */ FS A00;

    public FV(FS fs) {
        this.A00 = fs;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0097  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC3111r1
    public final void ADh(AbstractC3112r2 abstractC3112r2) {
        if (this.A00.A0Y() && !this.A00.A0b.get()) {
            C3319uN c3319uN = this.A00.A0Z;
            FS fs = this.A00;
            String[] strArr = A01;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[0] = "1HZu9BDmx3VTgHlf9Ad5YgpdE1iG2kQw";
            strArr2[6] = "GASqHVY0Z4MWfpKkiy7WWbHX3tqAgxNs";
            c3319uN.A07(fs);
            return;
        }
        if (this.A00.A0d && !this.A00.A0b.get() && this.A00.A0X()) {
            this.A00.A0g.setToolbarActionMode(0);
            this.A00.A0N();
            return;
        }
        this.A00.A0T.A04(EnumC2891nN.A07, null);
        boolean zA0h = this.A00.A0P.A0h();
        String[] strArr3 = A01;
        if (strArr3[0].charAt(24) != strArr3[6].charAt(24)) {
            String[] strArr4 = A01;
            strArr4[7] = "5P0ev0n1";
            strArr4[5] = "uTfqyLOH";
            if (zA0h) {
                this.A00.A0R.A0F().AFR();
            }
        } else {
            String[] strArr5 = A01;
            strArr5[2] = "lhGUOkRIrBFfmUR7Z";
            strArr5[3] = "YLblnr7NFAH1pVBt5";
            if (zA0h) {
                this.A00.A0R.A0F().AFR();
            }
        }
        this.A00.A0R.A0F().ABl();
        this.A00.A0W.A5C(this.A00.A0X.A8X());
    }
}
