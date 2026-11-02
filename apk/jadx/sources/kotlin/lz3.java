package kotlin;

import androidx.webkit.WebViewCompat;
import com.ironsource.C3510b4;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class lz3 extends SuspendLambda implements Function2 {
    public r31 a;
    public int b;
    public final /* synthetic */ oz3 c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ nr1 e;
    public final /* synthetic */ ks3 f;
    public final /* synthetic */ eo2 g;
    public final /* synthetic */ t91 h;
    public final /* synthetic */ boolean i;
    public final /* synthetic */ mb0 j;
    public final /* synthetic */ String k;
    public final /* synthetic */ v14 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lz3(oz3 oz3Var, boolean z, nr1 nr1Var, ks3 ks3Var, eo2 eo2Var, t91 t91Var, boolean z2, mb0 mb0Var, String str, v14 v14Var, Continuation continuation) {
        super(2, continuation);
        this.c = oz3Var;
        this.d = z;
        this.e = nr1Var;
        this.f = ks3Var;
        this.g = eo2Var;
        this.h = t91Var;
        this.i = z2;
        this.j = mb0Var;
        this.k = str;
        this.l = v14Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new lz3(this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((lz3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0099 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:126:? A[LOOP:0: B:19:0x0091->B:126:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x007f  */
    /* JADX WARN: Code duplicated, block: B:22:0x009c  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object q01Var;
        r31 gmaWebView;
        int iIntValue;
        int i;
        int i2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = this.b;
        if (i3 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            qn qnVar = this.c.p;
            boolean z = this.d;
            rs1 rs1Var = (rs1) qnVar.a;
            ex0 ex0Var = rs1Var.a;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:webview_capping:enabled", C3510b4.i.W);
            Boolean bool = Boolean.FALSE;
            ir irVar = yr.b;
            if (!((Boolean) ex0Var.a("gads:webview_capping:enabled", bool, irVar)).booleanValue() || z) {
                int iIncrementAndGet = rs1Var.b.incrementAndGet();
                rs1Var.c = iIncrementAndGet;
                q01Var = new q01(Integer.valueOf(iIncrementAndGet));
            } else {
                ex0 ex0Var2 = rs1Var.a;
                ex0Var2.getClass();
                Intrinsics.checkNotNullParameter("gads:webview_capping:enabled", C3510b4.i.W);
                if (((Boolean) ex0Var2.a("gads:webview_capping:enabled", bool, irVar)).booleanValue()) {
                    int i4 = rs1Var.b.get();
                    ex0 ex0Var3 = rs1Var.a;
                    if (i4 >= ((Number) ex0Var3.a("gads:max_live_webviews", by0.a(ex0Var3, "gads:max_live_webviews", C3510b4.i.W, 5), yr.f)).intValue()) {
                        q01Var = t01.c;
                    } else {
                        ex0 ex0Var4 = rs1Var.a;
                        iIntValue = ((Number) ex0Var4.a("gads:max_live_webviews", by0.a(ex0Var4, "gads:max_live_webviews", C3510b4.i.W, 5), yr.f)).intValue();
                        while (true) {
                            i = rs1Var.b.get();
                            if (i >= iIntValue) {
                                q01Var = t01.c;
                                break;
                            }
                            i2 = i + 1;
                            if (rs1Var.b.compareAndSet(i, i2)) {
                                rs1Var.c = i2;
                                q01Var = new q01(Integer.valueOf(i2));
                                break;
                            }
                        }
                    }
                } else {
                    ex0 ex0Var5 = rs1Var.a;
                    iIntValue = ((Number) ex0Var5.a("gads:max_live_webviews", by0.a(ex0Var5, "gads:max_live_webviews", C3510b4.i.W, 5), yr.f)).intValue();
                    while (true) {
                        i = rs1Var.b.get();
                        if (i >= iIntValue) {
                            q01Var = t01.c;
                            break;
                        }
                        i2 = i + 1;
                        if (rs1Var.b.compareAndSet(i, i2)) {
                            rs1Var.c = i2;
                            q01Var = new q01(Integer.valueOf(i2));
                            break;
                        }
                    }
                }
            }
            if (q01Var instanceof i01) {
                return q01Var;
            }
            s11 s11Var = s11.CUI_NAME_WEBVIEW_INITIALIZATION;
            oz3 oz3Var = this.c;
            mb0 mb0Var = this.j;
            String str = this.k;
            v14 v14Var = this.l;
            WeakHashMap weakHashMap = hs3.a;
            rr3 rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), false);
            try {
                r31 r31Var = new r31(oz3Var.d, oz3Var.c, oz3Var.b, mb0Var, oz3Var.g, oz3Var.f, oz3Var.a, str, v14Var, oz3Var.m, oz3Var.j, oz3Var.l, oz3Var.p);
                if (r31Var instanceof i01) {
                    xs3.a((i01) r31Var, false);
                }
                CloseableKt.closeFinally(rr3VarA, null);
                jz3 jz3Var = new jz3(this.c.p, r31Var.m);
                bn2 bn2Var = this.c.q;
                this.a = r31Var;
                this.b = 1;
                bn2Var.getClass();
                if (bn2.a(bn2Var, r31Var, jz3Var, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                gmaWebView = r31Var;
            } catch (Throwable th) {
                try {
                    rr3VarA.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA.a(th);
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
                        CloseableKt.closeFinally(rr3VarA, th2);
                        throw th3;
                    }
                }
            }
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            r31 r31Var2 = this.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            gmaWebView = r31Var2;
        }
        nr1 jsContext = this.e;
        if (jsContext == null) {
            oz3 oz3Var2 = this.c;
            jsContext = new b04(gmaWebView, oz3Var2.e, this.f, oz3Var2.h, oz3Var2.b, oz3Var2.l);
        }
        s31 s31Var = g41.v;
        oz3 oz3Var3 = this.c;
        CoroutineScope backgroundScope = oz3Var3.b;
        o21 gmaUtil = oz3Var3.h;
        rb adSpamClient = oz3Var3.f;
        ex0 flags = oz3Var3.l;
        vk0 vk0Var = oz3Var3.r;
        e01 httpClient = oz3Var3.n;
        s31Var.getClass();
        Intrinsics.checkNotNullParameter(jsContext, "jsContext");
        Intrinsics.checkNotNullParameter(gmaWebView, "gmaWebView");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        r31 webView = gmaWebView;
        g41 client = new g41(jsContext, webView, backgroundScope, gmaUtil, adSpamClient, flags, vk0Var, httpClient);
        vk1 vk1Var = this.c.k;
        ks3 ks3Var = this.f;
        eo2 eo2Var = this.g;
        t91 t91Var = this.h;
        xk1 xk1Var = ((wk1) vk1Var).a;
        webView.addJavascriptInterface(new uk1(webView, ks3Var, eo2Var, t91Var, (g83) xk1Var.a.get(), (rb) xk1Var.b.get(), (ex0) xk1Var.c.get()), "googleAdsJsInterface");
        Intrinsics.checkNotNullParameter(client, "client");
        webView.setWebViewClient(client);
        Intrinsics.checkNotNullParameter(client, "<set-?>");
        webView.z = client;
        webView.setWebChromeClient(new u21(client));
        Intrinsics.checkNotNullParameter(jsContext, "<set-?>");
        webView.y = jsContext;
        if (!this.i) {
            ex0 ex0Var6 = this.c.l;
            ex0Var6.getClass();
            Intrinsics.checkNotNullParameter("creative_webview_init_set_profile:enabled", C3510b4.i.W);
            if (((Boolean) ex0Var6.a("creative_webview_init_set_profile:enabled", Boolean.FALSE, yr.b)).booleanValue()) {
                dz3 dz3Var = this.c.m;
                dz3Var.getClass();
                Intrinsics.checkNotNullParameter(webView, "webView");
                try {
                    if (dz3Var.a()) {
                        s11 s11Var2 = s11.CUI_NAME_WEBVIEW_PROFILE_SET;
                        WeakHashMap weakHashMap2 = hs3.a;
                        rr3 rr3VarA2 = hs3.a(s11Var2, CollectionsKt.emptyList(), true);
                        try {
                            WebViewCompat.setProfile(webView, "GMA_WEBVIEW_PROFILE");
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
                                if (th4 instanceof w01) {
                                    throw th4;
                                }
                                throw new b01(th4);
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
                } catch (Throwable unused) {
                }
            }
        }
        return new q01(webView);
    }
}
