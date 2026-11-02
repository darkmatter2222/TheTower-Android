package kotlin;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.libraries.ads.mobile.sdk.R;
import com.unity3d.ads.BuildConfig;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.optionals.OptionalsKt;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class bz1 {
    public final ix1 a;
    public final CoroutineScope b;
    public final CoroutineScope c;
    public final tz1 d;
    public final f0 e;
    public final ks1 f;
    public final h41 g;
    public final r31 h;
    public final Mutex i;
    public PopupWindow j;
    public ImageView k;
    public ViewGroup.LayoutParams l;
    public v14 m;
    public ViewGroup n;

    public bz1(ix1 mraidAfmaDispatcher, CoroutineScope uiScope, CoroutineScope backgroundScope, tz1 mraidViewabilityEventListener, Optional optionalGmaWebViewContainer, f0 activityTracker, ks1 mraidEventEmitter) {
        Intrinsics.checkNotNullParameter(mraidAfmaDispatcher, "mraidAfmaDispatcher");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(mraidViewabilityEventListener, "mraidViewabilityEventListener");
        Intrinsics.checkNotNullParameter(optionalGmaWebViewContainer, "optionalGmaWebViewContainer");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(mraidEventEmitter, "mraidEventEmitter");
        this.a = mraidAfmaDispatcher;
        this.b = uiScope;
        this.c = backgroundScope;
        this.d = mraidViewabilityEventListener;
        this.e = activityTracker;
        this.f = mraidEventEmitter;
        h41 h41Var = (h41) OptionalsKt.getOrNull(optionalGmaWebViewContainer);
        this.g = h41Var;
        this.h = h41Var != null ? h41Var.a() : null;
        this.i = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:106:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:143:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:151:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4, types: [int] */
    /* JADX WARN: Type inference failed for: r13v7 */
    public static Object a(bz1 bz1Var, Map map, Continuation continuation) {
        zy1 zy1Var;
        Activity activityG;
        Window window;
        ViewGroup viewGroup;
        int iIntValue;
        int iIntValue2;
        gy gyVar;
        bz1 bz1Var2;
        gy gyVar2;
        int i;
        int i2;
        ?? r0;
        Boolean booleanStrictOrNull;
        Integer intOrNull;
        Integer intOrNull2;
        Integer intOrNull3;
        Integer intOrNull4;
        p005kotlin.Pair pair;
        Point point;
        Point point2;
        int i3;
        int i4;
        if (continuation instanceof zy1) {
            zy1Var = (zy1) continuation;
            int i5 = zy1Var.m;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                zy1Var.m = i5 - Integer.MIN_VALUE;
            } else {
                zy1Var = new zy1(bz1Var, continuation);
            }
        } else {
            zy1Var = new zy1(bz1Var, continuation);
        }
        Object obj = zy1Var.k;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i6 = zy1Var.m;
        if (i6 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (bz1Var.h == null || bz1Var.g == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            activityG = bz1Var.e.g();
            if (activityG == null) {
                bz1Var.a(bz1Var.h, "There is no active activity, cannot resize.");
                return p005kotlin.Unit.INSTANCE;
            }
            if (bz1Var.h.e().a == u14.FULLSCREEN) {
                bz1Var.a(bz1Var.h, "Cannot resize full screen webview.");
                return p005kotlin.Unit.INSTANCE;
            }
            if (bz1Var.h.o.get()) {
                bz1Var.a(bz1Var.h, "Cannot resize expanded webview.");
                return p005kotlin.Unit.INSTANCE;
            }
            window = activityG.getWindow();
            if (window == null) {
                bz1Var.a(bz1Var.h, "Activity does not have window, cannot resize.");
                return p005kotlin.Unit.INSTANCE;
            }
            ViewParent parent = bz1Var.g.getParent();
            viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup == null) {
                bz1Var.a(bz1Var.h, "Cannot resize webview that has no parent.");
                return p005kotlin.Unit.INSTANCE;
            }
            String str = (String) map.get("width");
            iIntValue = -1;
            iIntValue2 = (str == null || (intOrNull4 = StringsKt.toIntOrNull(str)) == null) ? -1 : intOrNull4.intValue();
            String str2 = (String) map.get("height");
            if (str2 != null && (intOrNull3 = StringsKt.toIntOrNull(str2)) != null) {
                iIntValue = intOrNull3.intValue();
            }
            String str3 = (String) map.get("offsetX");
            int iIntValue3 = (str3 == null || (intOrNull2 = StringsKt.toIntOrNull(str3)) == null) ? 0 : intOrNull2.intValue();
            String str4 = (String) map.get("offsetY");
            int iIntValue4 = (str4 == null || (intOrNull = StringsKt.toIntOrNull(str4)) == null) ? 0 : intOrNull.intValue();
            String str5 = (String) map.get("allowOffscreen");
            ?? BooleanValue = (str5 == null || (booleanStrictOrNull = StringsKt.toBooleanStrictOrNull(str5)) == null) ? 1 : booleanStrictOrNull.booleanValue();
            String str6 = (String) map.get("customClosePosition");
            gy.b.getClass();
            if (str6 != null) {
                switch (str6) {
                    case "center":
                        gyVar = gy.f;
                        break;
                    case "top-right":
                        gyVar = gy.e;
                        break;
                    case "top-left":
                        gyVar = gy.c;
                        break;
                    case "bottom-left":
                        gyVar = gy.g;
                        break;
                    case "bottom-right":
                        gyVar = gy.i;
                        break;
                    case "bottom-center":
                        gyVar = gy.h;
                        break;
                    case "top-center":
                        gyVar = gy.d;
                        break;
                    default:
                        gyVar = gy.e;
                        break;
                }
            } else {
                gyVar = gy.e;
            }
            tz1 tz1Var = bz1Var.d;
            zy1Var.a = bz1Var;
            zy1Var.b = activityG;
            zy1Var.c = window;
            zy1Var.d = viewGroup;
            zy1Var.e = gyVar;
            zy1Var.f = iIntValue2;
            zy1Var.g = iIntValue;
            zy1Var.h = iIntValue3;
            zy1Var.i = iIntValue4;
            zy1Var.j = BooleanValue;
            zy1Var.m = 1;
            tz1Var.getClass();
            Object objA = tz1.a(tz1Var, zy1Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            bz1Var2 = bz1Var;
            gyVar2 = gyVar;
            i = iIntValue3;
            obj = objA;
            i2 = iIntValue4;
            r0 = BooleanValue;
        } else {
            if (i6 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i7 = zy1Var.j;
            int i8 = zy1Var.i;
            int i9 = zy1Var.h;
            iIntValue = zy1Var.g;
            iIntValue2 = zy1Var.f;
            gy gyVar3 = zy1Var.e;
            viewGroup = zy1Var.d;
            window = zy1Var.c;
            activityG = zy1Var.b;
            bz1 bz1Var3 = zy1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            i2 = i8;
            bz1Var2 = bz1Var3;
            i = i9;
            gyVar2 = gyVar3;
            r0 = i7;
        }
        int i10 = iIntValue;
        int i11 = iIntValue2;
        Rect rect = (Rect) obj;
        if (rect == null) {
            rect = new Rect();
        }
        Rect rect2 = rect;
        p005kotlin.Pair pairB = zn0.b(activityG);
        p005kotlin.Pair pairA = zn0.a(activityG);
        boolean z = r0 != 0;
        n53 n53Var = new n53(i11, i10, i, i2, z, gyVar2, rect2, pairB, pairA);
        boolean z2 = z;
        int iIntValue5 = ((Number) pairB.component1()).intValue();
        int iIntValue6 = ((Number) pairB.component2()).intValue();
        if (i11 < 50 || i11 > iIntValue5) {
            pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Invalid width. Cannot resize.");
        } else if (i10 < 50 || i10 > iIntValue6) {
            pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Invalid height. Cannot resize.");
        } else if (i10 >= iIntValue6 && i11 >= iIntValue5) {
            pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Resize cannot be used to resize to full screen.");
        } else if (z2) {
            int iIntValue7 = ((Number) pairA.component1()).intValue();
            int iIntValue8 = ((Number) pairA.component2()).intValue();
            int iIntValue9 = ((Number) pairB.component1()).intValue();
            int i12 = rect2.left + i;
            int i13 = i12 + i11;
            int i14 = (i11 / 2) + i12;
            int i15 = rect2.top + i2;
            int i16 = i15 + i10;
            int i17 = (i10 / 2) + i15;
            switch (gyVar2.ordinal()) {
                case 0:
                    point = new Point(i12, i15);
                    point2 = point;
                    i3 = point2.x;
                    if (i3 < 0 && i3 + 50 <= iIntValue9 && (i4 = point2.y) >= iIntValue7 && i4 + 50 <= iIntValue8) {
                        pair = p005kotlin.TuplesKt.to(Boolean.TRUE, "");
                    } else {
                        pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Close button is not visible.");
                    }
                    break;
                case 1:
                    point = new Point(i14 - 25, i15);
                    point2 = point;
                    i3 = point2.x;
                    if (i3 < 0) {
                    }
                    pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Close button is not visible.");
                    break;
                case 2:
                    point = new Point(i13 - 50, i15);
                    point2 = point;
                    i3 = point2.x;
                    if (i3 < 0) {
                    }
                    pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Close button is not visible.");
                    break;
                case 3:
                    point2 = new Point(i14 - 25, i17 - 25);
                    i3 = point2.x;
                    if (i3 < 0) {
                    }
                    pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Close button is not visible.");
                    break;
                case 4:
                    point2 = new Point(i12, i16 - 50);
                    i3 = point2.x;
                    if (i3 < 0) {
                    }
                    pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Close button is not visible.");
                    break;
                case 5:
                    point2 = new Point(i14 - 25, i16 - 50);
                    i3 = point2.x;
                    if (i3 < 0) {
                    }
                    pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Close button is not visible.");
                    break;
                case 6:
                    point2 = new Point(i13 - 50, i16 - 50);
                    i3 = point2.x;
                    if (i3 < 0) {
                    }
                    pair = p005kotlin.TuplesKt.to(Boolean.FALSE, "Close button is not visible.");
                    break;
                default:
                    throw new p005kotlin.NoWhenBranchMatchedException();
            }
        } else {
            pair = p005kotlin.TuplesKt.to(Boolean.TRUE, "");
        }
        boolean zBooleanValue = ((Boolean) pair.component1()).booleanValue();
        String str7 = (String) pair.component2();
        if (zBooleanValue) {
            BuildersKt__Builders_commonKt.launch$default(bz1Var2.b, null, null, new az1(bz1Var2, viewGroup, n53Var, activityG, window, null), 3, null);
            return p005kotlin.Unit.INSTANCE;
        }
        bz1Var2.a(bz1Var2.h, str7);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(bz1 bz1Var, boolean z, Continuation continuation) throws Throwable {
        uy1 uy1Var;
        Mutex mutex;
        PopupWindow popupWindow;
        bz1 bz1Var2;
        Mutex mutex2;
        ImageView imageView;
        Throwable th;
        bz1Var.getClass();
        if (continuation instanceof uy1) {
            uy1Var = (uy1) continuation;
            int i = uy1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                uy1Var.f = i - Integer.MIN_VALUE;
            } else {
                uy1Var = new uy1(bz1Var, continuation);
            }
        } else {
            uy1Var = new uy1(bz1Var, continuation);
        }
        Object obj = uy1Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = uy1Var.f;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                mutex = bz1Var.i;
                uy1Var.a = bz1Var;
                uy1Var.b = mutex;
                uy1Var.c = z;
                uy1Var.f = 1;
                if (mutex.lock(null, uy1Var) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutex2 = uy1Var.b;
                bz1Var2 = uy1Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj);
                    BuildersKt__Builders_commonKt.launch$default(bz1Var2.c, null, null, new vy1(bz1Var2, null), 3, null);
                    mutex = mutex2;
                    bz1Var = bz1Var2;
                    bz1Var.j = null;
                    bz1Var.n = null;
                    bz1Var.k = null;
                    bz1Var.m = null;
                    mutex2 = mutex;
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    mutex2.unlock(null);
                    return unit;
                } catch (Throwable th2) {
                    th = th2;
                    mutex2.unlock(null);
                    throw th;
                }
            }
            z = uy1Var.c;
            Mutex mutex3 = uy1Var.b;
            bz1 bz1Var3 = uy1Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex3;
            bz1Var = bz1Var3;
            if (bz1Var.h != null && bz1Var.g != null && (popupWindow = bz1Var.j) != null) {
                popupWindow.dismiss();
                ViewGroup viewGroup = bz1Var.n;
                if (viewGroup != null && (imageView = bz1Var.k) != null) {
                    viewGroup.removeView(imageView);
                    ViewParent parent = bz1Var.g.getParent();
                    ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(bz1Var.g);
                    }
                    v14 v14Var = bz1Var.m;
                    if (v14Var != null) {
                        bz1Var.h.a(v14Var);
                    }
                    bz1Var.g.setLayoutParams(bz1Var.l);
                    viewGroup.addView(bz1Var.g);
                }
                if (z) {
                    ix1 ix1Var = bz1Var.a;
                    r31 r31Var = bz1Var.h;
                    uy1Var.a = bz1Var;
                    uy1Var.b = mutex;
                    uy1Var.f = 2;
                    ix1Var.getClass();
                    if (ix1.a(r31Var, BuildConfig.FLAVOR, uy1Var) != coroutine_suspended) {
                        bz1Var2 = bz1Var;
                        mutex2 = mutex;
                        BuildersKt__Builders_commonKt.launch$default(bz1Var2.c, null, null, new vy1(bz1Var2, null), 3, null);
                        mutex = mutex2;
                        bz1Var = bz1Var2;
                    }
                    return coroutine_suspended;
                }
                bz1Var.j = null;
                bz1Var.n = null;
                bz1Var.k = null;
                bz1Var.m = null;
            }
            mutex2 = mutex;
            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
            mutex2.unlock(null);
            return unit2;
        } catch (Throwable th3) {
            th = th3;
            mutex2 = mutex;
            mutex2.unlock(null);
            throw th;
        }
    }

    public static final void a(bz1 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.a(true);
    }

    public final PopupWindow a(n53 n53Var, Activity activity, r31 r31Var) {
        String string;
        int iA = zn0.a(activity, n53Var.a);
        int iA2 = zn0.a(activity, n53Var.b);
        RelativeLayout relativeLayout = new RelativeLayout(activity);
        relativeLayout.setBackgroundColor(0);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(iA, iA2));
        relativeLayout.addView(this.g, -1, -1);
        r31Var.a(new v14(u14.FIXED_RECTANGLE, iA, iA2, 8));
        LinearLayout linearLayout = new LinearLayout(activity);
        int iA3 = zn0.a(activity, 50);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iA3, iA3);
        Iterator<E> it = n53Var.f.a.iterator();
        while (it.hasNext()) {
            layoutParams.addRule(((Number) it.next()).intValue());
        }
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: ads_mobile_sdk.bz1$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bz1.a(this.f$0, view);
            }
        });
        Resources resources = activity.getResources();
        if (resources == null || (string = resources.getString(R.string.close_button)) == null) {
            string = "Close button";
        }
        linearLayout.setContentDescription(string);
        relativeLayout.addView(linearLayout, layoutParams);
        PopupWindow popupWindow = new PopupWindow((View) relativeLayout, iA, iA2, false);
        popupWindow.setOutsideTouchable(false);
        popupWindow.setTouchable(true);
        popupWindow.setClippingEnabled(!n53Var.e);
        return popupWindow;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:66:0x01df A[Catch: all -> 0x0206, TryCatch #3 {all -> 0x0206, blocks: (B:14:0x0044, B:56:0x01b5, B:79:0x01ff, B:64:0x01c3, B:66:0x01df, B:69:0x01e5, B:70:0x01e8, B:72:0x01ec, B:73:0x01f1, B:75:0x01f5, B:76:0x01f8, B:78:0x01fc, B:52:0x0198, B:32:0x00cd, B:34:0x00d1, B:35:0x00e6, B:36:0x00f4, B:39:0x0111, B:40:0x0118, B:41:0x011c, B:43:0x0123, B:44:0x0126, B:45:0x012e, B:47:0x018b), top: B:89:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:67:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:69:0x01e5 A[Catch: all -> 0x0206, TryCatch #3 {all -> 0x0206, blocks: (B:14:0x0044, B:56:0x01b5, B:79:0x01ff, B:64:0x01c3, B:66:0x01df, B:69:0x01e5, B:70:0x01e8, B:72:0x01ec, B:73:0x01f1, B:75:0x01f5, B:76:0x01f8, B:78:0x01fc, B:52:0x0198, B:32:0x00cd, B:34:0x00d1, B:35:0x00e6, B:36:0x00f4, B:39:0x0111, B:40:0x0118, B:41:0x011c, B:43:0x0123, B:44:0x0126, B:45:0x012e, B:47:0x018b), top: B:89:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:72:0x01ec A[Catch: all -> 0x0206, TryCatch #3 {all -> 0x0206, blocks: (B:14:0x0044, B:56:0x01b5, B:79:0x01ff, B:64:0x01c3, B:66:0x01df, B:69:0x01e5, B:70:0x01e8, B:72:0x01ec, B:73:0x01f1, B:75:0x01f5, B:76:0x01f8, B:78:0x01fc, B:52:0x0198, B:32:0x00cd, B:34:0x00d1, B:35:0x00e6, B:36:0x00f4, B:39:0x0111, B:40:0x0118, B:41:0x011c, B:43:0x0123, B:44:0x0126, B:45:0x012e, B:47:0x018b), top: B:89:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01f5 A[Catch: all -> 0x0206, TryCatch #3 {all -> 0x0206, blocks: (B:14:0x0044, B:56:0x01b5, B:79:0x01ff, B:64:0x01c3, B:66:0x01df, B:69:0x01e5, B:70:0x01e8, B:72:0x01ec, B:73:0x01f1, B:75:0x01f5, B:76:0x01f8, B:78:0x01fc, B:52:0x0198, B:32:0x00cd, B:34:0x00d1, B:35:0x00e6, B:36:0x00f4, B:39:0x0111, B:40:0x0118, B:41:0x011c, B:43:0x0123, B:44:0x0126, B:45:0x012e, B:47:0x018b), top: B:89:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:78:0x01fc A[Catch: all -> 0x0206, TryCatch #3 {all -> 0x0206, blocks: (B:14:0x0044, B:56:0x01b5, B:79:0x01ff, B:64:0x01c3, B:66:0x01df, B:69:0x01e5, B:70:0x01e8, B:72:0x01ec, B:73:0x01f1, B:75:0x01f5, B:76:0x01f8, B:78:0x01fc, B:52:0x0198, B:32:0x00cd, B:34:0x00d1, B:35:0x00e6, B:36:0x00f4, B:39:0x0111, B:40:0x0118, B:41:0x011c, B:43:0x0123, B:44:0x0126, B:45:0x012e, B:47:0x018b), top: B:89:0x002a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v9, types: [kotlinx.coroutines.sync.Mutex] */
    public final Object a(ViewGroup viewGroup, n53 n53Var, Activity activity, Window window, r31 r31Var, h41 h41Var, Continuation continuation) throws Throwable {
        xy1 xy1Var;
        n53 n53Var2;
        Activity activity2;
        Window window2;
        r31 r31Var2;
        bz1 bz1Var;
        h41 h41Var2;
        ViewGroup viewGroup2;
        Mutex mutex;
        PopupWindow popupWindowA;
        Point pointA;
        int i;
        int i2;
        int i3;
        int i4;
        xy1 xy1Var2;
        r31 r31Var3;
        xy1 xy1Var3;
        r31 r31Var4;
        bz1 bz1Var2;
        ImageView imageView;
        h41 h41Var3;
        PopupWindow popupWindow;
        ViewParent parent;
        ViewGroup viewGroup3;
        ViewGroup viewGroup4;
        ViewGroup viewGroup5;
        v14 v14Var;
        if (continuation instanceof xy1) {
            xy1Var = (xy1) continuation;
            int i5 = xy1Var.k;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                xy1Var.k = i5 - Integer.MIN_VALUE;
            } else {
                xy1Var = new xy1(this, continuation);
            }
        } else {
            xy1Var = new xy1(this, continuation);
        }
        Object obj = xy1Var.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r5 = xy1Var.k;
        try {
            try {
                try {
                    if (r5 == 0) {
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        Mutex mutex2 = this.i;
                        xy1Var.a = this;
                        xy1Var.b = viewGroup;
                        n53Var2 = n53Var;
                        xy1Var.c = n53Var2;
                        activity2 = activity;
                        xy1Var.d = activity2;
                        window2 = window;
                        xy1Var.e = window2;
                        r31Var2 = r31Var;
                        xy1Var.f = r31Var2;
                        xy1Var.g = h41Var;
                        xy1Var.h = mutex2;
                        xy1Var.k = 1;
                        if (mutex2.lock(null, xy1Var) != coroutine_suspended) {
                            bz1Var = this;
                            h41Var2 = h41Var;
                            viewGroup2 = viewGroup;
                            mutex = mutex2;
                        }
                        return coroutine_suspended;
                    }
                    if (r5 == 1) {
                        Mutex mutex3 = xy1Var.h;
                        h41Var2 = xy1Var.g;
                        r31 r31Var5 = xy1Var.f;
                        Window window3 = (Window) xy1Var.e;
                        Activity activity3 = (Activity) xy1Var.d;
                        n53 n53Var3 = (n53) xy1Var.c;
                        viewGroup2 = xy1Var.b;
                        bz1Var = xy1Var.a;
                        p005kotlin.ResultKt.throwOnFailure(obj);
                        r31Var2 = r31Var5;
                        n53Var2 = n53Var3;
                        window2 = window3;
                        activity2 = activity3;
                        mutex = mutex3;
                    } else {
                        if (r5 != 2) {
                            if (r5 != 3) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            popupWindow = (PopupWindow) xy1Var.e;
                            mutex = (Mutex) xy1Var.d;
                            h41Var3 = (h41) xy1Var.c;
                            r31Var4 = (r31) xy1Var.b;
                            bz1Var2 = xy1Var.a;
                            try {
                                p005kotlin.ResultKt.throwOnFailure(obj);
                                mutex = mutex;
                                bz1Var2.j = popupWindow;
                                r5 = mutex;
                            } catch (Exception e) {
                                e = e;
                                bz1Var = bz1Var2;
                                h41Var2 = h41Var3;
                                r31Var2 = r31Var4;
                                bz1Var.a(r31Var2, "Cannot show popup window: " + e.getMessage());
                                parent = h41Var2.getParent();
                                if (parent instanceof ViewGroup) {
                                    viewGroup3 = (ViewGroup) parent;
                                } else {
                                    viewGroup3 = null;
                                }
                                if (viewGroup3 != null) {
                                    viewGroup3.removeView(h41Var2);
                                }
                                viewGroup4 = bz1Var.n;
                                if (viewGroup4 != null) {
                                    viewGroup4.removeView(bz1Var.k);
                                }
                                viewGroup5 = bz1Var.n;
                                if (viewGroup5 != null) {
                                    viewGroup5.addView(h41Var2);
                                }
                                v14Var = bz1Var.m;
                                r5 = mutex;
                                if (v14Var != null) {
                                    r31Var2.a(v14Var);
                                    r5 = mutex;
                                }
                            }
                            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                            r5.unlock(null);
                            return unit;
                        }
                        PopupWindow popupWindow2 = (PopupWindow) xy1Var.e;
                        Mutex mutex4 = (Mutex) xy1Var.d;
                        h41Var2 = (h41) xy1Var.c;
                        r31 r31Var6 = (r31) xy1Var.b;
                        bz1 bz1Var3 = xy1Var.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj);
                            xy1Var3 = xy1Var;
                            popupWindowA = popupWindow2;
                            mutex = mutex4;
                            r31Var4 = r31Var6;
                            bz1Var2 = bz1Var3;
                            try {
                                ix1 ix1Var = bz1Var2.a;
                                xy1Var3.a = bz1Var2;
                                xy1Var3.b = r31Var4;
                                xy1Var3.c = h41Var2;
                                xy1Var3.d = mutex;
                                xy1Var3.e = popupWindowA;
                                xy1Var3.k = 3;
                                ix1Var.getClass();
                                if (ix1.a(r31Var4, "resized", xy1Var3) != coroutine_suspended) {
                                    popupWindow = popupWindowA;
                                    h41Var3 = h41Var2;
                                    mutex = mutex;
                                    bz1Var2.j = popupWindow;
                                    r5 = mutex;
                                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                    r5.unlock(null);
                                    return unit2;
                                }
                                return coroutine_suspended;
                            } catch (Exception e2) {
                                e = e2;
                                h41Var3 = h41Var2;
                                bz1Var = bz1Var2;
                                h41Var2 = h41Var3;
                                r31Var2 = r31Var4;
                                bz1Var.a(r31Var2, "Cannot show popup window: " + e.getMessage());
                                parent = h41Var2.getParent();
                                if (parent instanceof ViewGroup) {
                                    viewGroup3 = (ViewGroup) parent;
                                } else {
                                    viewGroup3 = null;
                                }
                                if (viewGroup3 != null) {
                                    viewGroup3.removeView(h41Var2);
                                }
                                viewGroup4 = bz1Var.n;
                                if (viewGroup4 != null) {
                                    viewGroup4.removeView(bz1Var.k);
                                }
                                viewGroup5 = bz1Var.n;
                                if (viewGroup5 != null) {
                                    viewGroup5.addView(h41Var2);
                                }
                                v14Var = bz1Var.m;
                                r5 = mutex;
                                if (v14Var != null) {
                                    r31Var2.a(v14Var);
                                    r5 = mutex;
                                }
                            }
                        } catch (Exception e3) {
                            e = e3;
                            mutex = mutex4;
                            h41Var3 = h41Var2;
                            r31Var4 = r31Var6;
                            bz1Var2 = bz1Var3;
                            bz1Var = bz1Var2;
                            h41Var2 = h41Var3;
                            r31Var2 = r31Var4;
                            bz1Var.a(r31Var2, "Cannot show popup window: " + e.getMessage());
                            parent = h41Var2.getParent();
                            if (parent instanceof ViewGroup) {
                                viewGroup3 = (ViewGroup) parent;
                            } else {
                                viewGroup3 = null;
                            }
                            if (viewGroup3 != null) {
                                viewGroup3.removeView(h41Var2);
                            }
                            viewGroup4 = bz1Var.n;
                            if (viewGroup4 != null) {
                                viewGroup4.removeView(bz1Var.k);
                            }
                            viewGroup5 = bz1Var.n;
                            if (viewGroup5 != null) {
                                viewGroup5.addView(h41Var2);
                            }
                            v14Var = bz1Var.m;
                            r5 = mutex;
                            if (v14Var != null) {
                                r31Var2.a(v14Var);
                                r5 = mutex;
                            }
                            p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                            r5.unlock(null);
                            return unit3;
                        } catch (Throwable th) {
                            th = th;
                            r5 = mutex4;
                            r5.unlock(null);
                            throw th;
                        }
                    }
                    if (bz1Var.j == null) {
                        bz1Var.m = r31Var2.e();
                        bz1Var.l = h41Var2.getLayoutParams();
                        ViewGroup.LayoutParams layoutParams = h41Var2.getLayoutParams();
                        Intrinsics.checkNotNullExpressionValue(layoutParams, "getLayoutParams(...)");
                        try {
                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(h41Var2.getWidth(), h41Var2.getHeight(), Bitmap.Config.ARGB_8888);
                            Intrinsics.checkNotNull(bitmapCreateBitmap);
                            h41Var2.draw(new Canvas(bitmapCreateBitmap));
                            imageView = new ImageView(activity2);
                            imageView.setLayoutParams(layoutParams);
                            imageView.setImageBitmap(bitmapCreateBitmap);
                            viewGroup2.addView(imageView);
                        } catch (Exception unused) {
                            imageView = null;
                        }
                        if (imageView == null) {
                            bz1Var.a(r31Var2, "Unable to create snapshot of webview.");
                            r5 = mutex;
                        } else {
                            bz1Var.k = imageView;
                            bz1Var.n = viewGroup2;
                        }
                        p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                        r5.unlock(null);
                        return unit4;
                    }
                    Object objA = ix1.a(r31Var3, i, i2, i3, i4, xy1Var2);
                    xy1Var3 = xy1Var2;
                    if (objA != coroutine_suspended) {
                        r31Var4 = r31Var3;
                        bz1Var2 = bz1Var;
                        mutex = mutex;
                        ix1 ix1Var2 = bz1Var2.a;
                        xy1Var3.a = bz1Var2;
                        xy1Var3.b = r31Var4;
                        xy1Var3.c = h41Var2;
                        xy1Var3.d = mutex;
                        xy1Var3.e = popupWindowA;
                        xy1Var3.k = 3;
                        ix1Var2.getClass();
                        if (ix1.a(r31Var4, "resized", xy1Var3) != coroutine_suspended) {
                            popupWindow = popupWindowA;
                            h41Var3 = h41Var2;
                            mutex = mutex;
                            bz1Var2.j = popupWindow;
                            r5 = mutex;
                            p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                            r5.unlock(null);
                            return unit5;
                        }
                    }
                    return coroutine_suspended;
                } catch (Exception e4) {
                    e = e4;
                    r31Var2 = r31Var3;
                    bz1Var.a(r31Var2, "Cannot show popup window: " + e.getMessage());
                    parent = h41Var2.getParent();
                    if (parent instanceof ViewGroup) {
                        viewGroup3 = (ViewGroup) parent;
                    } else {
                        viewGroup3 = null;
                    }
                    if (viewGroup3 != null) {
                        viewGroup3.removeView(h41Var2);
                    }
                    viewGroup4 = bz1Var.n;
                    if (viewGroup4 != null) {
                        viewGroup4.removeView(bz1Var.k);
                    }
                    viewGroup5 = bz1Var.n;
                    if (viewGroup5 != null) {
                        viewGroup5.addView(h41Var2);
                    }
                    v14Var = bz1Var.m;
                    r5 = mutex;
                    if (v14Var != null) {
                        r31Var2.a(v14Var);
                        r5 = mutex;
                    }
                }
                popupWindowA.showAtLocation(window2.getDecorView(), 0, zn0.a(activity2, pointA.x), zn0.a(activity2, pointA.y));
                BuildersKt__Builders_commonKt.launch$default(bz1Var.c, null, null, new yy1(bz1Var, null), 3, null);
                ix1 ix1Var3 = bz1Var.a;
                i = pointA.x;
                i2 = pointA.y;
                i3 = n53Var2.a;
                i4 = n53Var2.b;
                xy1Var.a = bz1Var;
                xy1Var.b = r31Var2;
                xy1Var.c = h41Var2;
                xy1Var.d = mutex;
                xy1Var.e = popupWindowA;
                xy1Var.f = null;
                xy1Var.g = null;
                xy1Var.h = null;
                xy1Var.k = 2;
                ix1Var3.getClass();
                xy1Var2 = xy1Var;
                r31Var3 = r31Var2;
            } catch (Exception e5) {
                e = e5;
            }
            viewGroup2.removeView(h41Var2);
            PopupWindow popupWindow3 = bz1Var.j;
            if (popupWindow3 != null) {
                popupWindow3.dismiss();
            }
            popupWindowA = bz1Var.a(n53Var2, activity2, r31Var2);
            pointA = n53Var2.a();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final Object a(Map map, cy1 cy1Var) {
        return a(this, map, cy1Var);
    }

    public final void a(r31 r31Var, String str) {
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new wy1(str, this, r31Var, null), 3, null);
    }

    public final void a(boolean z) {
        BuildersKt__Builders_commonKt.launch$default(this.b, null, null, new ty1(this, z, null), 3, null);
    }
}
