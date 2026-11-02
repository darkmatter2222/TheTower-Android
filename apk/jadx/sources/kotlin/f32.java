package kotlin;

import android.widget.FrameLayout;
import android.widget.ImageView;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class f32 {
    /* JADX WARN: Multi-variable type inference failed */
    public static g32 a(g83 rootTraceCreator, ks3 traceMetaSet, k32 nativeAdUtil, FrameLayout frameLayout, Map assetViews, ImageView.ScaleType mediaviewScaleType) {
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(nativeAdUtil, "nativeAdUtil");
        Intrinsics.checkNotNullParameter(assetViews, "assetViews");
        Intrinsics.checkNotNullParameter(mediaviewScaleType, "mediaviewScaleType");
        s11 s11Var = s11.CUI_NAME_NATIVE_AD_SIGNAL;
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(rootTraceCreator, s11Var, listEmptyList, traceMetaSet);
            try {
                g32 g32Var = new g32(nativeAdUtil.a(frameLayout, mediaviewScaleType, assetViews), nativeAdUtil.c(frameLayout), nativeAdUtil.b(frameLayout), nativeAdUtil.a(frameLayout), nativeAdUtil.a());
                if (g32Var instanceof i01) {
                    xs3.a((i01) g32Var, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                return g32Var;
            } catch (Throwable th) {
                try {
                    tu2VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        tu2VarA.a(th);
                    }
                    if (th instanceof TimeoutCancellationException) {
                        throw new i21(th);
                    }
                    if (th instanceof CancellationException) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(tu2VarA, th2);
                        throw th3;
                    }
                }
            }
        }
        rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            g32 g32Var2 = new g32(nativeAdUtil.a(frameLayout, mediaviewScaleType, assetViews), nativeAdUtil.c(frameLayout), nativeAdUtil.b(frameLayout), nativeAdUtil.a(frameLayout), nativeAdUtil.a());
            if (g32Var2 instanceof i01) {
                xs3.a((i01) g32Var2, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return g32Var2;
        } catch (Throwable th4) {
            try {
                rr3VarA.b(th4);
                if (th4 instanceof v24) {
                    throw th4;
                }
                if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                    rr3VarA.a(th4);
                }
                if (th4 instanceof TimeoutCancellationException) {
                    throw new i21(th4);
                }
                if (th4 instanceof CancellationException) {
                    throw new wz0(th4);
                }
                if (th4 instanceof w01) {
                    throw th4;
                }
                throw new b01(th4);
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    CloseableKt.closeFinally(rr3VarA, th5);
                    throw th6;
                }
            }
        }
    }
}
