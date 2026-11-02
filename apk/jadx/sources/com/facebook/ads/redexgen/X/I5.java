package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class I5 implements InterfaceC2445g2 {
    public static byte[] A04;

    @Nullable
    public NativeAd.NativeOptions A00;
    public C2690k4 A01;
    public C1618Hi A02;
    public final NativeAdBase.MediaCacheFlag A03;

    static {
        A04();
    }

    public I5(@Nullable C2690k4 c2690k4, C1618Hi c1618Hi, NativeAdBase.MediaCacheFlag mediaCacheFlag, NativeAd.NativeOptions nativeOptions) {
        this.A00 = nativeOptions;
        this.A01 = c2690k4;
        this.A02 = c1618Hi;
        this.A03 = mediaCacheFlag;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A04 = new byte[]{59, 52, 33, 60, 35, 48, 100, 127, 122, 127, 126, 102, 127};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2445g2
    public final void AEr(C2922nt c2922nt) {
        AbstractC2970oh.A00(new I8(this, c2922nt));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2445g2
    public final void AG2(List<C1716Lh> list) {
        C2746kz c2746kz = new C2746kz(this.A02);
        String strA03 = A03(6, 7, 70);
        for (C1716Lh c1716Lh : list) {
            if (A03(6, 7, 70).equals(strA03)) {
                strA03 = c1716Lh.A0G();
            }
            if (this.A03.equals(NativeAdBase.MediaCacheFlag.ALL)) {
                if (c1716Lh.A0E().A0I() != null) {
                    c2746kz.A0c(new C2744kx(c1716Lh.A0E().A0I().getUrl(), c1716Lh.A0E().A0I().getHeight(), c1716Lh.A0E().A0I().getWidth(), c1716Lh.A0G(), A03(0, 6, 2)));
                }
                if (c1716Lh.A0E().A0H() != null) {
                    c2746kz.A0c(new C2744kx(c1716Lh.A0E().A0H().getUrl(), c1716Lh.A0E().A0H().getHeight(), c1716Lh.A0E().A0H().getWidth(), c1716Lh.A0G(), A03(0, 6, 2)));
                }
                if (!TextUtils.isEmpty(c1716Lh.A0E().A0e())) {
                    c2746kz.A0b(new C2742kv(c1716Lh.A0E().A0e(), c1716Lh.A0G(), A03(0, 6, 2), c1716Lh.A0E().A0D()));
                }
            }
        }
        c2746kz.A0X(new I6(this, list), new C2739ks(strA03, A03(0, 6, 2)));
    }
}
