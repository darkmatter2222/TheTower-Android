package kotlin;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.ironsource.C3510b4;
import java.lang.ref.WeakReference;
import java.util.Map;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class at1 implements r41 {
    public final ex0 a;
    public final j12 b;
    public final q52 c;
    public final k32 d;
    public final CoroutineScope e;
    public final f82 f;

    public at1(ex0 flags, j12 nativeAdCore, q52 nativeJavascriptEngine, k32 nativeAdUtil, CoroutineScope uiScope, f82 nativePolicyValidatorState) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(nativeAdCore, "nativeAdCore");
        Intrinsics.checkNotNullParameter(nativeJavascriptEngine, "nativeJavascriptEngine");
        Intrinsics.checkNotNullParameter(nativeAdUtil, "nativeAdUtil");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(nativePolicyValidatorState, "nativePolicyValidatorState");
        this.a = flags;
        this.b = nativeAdCore;
        this.c = nativeJavascriptEngine;
        this.d = nativeAdUtil;
        this.e = uiScope;
        this.f = nativePolicyValidatorState;
    }

    public static final void a(View overlayFrame, r31 validatorOverlay, String str, WindowManager.LayoutParams layoutParams, int i, at1 this$0, WindowManager windowManager) {
        Intrinsics.checkNotNullParameter(overlayFrame, "$overlayFrame");
        Intrinsics.checkNotNullParameter(validatorOverlay, "$validatorOverlay");
        Intrinsics.checkNotNullParameter(layoutParams, "$layoutParams");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(windowManager, "$windowManager");
        Rect rect = new Rect();
        if (!overlayFrame.getGlobalVisibleRect(rect) || validatorOverlay.getWindowToken() == null) {
            return;
        }
        if (Intrinsics.areEqual("1", str) || Intrinsics.areEqual("2", str)) {
            layoutParams.y = rect.bottom - i;
        } else {
            layoutParams.y = rect.top - i;
        }
        BuildersKt__Builders_commonKt.launch$default(this$0.e, null, null, new zs1(windowManager, validatorOverlay, layoutParams, null), 3, null);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0147 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #6 {all -> 0x003b, blocks: (B:13:0x0036, B:63:0x0141, B:65:0x0147), top: B:113:0x0036 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0164 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:75:0x015d, B:77:0x0164, B:79:0x0168, B:81:0x016c, B:82:0x016f, B:84:0x0173, B:86:0x0177, B:88:0x017b, B:89:0x017c, B:90:0x0181, B:91:0x0182, B:92:0x0189, B:93:0x018a, B:94:0x0191, B:95:0x0192), top: B:103:0x015d }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0168 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:75:0x015d, B:77:0x0164, B:79:0x0168, B:81:0x016c, B:82:0x016f, B:84:0x0173, B:86:0x0177, B:88:0x017b, B:89:0x017c, B:90:0x0181, B:91:0x0182, B:92:0x0189, B:93:0x018a, B:94:0x0191, B:95:0x0192), top: B:103:0x015d }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:84:0x0173 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:75:0x015d, B:77:0x0164, B:79:0x0168, B:81:0x016c, B:82:0x016f, B:84:0x0173, B:86:0x0177, B:88:0x017b, B:89:0x017c, B:90:0x0181, B:91:0x0182, B:92:0x0189, B:93:0x018a, B:94:0x0191, B:95:0x0192), top: B:103:0x015d }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0177 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:75:0x015d, B:77:0x0164, B:79:0x0168, B:81:0x016c, B:82:0x016f, B:84:0x0173, B:86:0x0177, B:88:0x017b, B:89:0x017c, B:90:0x0181, B:91:0x0182, B:92:0x0189, B:93:0x018a, B:94:0x0191, B:95:0x0192), top: B:103:0x015d }] */
    /* JADX WARN: Code duplicated, block: B:88:0x017b A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:75:0x015d, B:77:0x0164, B:79:0x0168, B:81:0x016c, B:82:0x016f, B:84:0x0173, B:86:0x0177, B:88:0x017b, B:89:0x017c, B:90:0x0181, B:91:0x0182, B:92:0x0189, B:93:0x018a, B:94:0x0191, B:95:0x0192), top: B:103:0x015d }] */
    /* JADX WARN: Code duplicated, block: B:89:0x017c A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:75:0x015d, B:77:0x0164, B:79:0x0168, B:81:0x016c, B:82:0x016f, B:84:0x0173, B:86:0x0177, B:88:0x017b, B:89:0x017c, B:90:0x0181, B:91:0x0182, B:92:0x0189, B:93:0x018a, B:94:0x0191, B:95:0x0192), top: B:103:0x015d }] */
    /* JADX WARN: Code duplicated, block: B:91:0x0182 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:75:0x015d, B:77:0x0164, B:79:0x0168, B:81:0x016c, B:82:0x016f, B:84:0x0173, B:86:0x0177, B:88:0x017b, B:89:0x017c, B:90:0x0181, B:91:0x0182, B:92:0x0189, B:93:0x018a, B:94:0x0191, B:95:0x0192), top: B:103:0x015d }] */
    /* JADX WARN: Code duplicated, block: B:93:0x018a A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:75:0x015d, B:77:0x0164, B:79:0x0168, B:81:0x016c, B:82:0x016f, B:84:0x0173, B:86:0x0177, B:88:0x017b, B:89:0x017c, B:90:0x0181, B:91:0x0182, B:92:0x0189, B:93:0x018a, B:94:0x0191, B:95:0x0192), top: B:103:0x015d }] */
    /* JADX WARN: Code duplicated, block: B:95:0x0192 A[Catch: all -> 0x0193, TRY_LEAVE, TryCatch #0 {all -> 0x0193, blocks: (B:75:0x015d, B:77:0x0164, B:79:0x0168, B:81:0x016c, B:82:0x016f, B:84:0x0173, B:86:0x0177, B:88:0x017b, B:89:0x017c, B:90:0x0181, B:91:0x0182, B:92:0x0189, B:93:0x018a, B:94:0x0191, B:95:0x0192), top: B:103:0x015d }] */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013c, code lost:
    
        if (r13.a(r15, "sendMessageToNativeJs", r1) == r2) goto L61;
     */
    @Override // kotlin.r41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.r31 r13, java.util.Map r14, p005kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instruction units count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.at1.a(ads_mobile_sdk.r31, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(final FrameLayout frameLayout, final r31 r31Var, Map map, final WindowManager windowManager) {
        int i;
        Context context = frameLayout.getContext();
        Intrinsics.checkNotNull(context);
        String str = (String) map.get("validator_width");
        ex0 ex0Var = this.a;
        Integer numA = by0.a(ex0Var, "gads:policy_validator_overlay_width:dp", C3510b4.i.W, 350);
        nr nrVar = yr.f;
        int iIntValue = ((Number) ex0Var.a("gads:policy_validator_overlay_width:dp", numA, nrVar)).intValue();
        if (str != null) {
            try {
                iIntValue = Integer.parseInt(str);
            } catch (NumberFormatException unused) {
            }
        }
        int iA = zn0.a(context, iIntValue);
        String str2 = (String) map.get("validator_height");
        ex0 ex0Var2 = this.a;
        int iIntValue2 = ((Number) ex0Var2.a("gads:policy_validator_overlay_height:dp", by0.a(ex0Var2, "gads:policy_validator_overlay_height:dp", C3510b4.i.W, 140), nrVar)).intValue();
        if (str2 != null) {
            try {
                iIntValue2 = Integer.parseInt(str2);
            } catch (NumberFormatException unused2) {
            }
        }
        int iA2 = zn0.a(context, iIntValue2);
        String str3 = (String) map.get("validator_x");
        int i2 = 0;
        if (str3 == null) {
            i = 0;
        } else {
            try {
                i = Integer.parseInt(str3);
            } catch (NumberFormatException unused3) {
                i = 0;
            }
        }
        int iA3 = zn0.a(context, i);
        String str4 = (String) map.get("validator_y");
        if (str4 != null) {
            try {
                i2 = Integer.parseInt(str4);
            } catch (NumberFormatException unused4) {
            }
        }
        int iA4 = zn0.a(context, i2);
        BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new xs1(r31Var, iA, iA2, this, null), 3, null);
        k32 k32Var = this.d;
        k32Var.getClass();
        final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        ex0 ex0Var3 = k32Var.b;
        layoutParams.flags = ((Number) ex0Var3.a("gads:policy_validator_layoutparam:flags", by0.a(ex0Var3, "gads:policy_validator_layoutparam:flags", C3510b4.i.W, 808), yr.f)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        layoutParams.x = iA3;
        layoutParams.y = iA4;
        layoutParams.width = iA;
        layoutParams.height = iA2;
        BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new ys1(windowManager, r31Var, layoutParams, null), 3, null);
        final String str5 = (String) map.get("orientation");
        Rect rect = new Rect();
        if (frameLayout.getGlobalVisibleRect(rect)) {
            final int i3 = ((Intrinsics.areEqual("1", str5) || Intrinsics.areEqual("2", str5)) ? rect.bottom : rect.top) - iA4;
            ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: ads_mobile_sdk.at1$$ExternalSyntheticLambda0
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public final void onScrollChanged() {
                    at1.a(frameLayout, r31Var, str5, layoutParams, i3, this, windowManager);
                }
            };
            ViewTreeObserver viewTreeObserver = frameLayout.getViewTreeObserver();
            if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
                return;
            }
            viewTreeObserver.addOnScrollChangedListener(onScrollChangedListener);
            f82 f82Var = this.f;
            WeakReference weakReference = new WeakReference(onScrollChangedListener);
            f82Var.getClass();
            Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
            f82Var.c = weakReference;
            f82 f82Var2 = this.f;
            WeakReference weakReference2 = new WeakReference(viewTreeObserver);
            f82Var2.getClass();
            Intrinsics.checkNotNullParameter(weakReference2, "<set-?>");
            f82Var2.b = weakReference2;
        }
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_LOAD_NATIVE_AD_POLICY_VIOLATIONS;
    }
}
