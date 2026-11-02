package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import androidx.core.view.PointerIconCompat;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.api.AudienceNetworkRemoteServiceApi;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HandlerC2879nB extends Handler {
    public static byte[] A04;
    public static final String A05;
    public final Context A00;
    public final AudienceNetworkRemoteServiceApi.MessageHandler A01;
    public final AudienceNetworkRemoteServiceApi.PackageVerifier A02;
    public final C1609Gz A03;

    static {
        A04();
        A05 = HandlerC2879nB.class.getSimpleName();
    }

    public HandlerC2879nB(Context context, AudienceNetworkRemoteServiceApi.MessageHandler messageHandler, AudienceNetworkRemoteServiceApi.PackageVerifier packageVerifier) {
        super(Looper.getMainLooper());
        this.A00 = context;
        this.A02 = packageVerifier;
        this.A03 = C1609Gz.A00();
        this.A01 = messageHandler;
    }

    public static Bundle A00() {
        Bundle bundle = new Bundle();
        bundle.putString(A03(72, 23, 98), A03(0, 6, 6));
        bundle.putString(A03(54, 18, 73), new JSONObject().toString());
        return bundle;
    }

    private C1684Jz A01(C1680Jv c1680Jv, String str) {
        C1684Jz c1684Jz = new C1684Jz(c1680Jv, this.A03, str);
        c1684Jz.A0G(c1680Jv.A0B(), c1680Jv.A07());
        return c1684Jz;
    }

    private C1681Jw A02(C1663Jc c1663Jc, String str) {
        C1681Jw c1681Jw = new C1681Jw(c1663Jc, this.A03, str);
        c1681Jw.A0J(c1663Jc.A05, c1663Jc.A02, c1663Jc.A08);
        return c1681Jw;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 41);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A04 = new byte[]{101, 93, 97, 97, 93, 95, -105, -92, -92, -95, -76, -98, -88, -76, -101, -86, -93, -93, -102, -95, -76, -95, -92, -100, -100, -102, -103, -11, -10, -12, 1, -29, -26, 1, -21, -26, 1, -19, -25, -5, -118, -117, -119, -106, 121, -116, -123, 123, -125, 124, -106, -126, 124, -112, -59, -58, -60, -47, -59, -73, -60, -56, -69, -75, -73, -47, -73, -54, -58, -60, -77, -59, -34, -33, -35, -22, -34, -48, -35, -31, -44, -50, -48, -22, -34, -49, -42, -22, -31, -48, -35, -34, -44, -38, -39};
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
        }
        try {
            if (this.A01 == null || !this.A01.handleMessage(message)) {
                Messenger messenger = message.replyTo;
                if (message.what == 1) {
                    if (messenger != null) {
                        C1609Gz.A00().A07(2, null, A00(), messenger);
                        return;
                    }
                    return;
                }
                String string = message.getData().getString(A03(27, 13, 121));
                if (string == null) {
                    return;
                }
                C1618Hi c1618HiA05 = C2673jn.A05(this.A00, string);
                c1618HiA05.A0F().AKk(message.getData().getBoolean(A03(6, 21, 44), false));
                String strVerifyPackage = this.A02 != null ? this.A02.verifyPackage(this.A00, message, message.getData().getString(A03(40, 14, 14))) : null;
                if (strVerifyPackage == null) {
                    if (messenger != null) {
                        C1609Gz.A00().A07(20, string, null, messenger);
                    }
                    c1618HiA05.A0F().AJ9();
                    return;
                }
                switch (message.what) {
                    case 1010:
                        if (messenger != null) {
                            C2876n8 c2876n8A04 = C1609Gz.A00().A04(string);
                            if (c2876n8A04 == null) {
                                c2876n8A04 = C1609Gz.A00().A05(string, messenger, strVerifyPackage);
                            }
                            C1680Jv c1680JvA04 = AbstractC2470gR.A04(c1618HiA05, message.getData(), strVerifyPackage);
                            if (c2876n8A04.A00 == null) {
                                c2876n8A04.A00 = A01(c1680JvA04, string);
                            } else if (c2876n8A04.A00 instanceof C1684Jz) {
                                ((C1684Jz) c2876n8A04.A00).A0G(c1680JvA04.A0B(), c1680JvA04.A07());
                            }
                            C1609Gz.A00().A07(1011, string, A00(), messenger);
                            break;
                        }
                        break;
                    case PointerIconCompat.TYPE_NO_DROP /* 1012 */:
                    case 2002:
                        C1609Gz.A00().A08(string);
                        break;
                    case 2000:
                        if (messenger != null) {
                            C2876n8 c2876n8A05 = C1609Gz.A00().A04(string);
                            if (c2876n8A05 == null) {
                                c2876n8A05 = C1609Gz.A00().A05(string, messenger, strVerifyPackage);
                            }
                            C1663Jc c1663JcA05 = AbstractC2470gR.A05(c1618HiA05, message.getData(), strVerifyPackage);
                            if (c2876n8A05.A00 == null) {
                                c2876n8A05.A00 = A02(c1663JcA05, string);
                            } else if (c2876n8A05.A00 instanceof C1681Jw) {
                                ((C1681Jw) c2876n8A05.A00).A0J(c1663JcA05.A05, c1663JcA05.A02, c1663JcA05.A08);
                            }
                            C1609Gz.A00().A07(AdError.INTERNAL_ERROR_CODE, string, A00(), messenger);
                            break;
                        }
                        break;
                    case 2003:
                        InterfaceC2450g7 interfaceC2450g7A03 = C1609Gz.A00().A03(string);
                        if (interfaceC2450g7A03 instanceof C1681Jw) {
                            RewardData rewardDataA01 = AbstractC2471gS.A01(message.getData());
                            C1681Jw c1681Jw = (C1681Jw) interfaceC2450g7A03;
                            if (rewardDataA01 != null) {
                                c1681Jw.A0I(rewardDataA01);
                            }
                        }
                        break;
                    default:
                        break;
                }
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
