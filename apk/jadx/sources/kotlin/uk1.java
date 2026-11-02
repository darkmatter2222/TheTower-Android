package kotlin;

import android.net.Uri;
import android.webkit.JavascriptInterface;
import com.ironsource.C3510b4;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uk1 {
    public final r31 a;
    public final ks3 b;
    public final eo2 c;
    public final t91 d;
    public final g83 e;
    public final rb f;
    public final ex0 g;

    public uk1(r31 webView, ks3 traceMetaSet, eo2 eo2Var, t91 t91Var, g83 rootTraceCreator, rb adSpamClient, ex0 flags) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = webView;
        this.b = traceMetaSet;
        this.c = eo2Var;
        this.d = t91Var;
        this.e = rootTraceCreator;
        this.f = adSpamClient;
        this.g = flags;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JavascriptInterface
    public final String getClickSignals(String clickString) {
        Intrinsics.checkNotNullParameter(clickString, "clickString");
        if (clickString.length() == 0) {
            return "";
        }
        g83 g83Var = this.e;
        s11 s11Var = s11.CUI_NAME_CLICK_SIGNALS;
        ks3 ks3Var = this.b;
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strA = this.f.a(this.a, clickString);
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
            String strA2 = this.f.a(this.a, clickString);
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
    public final String getViewSignals() {
        g83 g83Var = this.e;
        s11 s11Var = s11.CUI_NAME_VIEW_SIGNALS;
        ks3 ks3Var = this.b;
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                String strA = this.f.a(this.a);
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
            String strA2 = this.f.a(this.a);
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
    public final String getViewSignalsJson() {
        g83 g83Var = this.e;
        s11 s11Var = s11.CUI_NAME_VIEW_SIGNALS;
        ks3 ks3Var = this.b;
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                ex0 ex0Var = this.g;
                ex0Var.getClass();
                Intrinsics.checkNotNullParameter("gads:add_placement_id_in_view_signals:enabled", C3510b4.i.W);
                if (((Boolean) ex0Var.a("gads:add_placement_id_in_view_signals:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                    String strA = this.f.a(this.a, this.c, this.d);
                    CloseableKt.closeFinally(tu2VarA, null);
                    return strA;
                }
                String strA2 = this.f.a(this.a);
                CloseableKt.closeFinally(tu2VarA, null);
                return strA2;
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
            ex0 ex0Var2 = this.g;
            ex0Var2.getClass();
            Intrinsics.checkNotNullParameter("gads:add_placement_id_in_view_signals:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var2.a("gads:add_placement_id_in_view_signals:enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                String strA3 = this.f.a(this.a, this.c, this.d);
                CloseableKt.closeFinally(rr3VarA, null);
                return strA3;
            }
            String strA4 = this.f.a(this.a);
            CloseableKt.closeFinally(rr3VarA, null);
            return strA4;
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
    public final void notify(String url) throws InterruptedException {
        Intrinsics.checkNotNullParameter(url, "url");
        if (url.length() == 0) {
            return;
        }
        g41 g41VarB = this.a.b();
        Uri uri = Uri.parse(url);
        g41VarB.getClass();
        Intrinsics.checkNotNullParameter(uri, "uri");
        BuildersKt__BuildersKt.runBlocking$default(null, new w31(g41VarB, uri, null), 1, null);
    }

    @JavascriptInterface
    public final void notifyResult(String resultJsonString) throws InterruptedException {
        Intrinsics.checkNotNullParameter(resultJsonString, "resultJsonString");
        g41 g41VarB = this.a.b();
        g41VarB.getClass();
        Intrinsics.checkNotNullParameter(resultJsonString, "resultJsonString");
        BuildersKt__BuildersKt.runBlocking$default(null, new x31(g41VarB, resultJsonString, null), 1, null);
    }
}
