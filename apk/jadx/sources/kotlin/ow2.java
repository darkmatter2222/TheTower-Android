package kotlin;

import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ow2 {
    public final WebView a;
    public final CoroutineScope b;
    public final CoroutineContext c;
    public final g83 d;
    public final rb e;
    public final xe3 f;
    public final vw3 g;
    public final o21 h;
    public final ex0 i;

    public ow2(WebView webView, CoroutineScope backgroundScope, CoroutineContext uiContext, g83 rootTraceCreator, rb adSpamClient, ur3 traceLogger, xe3 signalCache, vw3 urlPinger, o21 gmaUtil, ex0 flags) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(signalCache, "signalCache");
        Intrinsics.checkNotNullParameter(urlPinger, "urlPinger");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = webView;
        this.b = backgroundScope;
        this.c = uiContext;
        this.d = rootTraceCreator;
        this.e = adSpamClient;
        this.f = signalCache;
        this.g = urlPinger;
        this.h = gmaUtil;
        this.i = flags;
    }

    public final String a(int i, Function0 function0) {
        if (i <= 0) {
            return "";
        }
        Duration.Companion companion = Duration.INSTANCE;
        ex0 ex0Var = this.i;
        ex0Var.getClass();
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        v01 v01Var = (v01) BuildersKt__BuildersKt.runBlocking$default(null, new hw2(DurationKt.toDuration(Math.min((int) Duration.m4378getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:max_timeout_view_click_ms", wm2.a(1000, durationUnit, "gads:max_timeout_view_click_ms", C3510b4.i.W), yr.j)).getRawValue()), i), durationUnit), function0, null), 1, null);
        if (v01Var instanceof q01) {
            return (String) ((q01) v01Var).b;
        }
        if (v01Var instanceof i01) {
            return "17";
        }
        throw new p005kotlin.NoWhenBranchMatchedException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JavascriptInterface
    public final String getClickSignals(String clickString) {
        Intrinsics.checkNotNullParameter(clickString, "clickString");
        if (clickString.length() == 0) {
            return "";
        }
        g83 g83Var = this.d;
        s11 s11Var = s11.CUI_NAME_CLICK_SIGNALS;
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strA = this.e.a(this.a, clickString);
                if (strA instanceof i01) {
                    xs3.a((i01) strA, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                return strA;
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
            String strA2 = this.e.a(this.a, clickString);
            if (strA2 instanceof i01) {
                xs3.a((i01) strA2, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return strA2;
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

    /* JADX WARN: Multi-variable type inference failed */
    @JavascriptInterface
    public final String getClickSignalsWithTimeout(String clickString, int i) {
        Intrinsics.checkNotNullParameter(clickString, "clickString");
        g83 g83Var = this.d;
        s11 s11Var = s11.CUI_NAME_CLICK_SIGNALS;
        ks3 ks3VarA = js3.a();
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.c() == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3VarA);
            try {
                String strA = a(i, new iw2(this, clickString));
                if (Intrinsics.areEqual(strA, "17")) {
                    xs3.a("Timeout after " + i + " ms", null, 6);
                }
                if (strA instanceof i01) {
                    xs3.a((i01) strA, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                return strA;
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
            String strA2 = a(i, new iw2(this, clickString));
            if (Intrinsics.areEqual(strA2, "17")) {
                xs3.a("Timeout after " + i + " ms", null, 6);
            }
            if (strA2 instanceof i01) {
                xs3.a((i01) strA2, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return strA2;
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

    @JavascriptInterface
    public final String getQueryInfo() {
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        CoroutineScope coroutineScope = this.b;
        lw2 block = new lw2(this, string, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return string;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JavascriptInterface
    public final String getViewSignals() {
        g83 g83Var = this.d;
        s11 s11Var = s11.CUI_NAME_VIEW_SIGNALS;
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strA = this.e.a(this.a);
                if (strA instanceof i01) {
                    xs3.a((i01) strA, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                return strA;
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
            String strA2 = this.e.a(this.a);
            if (strA2 instanceof i01) {
                xs3.a((i01) strA2, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return strA2;
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

    /* JADX WARN: Multi-variable type inference failed */
    @JavascriptInterface
    public final String getViewSignalsWithTimeout(int i) {
        g83 g83Var = this.d;
        s11 s11Var = s11.CUI_NAME_VIEW_SIGNALS;
        ks3 ks3VarA = js3.a();
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.c() == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3VarA);
            try {
                String strA = a(i, new mw2(this));
                if (Intrinsics.areEqual(strA, "17")) {
                    xs3.a("Timeout after " + i + " ms", null, 6);
                }
                if (strA instanceof i01) {
                    xs3.a((i01) strA, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                return strA;
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
            String strA2 = a(i, new mw2(this));
            if (Intrinsics.areEqual(strA2, "17")) {
                xs3.a("Timeout after " + i + " ms", null, 6);
            }
            if (strA2 instanceof i01) {
                xs3.a((i01) strA2, false);
            }
            CloseableKt.closeFinally(rr3VarA, null);
            return strA2;
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

    @JavascriptInterface
    public final void recordClick(String clickUrl) {
        Intrinsics.checkNotNullParameter(clickUrl, "clickUrl");
        if (clickUrl.length() == 0) {
            return;
        }
        CoroutineScope coroutineScope = this.b;
        nw2 block = new nw2(this, clickUrl, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x0172 A[PHI: r9
  0x0172: PHI (r9v1 int) = (r9v0 int), (r9v2 int) binds: [B:56:0x0164, B:60:0x016a] A[DONT_GENERATE, DONT_INLINE]] */
    @JavascriptInterface
    public final void reportTouchEvent(String touchJson) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(touchJson, "touchJson");
        g83 g83Var = this.d;
        s11 s11Var = s11.CUI_NAME_PAW_REPORT_TOUCH_EVENT;
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        List listEmptyList = CollectionsKt.emptyList();
        int i3 = 1;
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                try {
                    JsonObject jsonObject = (JsonObject) new Gson().fromJson(touchJson, JsonObject.class);
                    int asInt = jsonObject.get("x").getAsInt();
                    int asInt2 = jsonObject.get("y").getAsInt();
                    int asInt3 = jsonObject.get("duration_ms").getAsInt();
                    float asFloat = jsonObject.get("force").getAsFloat();
                    int asInt4 = jsonObject.get("type").getAsInt();
                    if (asInt4 == 0) {
                        i2 = 0;
                    } else if (asInt4 == 1) {
                        i2 = 1;
                    } else if (asInt4 != 2) {
                        i2 = asInt4 != 3 ? -1 : 3;
                    } else {
                        i2 = 2;
                    }
                    rb rbVar = this.e;
                    MotionEvent inputEvent = MotionEvent.obtain(0L, asInt3, i2, asInt, asInt2, asFloat, 1.0f, 0, 1.0f, 1.0f, 0, 0);
                    Intrinsics.checkNotNullExpressionValue(inputEvent, "obtain(...)");
                    rbVar.getClass();
                    Intrinsics.checkNotNullParameter(inputEvent, "inputEvent");
                    rbVar.g().a(inputEvent);
                } catch (Throwable exception) {
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA = hs3.a();
                    rr3VarA.e().m = false;
                    rr3VarA.a(exception);
                }
                Object obj = p005kotlin.Unit.INSTANCE;
                if (obj instanceof i01) {
                    xs3.a((i01) obj, false);
                }
                CloseableKt.closeFinally(tu2VarA, null);
                return;
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
                    if (!(th instanceof w01)) {
                        throw new b01(th);
                    }
                    throw th;
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
        rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
        try {
            try {
                JsonObject jsonObject2 = (JsonObject) new Gson().fromJson(touchJson, JsonObject.class);
                int asInt5 = jsonObject2.get("x").getAsInt();
                int asInt6 = jsonObject2.get("y").getAsInt();
                int asInt7 = jsonObject2.get("duration_ms").getAsInt();
                float asFloat2 = jsonObject2.get("force").getAsFloat();
                int asInt8 = jsonObject2.get("type").getAsInt();
                if (asInt8 == 0) {
                    i = 0;
                } else if (asInt8 == 1) {
                    i = i3;
                } else if (asInt8 != 2) {
                    i3 = 3;
                    if (asInt8 != 3) {
                        i = -1;
                    } else {
                        i = i3;
                    }
                } else {
                    i = 2;
                }
                rb rbVar2 = this.e;
                MotionEvent inputEvent2 = MotionEvent.obtain(0L, asInt7, i, asInt5, asInt6, asFloat2, 1.0f, 0, 1.0f, 1.0f, 0, 0);
                Intrinsics.checkNotNullExpressionValue(inputEvent2, "obtain(...)");
                rbVar2.getClass();
                Intrinsics.checkNotNullParameter(inputEvent2, "inputEvent");
                rbVar2.g().a(inputEvent2);
            } catch (Throwable exception2) {
                Intrinsics.checkNotNullParameter(exception2, "exception");
                rr3 rr3VarA3 = hs3.a();
                rr3VarA3.e().m = false;
                rr3VarA3.a(exception2);
            }
            Object obj2 = p005kotlin.Unit.INSTANCE;
            if (obj2 instanceof i01) {
                xs3.a((i01) obj2, false);
            }
            CloseableKt.closeFinally(rr3VarA2, null);
        } catch (Throwable th4) {
            try {
                rr3VarA2.b(th4);
                if (th4 instanceof v24) {
                    throw th4;
                }
                if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                    rr3VarA2.a(th4);
                }
                if (th4 instanceof TimeoutCancellationException) {
                    throw new i21(th4);
                }
                if (th4 instanceof CancellationException) {
                    throw new wz0(th4);
                }
                if (!(th4 instanceof w01)) {
                    throw new b01(th4);
                }
                throw th4;
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    CloseableKt.closeFinally(rr3VarA2, th5);
                    throw th6;
                }
            }
        }
    }
}
