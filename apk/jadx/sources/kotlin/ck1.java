package kotlin;

import android.view.View;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class ck1 extends ci1 {
    public final View n;
    public final g33 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ck1(View view, String adId, i2 adConfiguration, zy commonConfiguration, ks3 traceMetaSet, Optional gmaWebView, v3 adEventEmitter, fm0 delegatingAdEventListener, bn2 phantomReferences, s93 safeBrowsingManager, eo2 placementIdWrapper, g33 refreshListener, BaseRequest baseRequest) {
        super(adId, adConfiguration, commonConfiguration, traceMetaSet, gmaWebView, adEventEmitter, delegatingAdEventListener, phantomReferences, safeBrowsingManager, placementIdWrapper, baseRequest);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(delegatingAdEventListener, "delegatingAdEventListener");
        Intrinsics.checkNotNullParameter(phantomReferences, "phantomReferences");
        Intrinsics.checkNotNullParameter(safeBrowsingManager, "safeBrowsingManager");
        Intrinsics.checkNotNullParameter(placementIdWrapper, "placementIdWrapper");
        Intrinsics.checkNotNullParameter(refreshListener, "refreshListener");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        this.n = view;
        this.o = refreshListener;
    }

    public final AdSize m() {
        if (b().s0) {
            List list = b().b0;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it = list.iterator();
                do {
                    if (it.hasNext()) {
                    }
                } while (!StringsKt.contains$default((CharSequence) it.next(), (CharSequence) "FirstParty", false, 2, (Object) null));
            }
            return new AdSize(this.n.getWidth(), this.n.getHeight());
        }
        p2 p2Var = !b().y.isEmpty() ? (p2) b().y.get(0) : (p2) b().g.get(0);
        return p2Var.c ? AdSize.FLUID : new AdSize(p2Var.a, p2Var.b);
    }

    public final g33 n() {
        return this.o;
    }

    public final View o() {
        return this.n;
    }

    public final void p() {
        v3 v3VarH = h();
        if (v3VarH.d.H0 || v3VarH.h.getAndSet(true)) {
            return;
        }
        p005kotlin.Pair pair = new p005kotlin.Pair(MapsKt.emptyMap(), v3VarH.b);
        Map map = (Map) pair.component1();
        Map map2 = (Map) pair.component2();
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                mq0 mq0Var = (mq0) entry.getValue();
                ub3 ub3Var = v3VarH.c;
                t3 task = new t3("onManualImpression", str, mq0Var, null);
                ub3Var.getClass();
                Intrinsics.checkNotNullParameter(task, "task");
                ub3Var.b.mo4525trySendJP2dKIU(task);
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            String str2 = (String) entry2.getKey();
            mq0 mq0Var2 = (mq0) entry2.getValue();
            CoroutineScope coroutineScope = v3VarH.a;
            u3 block = new u3("onManualImpression", str2, mq0Var2, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }
}
