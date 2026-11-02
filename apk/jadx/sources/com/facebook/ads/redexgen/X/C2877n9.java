package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.ads.internal.api.AudienceNetworkExportedActivityApi;
import java.util.Arrays;
import java.util.UUID;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.n9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2877n9 implements AudienceNetworkExportedActivityApi {
    public static byte[] A01;
    public static String[] A02 = {"lqcZKkXS6TgOyt76sZ5yjVO68Nd1QdQN", "bQWyI3suGbnh3U5StjCALiPIzXDV3Wa6", "hqk98641WxUvYLytASVEQqAqBzewRvKz", "WJUhx8cI8X6XmYecnMlLMKWkuLUkkXH9", "MP1e4gCZR", "1EPuqCSCyQ9J2YoomIIpPWX0Nb9xTOcz", "0suERcaSwAa0E2CxcbYZCTLc9cS16", "2TigNonfP4HCMPOeSAXXuXDynNOGBzuQ"};
    public final Activity A00;

    static {
        A01();
    }

    public C2877n9(Activity activity) {
        this.A00 = activity;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {126, 121, 99, 104, 101, 97, 104, 118, 103, 103, 104, 120, 101, 126, 114, 121, 99, 118, 99, 126, 120, 121, 104, 124, 114, 110, Base64.padSymbol, 58, 60, 49, 47, 42, 49, 39, 42, 49, 37, 43, 55};
        if (A02[2].charAt(23) != 'q') {
            throw new RuntimeException();
        }
        A02[2] = "wLiEtUSufX2SvKxRiuuw2ghqe6rTYyXA";
        A01 = bArr;
    }

    private void A02(int i) {
        this.A00.setResult(i);
        this.A00.finish();
    }

    private boolean A03(C2876n8 c2876n8) {
        String callingPackage = this.A00.getCallingPackage();
        if (callingPackage != null && callingPackage.equals(c2876n8.A04)) {
            return true;
        }
        A02(12);
        if (c2876n8.A00 instanceof C1684Jz) {
            ((C1684Jz) c2876n8.A00).A0F().A0F().AJ8();
        }
        if (!(c2876n8.A00 instanceof C1681Jw)) {
            return false;
        }
        ((C1681Jw) c2876n8.A00).A0H().A0F().AJ8();
        return false;
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkExportedActivityApi
    public final void onCreate(Bundle bundle) {
        C1618Hi c1618HiA05 = C2673jn.A05(this.A00, UUID.randomUUID().toString());
        if (this.A00.isTaskRoot()) {
            c1618HiA05.A0F().AJ0();
            A02(10);
            return;
        }
        String stringExtra = this.A00.getIntent().getStringExtra(A00(26, 13, 15));
        if (stringExtra == null) {
            c1618HiA05.A0F().AJ4();
            A02(11);
            return;
        }
        C2876n8 c2876n8A04 = C1609Gz.A00().A04(stringExtra);
        InterfaceC2450g7 interfaceC2450g7 = c2876n8A04 != null ? c2876n8A04.A00 : null;
        if (A02[6].length() == 29) {
            A02[6] = "3hvfYctBGPg0BeMvR8jiqRXkEjCpv";
            if (c2876n8A04 == null || !(interfaceC2450g7 instanceof C1681Jw)) {
                if (c2876n8A04 != null) {
                    boolean z = interfaceC2450g7 instanceof C1684Jz;
                    if (A02[1].charAt(21) == 'i') {
                        A02[2] = "XUW1n7Q8abvbP2RLETYRfIyqCZkI4d7q";
                        if (z) {
                            if (!A03(c2876n8A04)) {
                                return;
                            }
                            C1684Jz c1684Jz = (C1684Jz) interfaceC2450g7;
                            c1684Jz.A0E().A05().A0J(this.A00);
                            c1684Jz.A0J();
                        }
                    }
                }
                c1618HiA05.A0F().AJW();
                A02(13);
                return;
            }
            if (!A03(c2876n8A04)) {
                return;
            }
            C1681Jw c1681Jw = (C1681Jw) interfaceC2450g7;
            c1681Jw.A0G().A01().A0J(this.A00);
            c1681Jw.A0M(this.A00.getIntent().getIntExtra(A00(0, 26, 86), -1), 0L);
            this.A00.setResult(-1);
            this.A00.finish();
            return;
        }
        throw new RuntimeException();
    }
}
