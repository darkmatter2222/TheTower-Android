package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class MB extends AbstractRunnableC2979oq {
    public static byte[] A02;
    public static String[] A03 = {"oskFp91e5pmXbfqncEKHUOJlooKh56jY", "lReJ4EGI0ZfzcS4beAfFSCPJefxJWm51", "X9zy5AMUM8AKtatrcfePQZWL0uWUICrn", "wxwSRA3odXIdIsY7f5yZfv3v7", "O6Pxh8VVn00f1EJnP312TgPdEktEk3X8", "2QJh3yF6", "0YwPA87fpumxZ406JTpoKHsZ368w", "aJIZZEX98MAeULDgBorQq277OQTM9IaN"};
    public final /* synthetic */ C2375eu A00;
    public final /* synthetic */ String A01;

    static {
        A01();
    }

    public MB(C2375eu c2375eu, String str) {
        this.A00 = c2375eu;
        this.A01 = str;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 67);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {Ascii.GS, 41, Ascii.FS, 40, 44, Ascii.FS, 37, Ascii.SUB, 48, Ascii.SYN, Ascii.SUB, Ascii.CAN, 39, 39, 32, 37, Ascii.RS};
        String[] strArr = A03;
        if (strArr[2].charAt(10) != strArr[7].charAt(10)) {
            throw new RuntimeException();
        }
        A03[5] = "QkfkB";
        A02 = bArr;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        String strA00 = A00(0, 17, 116);
        try {
            this.A00.A06.await();
            if (this.A00.A0J(this.A01)) {
                ((C2409fS) this.A00.A02.A05().get(this.A01)).A04((int) (System.currentTimeMillis() / 1000));
                this.A00.A02.A07(this.A01);
                this.A00.A02.A06();
                this.A00.A08();
            }
        } catch (InterruptedException e) {
            this.A00.A03.A08().ABz(strA00, AbstractC2786lf.A1B, new C2787lg(e));
        } catch (JSONException e2) {
            this.A00.A0M();
            this.A00.A03.A08().ABz(strA00, AbstractC2786lf.A1A, new C2787lg(e2));
        }
    }
}
