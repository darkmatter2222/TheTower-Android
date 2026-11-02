package com.facebook.ads.redexgen.X;

import android.content.pm.PackageManager;
import android.util.Base64;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class GL extends AbstractRunnableC2979oq {
    public static byte[] A02;
    public final /* synthetic */ C2945oH A00;
    public final /* synthetic */ C2948oK A01;

    static {
        A01();
    }

    public GL(C2948oK c2948oK, C2945oH c2945oH) {
        this.A01 = c2948oK;
        this.A00 = c2945oH;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 119);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{10, 75, 89, 68, 71, 72, 72, 67, 84, 89, 77, 67, 95, 101, 68, Ascii.VT, 69, 78, 95, 92, 68, 89, SignedBytes.MAX_POWER_OF_TWO, Ascii.VT, 72, 68, 69, 69, 78, 72, 95, 66, 68, 69};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        this.A01.A00 = System.currentTimeMillis();
        if (AbstractC3074qQ.A00(this.A01.A05) == EnumC3073qP.A07) {
            this.A01.A0A();
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String strA00 = A00(13, 21, 92);
            this.A01.A05.A0F().A3t(C3076qS.A01(this.A01.A01), adErrorType.getErrorCode(), strA00, adErrorType.isPublicError());
            this.A01.A0E(new C2922nt(adErrorType, strA00));
            return;
        }
        C2796lp.A08(this.A01.A05);
        AbstractC2723kb.A07(this.A01.A05);
        boolean z = true;
        Map<String, String> mapA0A = this.A00.A0A(C2825mJ.A00().A01(this.A01.A05, true).A8Z(this.A00.A05()));
        this.A01.A03 = mapA0A;
        try {
            PackageManager packageManager = this.A01.A05.getPackageManager();
            if (packageManager != null) {
                mapA0A.put(A00(1, 12, InterfaceC3669k1.d.b.k), new String(Base64.encode((this.A01.A05.getPackageName() + A00(0, 1, 93) + packageManager.getInstallerPackageName(this.A01.A05.getPackageName())).getBytes(), 2)));
            }
        } catch (Exception unused) {
        }
        try {
            if (this.A00.A07() != EnumC2925nx.A03 && this.A00.A07() != EnumC2925nx.A05 && this.A00.A07() != EnumC2925nx.A04 && this.A00.A07() != null) {
                z = false;
            }
            this.A01.A05.A0F().A59();
            C2114af.A02(z, this.A01.A05).AIB(this.A01.A07, new C2134az().A05(this.A01.A03).A08(), this.A01.A03(C3076qS.A00(), this.A00));
        } catch (Exception e) {
            AdErrorType adErrorType2 = AdErrorType.AD_REQUEST_FAILED;
            String message = e.getMessage();
            this.A01.A05.A0F().A3t(C3076qS.A01(this.A01.A01), adErrorType2.getErrorCode(), message, adErrorType2.isPublicError());
            this.A01.A0E(C2922nt.A01(adErrorType2, message));
        }
    }
}
