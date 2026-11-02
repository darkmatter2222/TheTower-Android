package kotlin;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import androidx.constraintlayout.motion.widget.Key;
import com.google.common.base.Splitter;
import com.google.gson.JsonObject;
import com.tapjoy.TJAdUnitConstants;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
public final class ix1 {
    public final Context a;
    public final f0 b;
    public final ao0 c;

    public ix1(Context context, f0 activityTracker, ao0 displayUtil) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        this.a = context;
        this.b = activityTracker;
        this.c = displayUtil;
    }

    public static Object a(r31 r31Var, int i, int i2, int i3, int i4, xy1 xy1Var) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("x", Boxing.boxInt(i));
        jsonObject.addProperty("y", Boxing.boxInt(i2));
        jsonObject.addProperty("width", Boxing.boxInt(i3));
        jsonObject.addProperty("height", Boxing.boxInt(i4));
        Object objA = r31Var.a(jsonObject, "onSizeChanged", xy1Var);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    public static Object a(r31 r31Var, String str, String str2, Continuation continuation) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("action", str2);
        jsonObject.addProperty(TJAdUnitConstants.String.MESSAGE, str);
        Object objA = r31Var.a(jsonObject, "onError", continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    public static Object a(r31 r31Var, String str, ContinuationImpl continuationImpl) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("state", str);
        Object objA = r31Var.a(jsonObject, "onStateChanged", continuationImpl);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    public final Object a(r31 r31Var, Continuation continuation) {
        Context contextC = this.c.c(this.a);
        Display displayA = this.c.a(this.a);
        if (displayA == null) {
            Splitter splitter = f01.a;
            f01.b("Unable to get Display in MraidAfmaDispatcher", null);
            return p005kotlin.Unit.INSTANCE;
        }
        int rotation = displayA.getRotation();
        DisplayMetrics displayMetricsA = zn0.a(contextC);
        float f = displayMetricsA.density;
        int i = displayMetricsA.widthPixels;
        Intrinsics.checkNotNullParameter(contextC, "<this>");
        Intrinsics.checkNotNullParameter(contextC, "<this>");
        DisplayMetrics displayMetrics = contextC.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
        int iRoundToInt = MathKt.roundToInt(i / displayMetrics.density);
        int i2 = displayMetricsA.heightPixels;
        Intrinsics.checkNotNullParameter(contextC, "<this>");
        Intrinsics.checkNotNullParameter(contextC, "<this>");
        DisplayMetrics displayMetrics2 = contextC.getResources().getDisplayMetrics();
        Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
        int iRoundToInt2 = MathKt.roundToInt(i2 / displayMetrics2.density);
        Activity activityG = this.b.g();
        p005kotlin.Pair pairB = activityG != null ? zn0.b(activityG) : new p005kotlin.Pair(Boxing.boxInt(iRoundToInt), Boxing.boxInt(iRoundToInt2));
        int iIntValue = ((Number) pairB.component1()).intValue();
        int iIntValue2 = ((Number) pairB.component2()).intValue();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("width", Boxing.boxInt(iRoundToInt));
        jsonObject.addProperty("height", Boxing.boxInt(iRoundToInt2));
        jsonObject.addProperty("maxSizeWidth", Boxing.boxInt(iIntValue));
        jsonObject.addProperty("maxSizeHeight", Boxing.boxInt(iIntValue2));
        jsonObject.addProperty("density", Boxing.boxDouble(f));
        jsonObject.addProperty(Key.ROTATION, Boxing.boxInt(rotation));
        Object objA = r31Var.a(jsonObject, "onScreenInfoChanged", continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }
}
