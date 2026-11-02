package com.google.android.gms.ads;

import android.content.Context;
import com.ironsource.C3510b4;
import java.util.List;
import kotlin.ex0;
import kotlin.yr;
import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.math.MathKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001J3\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/google/android/gms/ads/MediationUtils;", "", "Landroid/content/Context;", "context", "Lcom/google/android/gms/ads/AdSize;", "originalAdSize", "", "potentials", "findClosestSize", "(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;Ljava/util/List;)Lcom/google/android/gms/ads/AdSize;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class MediationUtils {
    public static final MediationUtils INSTANCE = new MediationUtils();
    private static ex0 a;

    private MediationUtils() {
    }

    public static void a(ex0 flags) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        a = flags;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x00da A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0039 A[SYNTHETIC] */
    @JvmStatic
    public static final AdSize findClosestSize(Context context, AdSize originalAdSize, List<AdSize> potentials) {
        double dFloatValue;
        double dFloatValue2;
        Intrinsics.checkNotNullParameter(context, "context");
        AdSize adSize = null;
        if (potentials != null && originalAdSize != null) {
            if (!originalAdSize.getIsInlineAdaptiveBanner()) {
                float f = context.getResources().getDisplayMetrics().density;
                originalAdSize = new AdSize(MathKt.roundToInt(originalAdSize.getWidthInPixels(context) / f), MathKt.roundToInt(originalAdSize.getHeightInPixels(context) / f));
            }
            for (AdSize adSize2 : potentials) {
                INSTANCE.getClass();
                if (adSize2 != null) {
                    int width = originalAdSize.getWidth();
                    int width2 = adSize2.getWidth();
                    int height = originalAdSize.getHeight();
                    int height2 = adSize2.getHeight();
                    double d = width;
                    ex0 ex0Var = a;
                    if (ex0Var != null) {
                        Intrinsics.checkNotNullParameter("gads:mediation_min_width_ratio", C3510b4.i.W);
                        dFloatValue = ((Number) ex0Var.a("gads:mediation_min_width_ratio", Float.valueOf(0.2f), yr.e)).floatValue();
                    } else {
                        dFloatValue = 0.5d;
                    }
                    if (d * dFloatValue <= width2 && width >= width2) {
                        if (!originalAdSize.getIsInlineAdaptiveBanner()) {
                            double d2 = height;
                            ex0 ex0Var2 = a;
                            if (ex0Var2 != null) {
                                Intrinsics.checkNotNullParameter("gads:mediation_min_height_ratio", C3510b4.i.W);
                                dFloatValue2 = ((Number) ex0Var2.a("gads:mediation_min_height_ratio", Float.valueOf(0.3f), yr.e)).floatValue();
                            } else {
                                dFloatValue2 = 0.7d;
                            }
                            if (d2 * dFloatValue2 <= height2 && height >= height2) {
                                if (adSize != null) {
                                    if (adSize.getHeight() * adSize.getWidth() > adSize2.getHeight() * adSize2.getWidth()) {
                                    }
                                }
                                adSize = adSize2;
                            }
                        } else if (originalAdSize.getInlineMaxHeight() >= height2) {
                            if (adSize != null) {
                                if (adSize.getHeight() * adSize.getWidth() > adSize2.getHeight() * adSize2.getWidth()) {
                                }
                            }
                            adSize = adSize2;
                        }
                    }
                }
            }
        }
        return adSize;
    }
}
