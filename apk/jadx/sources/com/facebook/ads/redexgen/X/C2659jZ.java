package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import com.google.common.base.Ascii;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2659jZ implements AudienceNetworkActivityApi {
    public static byte[] A03;
    public static String[] A04 = {"kVVxbIvKBpFLpNMn249evg7U1t5DMrkR", "HNBIISUKPJt5lzvo", "tha", "s0U2IqORDUirQkjYFZUhzDbmHPDS66DK", "4XQ6Ra6x1CsG5mP0jlsGo4Oc8x5GsOh7", "mYQ1yQiLRLlGaSwEYEmmcgt3b9ncmm6M", "URRMMekVjcz4ECsO2XmiMnA4WEVCe5QQ", "lW2qNIOuJVr9bvm7hZsN45J1F7Bnv3JY"};
    public boolean A00;
    public final AudienceNetworkActivityApi A01;
    public final C2658jY A02;

    static {
        A01();
    }

    public C2659jZ(AudienceNetworkActivity audienceNetworkActivity, AudienceNetworkActivityApi audienceNetworkActivityApi, C2658jY c2658jY) {
        this.A01 = audienceNetworkActivityApi;
        this.A02 = c2658jY;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 71);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{Ascii.FF, 8, 7, 59, 42, 47, 43, 52, 41, 43, Ascii.DC4, 43, 58, Base64.padSymbol, 53, 56, 49, 19, 44, 35, 54, 46, 35, 33, 50, 35, 34, -34, 35, 54, 33, 35, 46, 50, 39, 45, 44, -20, -70, -57, -72, -70, -68, -51, -62, -49, -62, -51, -46};
    }

    private void A02(Throwable th) {
        this.A00 = true;
        this.A02.A09();
        finish(8);
        C1618Hi c1618HiA06 = this.A02.A06();
        if (c1618HiA06 != null) {
            c1618HiA06.A08().ABz(A00(38, 11, 18), AbstractC2786lf.A0C, new C2787lg(th));
            return;
        }
        String strA00 = A00(0, 17, 127);
        if (A04[3].charAt(1) != '0') {
            throw new RuntimeException();
        }
        A04[6] = "roakWe6n8CepWvGQKms2st32sM0MtJhe";
        Log.e(strA00, A00(17, 21, 119), th);
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        try {
            if (this.A00) {
                this.A01.dump(str, fileDescriptor, printWriter, strArr);
            } else {
                this.A02.dump(str, fileDescriptor, printWriter, strArr);
            }
        } catch (Throwable th) {
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void finish(int i) {
        this.A02.finish(i);
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onActivityResult(int i, int i2, Intent intent) {
        try {
            if (this.A00) {
                this.A01.onActivityResult(i, i2, intent);
            } else {
                this.A02.onActivityResult(i, i2, intent);
                this.A01.onActivityResult(i, i2, intent);
            }
        } catch (Throwable th) {
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onBackPressed() {
        try {
            if (this.A00) {
                return;
            }
            this.A02.onBackPressed();
        } catch (Throwable th) {
            String[] strArr = A04;
            if (strArr[4].charAt(24) == strArr[5].charAt(24)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[7] = "o2QAVIvbVP3X0FiUaWNt1f6t7dHcTRBl";
            strArr2[0] = "vmYtMIbIQwew4451MpW2UPrO9wIbxS87";
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onConfigurationChanged(Configuration configuration) {
        try {
            if (this.A00) {
                this.A01.onConfigurationChanged(configuration);
            } else {
                this.A02.onConfigurationChanged(configuration);
                this.A01.onConfigurationChanged(configuration);
            }
        } catch (Throwable th) {
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onCreate(Bundle bundle) {
        this.A01.onCreate(bundle);
        try {
            this.A02.onCreate(bundle);
        } catch (Throwable th) {
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onDestroy() {
        try {
            if (this.A00) {
                this.A01.onDestroy();
            } else {
                this.A02.onDestroy();
                this.A01.onDestroy();
            }
        } catch (Throwable th) {
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onPause() {
        try {
            if (this.A00) {
                this.A01.onPause();
            } else {
                this.A02.onPause();
                this.A01.onPause();
            }
        } catch (Throwable th) {
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onResume() {
        this.A01.onResume();
        try {
            if (this.A00) {
                return;
            }
            this.A02.onResume();
        } catch (Throwable th) {
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onSaveInstanceState(Bundle bundle) {
        this.A01.onSaveInstanceState(bundle);
        try {
            if (this.A00) {
                return;
            }
            this.A02.onSaveInstanceState(bundle);
        } catch (Throwable th) {
            String[] strArr = A04;
            if (strArr[4].charAt(24) == strArr[5].charAt(24)) {
                throw new RuntimeException();
            }
            A04[6] = "46sQaeWUXFUhhsRkoBzMlxezgaVtku4l";
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onStart() {
        this.A01.onStart();
        try {
            if (this.A00) {
                return;
            }
            this.A02.onStart();
        } catch (Throwable th) {
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final void onStop() {
        this.A01.onStop();
        try {
            if (this.A00) {
                return;
            }
            this.A02.onStop();
        } catch (Throwable th) {
            A02(th);
        }
    }

    @Override // com.facebook.ads.internal.api.AudienceNetworkActivityApi
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            if (this.A00) {
                return this.A01.onTouchEvent(motionEvent);
            }
            this.A02.onTouchEvent(motionEvent);
            return this.A01.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            A02(th);
        }
    }
}
