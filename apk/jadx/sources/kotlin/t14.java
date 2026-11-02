package kotlin;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class t14 {
    public static v14 a(Context context, AdSize adSize) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        int width = adSize.getWidth();
        int height = adSize.getHeight();
        boolean zIsFluid = adSize.isFluid();
        if (zIsFluid) {
            width = 320;
            height = 50;
        }
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        int iCeil = (int) Math.ceil(TypedValue.applyDimension(1, width, displayMetrics));
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(context, "<this>");
        DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
        int iCeil2 = (int) Math.ceil(TypedValue.applyDimension(1, height, displayMetrics2));
        return zIsFluid ? new v14(u14.FLUID_RECTANGLE, iCeil, iCeil2, true) : new v14(u14.FIXED_RECTANGLE, iCeil, iCeil2, 8);
    }
}
