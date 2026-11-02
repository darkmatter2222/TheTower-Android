package kotlin;

import android.content.Context;
import androidx.core.util.TypedValueCompat;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mb implements rh3 {
    public final Optional a;
    public final Optional b;
    public final j53 c;
    public final Context d;
    public final ex0 e;
    public final ao0 f;

    public mb(Optional bannerRequest, Optional swipeableInterstitialRequest, j53 requestType, Context context, ex0 flags, ao0 displayUtil) {
        Intrinsics.checkNotNullParameter(bannerRequest, "bannerRequest");
        Intrinsics.checkNotNullParameter(swipeableInterstitialRequest, "swipeableInterstitialRequest");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(displayUtil, "displayUtil");
        this.a = bannerRequest;
        this.b = swipeableInterstitialRequest;
        this.c = requestType;
        this.d = context;
        this.e = flags;
        this.f = displayUtil;
    }

    public static String a(List list) {
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        boolean z = false;
        while (it.hasNext()) {
            AdSize adSize = (AdSize) it.next();
            if (adSize.isFluid()) {
                z = true;
            } else {
                if (sb.length() > 0) {
                    sb.append("|");
                }
                sb.append(adSize.getWidth());
                sb.append("x");
                sb.append(adSize.getHeight());
            }
        }
        if (z) {
            if (sb.length() > 0) {
                sb.insert(0, "|");
            }
            sb.insert(0, "320x50");
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final int a(int i) {
        return (int) Math.ceil(TypedValueCompat.pxToDp(i, this.d.getResources().getDisplayMetrics()));
    }

    @Override // kotlin.rh3
    public final y11 f() {
        return y11.AD_SIZE;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v1 ads_mobile_sdk.q01, still in use, count: 2, list:
          (r4v1 ads_mobile_sdk.q01) from 0x0204: MOVE (r26v0 ads_mobile_sdk.q01) = (r4v1 ads_mobile_sdk.q01)
          (r4v1 ads_mobile_sdk.q01) from 0x01c1: MOVE (r26v3 ads_mobile_sdk.q01) = (r4v1 ads_mobile_sdk.q01)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:59)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:463)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
        */
    @Override // kotlin.rh3
    public final java.lang.Object s(p005kotlin.coroutines.Continuation r31) {
        /*
            Method dump skipped, instruction units count: 1208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.mb.s(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
