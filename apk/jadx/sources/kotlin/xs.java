package kotlin;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Base64;
import com.google.android.gms.ads.AdSize;
import com.ironsource.C3510b4;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.net.URL;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class xs {
    public final e01 a;
    public final ex0 b;
    public final ur3 c;

    public xs(e01 httpClient, ex0 flags, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = httpClient;
        this.b = flags;
        this.c = traceLogger;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    public static Object a(xs xsVar, String str, double d, boolean z, Continuation continuation) {
        ws wsVar;
        double d2;
        Object m01Var;
        Object j01Var;
        byte[] bArr;
        xs xsVar2 = xsVar;
        boolean z2 = z;
        if (continuation instanceof ws) {
            wsVar = (ws) continuation;
            int i = wsVar.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                wsVar.f = i - Integer.MIN_VALUE;
            } else {
                wsVar = new ws(xsVar2, continuation);
            }
        } else {
            wsVar = new ws(xsVar2, continuation);
        }
        Object objA = wsVar.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = wsVar.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            ex0 ex0Var = xsVar2.b;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:native_bitmap_loader_supports_data_url", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:native_bitmap_loader_supports_data_url", Boolean.TRUE, yr.b)).booleanValue() && StringsKt.startsWith$default(str, "data:", false, 2, (Object) null)) {
                int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, FacebookConstants.PLACEMENT_IDS_SEPARATOR, 0, false, 6, (Object) null);
                if (iIndexOf$default == -1) {
                    m01Var = new m01("Bad data URL: no ',' found for base64 data", kk1.INVALID_DATA_URL);
                } else {
                    String strSubstring = str.substring(0, iIndexOf$default);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    if (StringsKt.endsWith$default(strSubstring, ";base64", false, 2, (Object) null)) {
                        int iIndexOf$default2 = StringsKt.indexOf$default((CharSequence) str, ":", 0, false, 6, (Object) null);
                        int iIndexOf$default3 = StringsKt.indexOf$default((CharSequence) str, ";", 0, false, 6, (Object) null);
                        if (iIndexOf$default2 != -1) {
                            String strSubstring2 = str.substring(iIndexOf$default2 + 1, iIndexOf$default3);
                            Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                            if (StringsKt.startsWith$default(strSubstring2, "image/", false, 2, (Object) null)) {
                                String strSubstring3 = str.substring(iIndexOf$default + 1);
                                Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                                try {
                                    j01Var = new q01(Base64.decode(strSubstring3, 0));
                                } catch (IllegalArgumentException e) {
                                    j01Var = new j01(e, kk1.INVALID_DATA_URL, "Bad data URL: could not decode base64");
                                }
                                m01Var = j01Var;
                            } else {
                                m01Var = new m01("Bad data URL: only image media is supported", kk1.INVALID_DATA_URL);
                            }
                        } else {
                            m01Var = new m01("Bad data URL: only image media is supported", kk1.INVALID_DATA_URL);
                        }
                    } else {
                        m01Var = new m01("Bad data URL: only base64 is supported", kk1.INVALID_DATA_URL);
                    }
                }
                if (m01Var instanceof i01) {
                    return (i01) m01Var;
                }
                Intrinsics.checkNotNull(m01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                return xsVar2.a((byte[]) ((q01) m01Var).b, d, z2);
            }
            e01 e01Var = xsVar2.a;
            URL url = new URL(Uri.parse(str).toString());
            wsVar.a = xsVar2;
            wsVar.b = d;
            wsVar.c = z2;
            wsVar.f = 1;
            objA = e01.a(e01Var, url, null, wsVar, 30);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            d2 = d;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            boolean z3 = wsVar.c;
            d2 = wsVar.b;
            xs xsVar3 = wsVar.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
            z2 = z3;
            xsVar2 = xsVar3;
        }
        v01 v01Var = (v01) objA;
        if (v01Var instanceof i01) {
            return (i01) v01Var;
        }
        Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
        try {
            p53 p53Var = ((h81) ((q01) v01Var).b).d;
            return (p53Var == null || (bArr = p53Var.a) == null) ? new m01("HTTP response body is null", kk1.INTERNAL_ERROR) : xsVar2.a(bArr, d2, z2);
        } catch (Exception e2) {
            ((as3) xsVar2.c).a("Error downloading bitmap from url.", (Throwable) e2);
            return new j01(e2, kk1.NETWORK_ERROR, null, 4);
        }
    }

    public final v01 a(byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (((double) AdSize.WIDE_SKYSCRAPER_WIDTH) * d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        options.inJustDecodeBounds = false;
        int i = options.outWidth * options.outHeight;
        if (i > 0) {
            ex0 ex0Var = this.b;
            options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Number) ex0Var.a("gads:nativeads:image:sample:pixels", by0.a(ex0Var, "gads:nativeads:image:sample:pixels", C3510b4.i.W, 1048576), yr.f)).intValue())) / 2);
        }
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        return bitmapDecodeByteArray == null ? new m01("Cannot decode image", kk1.INTERNAL_ERROR) : new q01(bitmapDecodeByteArray);
    }
}
