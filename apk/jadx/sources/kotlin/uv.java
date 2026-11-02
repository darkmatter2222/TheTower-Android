package kotlin;

import android.net.Uri;
import android.util.Base64;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.google.common.base.Splitter;
import com.ironsource.C3510b4;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class uv extends fp2 {
    public final CoroutineScope c;
    public final dz3 d;
    public final g83 e;
    public final ex0 f;
    public final o21 g;
    public final Mutex h;
    public Deferred i;
    public mv j;
    public Job k;

    public uv(CoroutineScope backgroundScope, dz3 webviewCompatWrapper, g83 rootTraceCreator, ex0 flags, o21 gmaUtil) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(webviewCompatWrapper, "webviewCompatWrapper");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        this.c = backgroundScope;
        this.d = webviewCompatWrapper;
        this.e = rootTraceCreator;
        this.f = flags;
        this.g = gmaUtil;
        this.h = MutexKt.Mutex$default(false, 1, null);
    }

    public static final mv a(uv uvVar) {
        g83 g83Var = uvVar.e;
        s11 s11Var = s11.CUI_NAME_GET_WEBVIEW_VARIATIONS;
        List listEmptyList = CollectionsKt.emptyList();
        ks3 ks3Var = new ks3(new n03(), new tn1(), new m33(), new zb());
        if (hs3.b().a == null) {
            tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                try {
                    uvVar.d.getClass();
                    String variationsHeader = WebViewCompat.getVariationsHeader();
                    Intrinsics.checkNotNullExpressionValue(variationsHeader, "getVariationsHeader(...)");
                    if (StringsKt.isBlank(variationsHeader)) {
                        Splitter splitter = f01.a;
                        f01.a(nv.a);
                        CloseableKt.closeFinally(tu2VarA, null);
                        return null;
                    }
                    try {
                        lv lvVarA = lv.a(Base64.decode(variationsHeader, 0));
                        ex0 ex0Var = uvVar.f;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:parse_chrome_variations_client_header", C3510b4.i.W);
                        xw xwVarA = ((Boolean) ex0Var.a("gads:parse_chrome_variations_client_header", Boolean.TRUE, yr.b)).booleanValue() ? xw.a(Base64.decode(variationsHeader, 2), er0.b()) : null;
                        Intrinsics.checkNotNull(lvVarA);
                        mv mvVar = new mv(variationsHeader, lvVarA, xwVarA);
                        Splitter splitter2 = f01.a;
                        f01.a(new ov(mvVar));
                        uvVar.j = mvVar;
                        CloseableKt.closeFinally(tu2VarA, null);
                        return mvVar;
                    } catch (Throwable exception) {
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        rr3 rr3VarA = hs3.a();
                        rr3VarA.e().m = false;
                        rr3VarA.a(exception);
                        CloseableKt.closeFinally(tu2VarA, null);
                    }
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
            } catch (Exception exception2) {
                Intrinsics.checkNotNullParameter(exception2, "exception");
                rr3 rr3VarA2 = hs3.a();
                rr3VarA2.e().m = false;
                rr3VarA2.a(exception2);
                CloseableKt.closeFinally(tu2VarA, null);
            }
        } else {
            rr3 rr3VarA3 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                try {
                    uvVar.d.getClass();
                    String variationsHeader2 = WebViewCompat.getVariationsHeader();
                    Intrinsics.checkNotNullExpressionValue(variationsHeader2, "getVariationsHeader(...)");
                    if (StringsKt.isBlank(variationsHeader2)) {
                        Splitter splitter3 = f01.a;
                        f01.a(nv.a);
                        CloseableKt.closeFinally(rr3VarA3, null);
                        return null;
                    }
                    try {
                        lv lvVarA2 = lv.a(Base64.decode(variationsHeader2, 0));
                        ex0 ex0Var2 = uvVar.f;
                        ex0Var2.getClass();
                        Intrinsics.checkNotNullParameter("gads:parse_chrome_variations_client_header", C3510b4.i.W);
                        xw xwVarA2 = ((Boolean) ex0Var2.a("gads:parse_chrome_variations_client_header", Boolean.TRUE, yr.b)).booleanValue() ? xw.a(Base64.decode(variationsHeader2, 2), er0.b()) : null;
                        Intrinsics.checkNotNull(lvVarA2);
                        mv mvVar2 = new mv(variationsHeader2, lvVarA2, xwVarA2);
                        Splitter splitter4 = f01.a;
                        f01.a(new ov(mvVar2));
                        uvVar.j = mvVar2;
                        CloseableKt.closeFinally(rr3VarA3, null);
                        return mvVar2;
                    } catch (Throwable exception3) {
                        Intrinsics.checkNotNullParameter(exception3, "exception");
                        rr3 rr3VarA4 = hs3.a();
                        rr3VarA4.e().m = false;
                        rr3VarA4.a(exception3);
                        CloseableKt.closeFinally(rr3VarA3, null);
                    }
                } catch (Exception exception4) {
                    Intrinsics.checkNotNullParameter(exception4, "exception");
                    rr3 rr3VarA5 = hs3.a();
                    rr3VarA5.e().m = false;
                    rr3VarA5.a(exception4);
                    CloseableKt.closeFinally(rr3VarA3, null);
                }
            } catch (Throwable th4) {
                try {
                    rr3VarA3.b(th4);
                    if (th4 instanceof v24) {
                        throw th4;
                    }
                    if (!(th4 instanceof TimeoutCancellationException) && !(th4 instanceof CancellationException)) {
                        rr3VarA3.a(th4);
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
                        CloseableKt.closeFinally(rr3VarA3, th5);
                        throw th6;
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(uv uvVar, Continuation continuation) {
        pv pvVar;
        Mutex mutex;
        Deferred deferredCompletableDeferred;
        if (continuation instanceof pv) {
            pvVar = (pv) continuation;
            int i = pvVar.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                pvVar.e = i - Integer.MIN_VALUE;
            } else {
                pvVar = new pv(uvVar, continuation);
            }
        } else {
            pvVar = new pv(uvVar, continuation);
        }
        Object obj = pvVar.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = pvVar.e;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                uvVar.d.getClass();
                if (!WebViewFeature.isFeatureSupported("GET_VARIATIONS_HEADER")) {
                    return null;
                }
                mutex = uvVar.h;
                pvVar.a = uvVar;
                pvVar.b = mutex;
                pvVar.e = 1;
                if (mutex.lock(null, pvVar) != coroutine_suspended) {
                }
            }
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
                return obj;
            }
            Mutex mutex2 = pvVar.b;
            uv uvVar2 = pvVar.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            uvVar = uvVar2;
            mv mvVar = uvVar.j;
            if (mvVar != null) {
                deferredCompletableDeferred = CompletableDeferredKt.CompletableDeferred(mvVar);
            } else {
                Deferred deferredAsync$default = uvVar.i;
                if (deferredAsync$default == null) {
                    CoroutineScope coroutineScope = uvVar.c;
                    rv block = new rv(uvVar, null);
                    EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                    Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(block, "block");
                    deferredAsync$default = BuildersKt__Builders_commonKt.async$default(coroutineScope, context, null, new vs3(block, null), 2, null);
                    uvVar.i = deferredAsync$default;
                    ex0 ex0Var = uvVar.f;
                    ex0Var.getClass();
                    Intrinsics.checkNotNullParameter("gads:chrome_variations_refresh_enabled", C3510b4.i.W);
                    if (((Boolean) ex0Var.a("gads:chrome_variations_refresh_enabled", Boolean.TRUE, yr.b)).booleanValue() && uvVar.k == null) {
                        uvVar.k = BuildersKt__Builders_commonKt.launch$default(uvVar.c, null, null, new qv(uvVar, null), 3, null);
                    }
                }
                deferredCompletableDeferred = deferredAsync$default;
            }
            mutex.unlock(null);
            pvVar.a = null;
            pvVar.b = null;
            pvVar.e = 2;
            Object objAwait = deferredCompletableDeferred.await(pvVar);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(uv uvVar, Continuation continuation) {
        tv tvVar;
        if (continuation instanceof tv) {
            tvVar = (tv) continuation;
            int i = tvVar.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                tvVar.c = i - Integer.MIN_VALUE;
            } else {
                tvVar = new tv(uvVar, continuation);
            }
        } else {
            tvVar = new tv(uvVar, continuation);
        }
        Object obj = tvVar.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = tvVar.c;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = uvVar.f;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:chrome_variations_initialization_task_enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:chrome_variations_initialization_task_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                tvVar.c = 1;
                if (a(uvVar, tvVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    public final Map a(Uri uri) {
        String strA;
        Intrinsics.checkNotNullParameter(uri, "uri");
        ex0 ex0Var = this.f;
        ex0Var.getClass();
        Intrinsics.checkNotNullParameter("gads:parse_chrome_variations_client_header", C3510b4.i.W);
        if (!((Boolean) ex0Var.a("gads:parse_chrome_variations_client_header", Boolean.TRUE, yr.b)).booleanValue()) {
            return null;
        }
        if (!this.g.c(uri) && !this.g.a(uri)) {
            o21 o21Var = this.g;
            o21Var.getClass();
            Intrinsics.checkNotNullParameter(uri, "uri");
            if (o21Var.b(uri)) {
                String string = uri.toString();
                ex0 ex0Var2 = o21Var.c;
                ex0Var2.getClass();
                List defaultValue = CollectionsKt.listOf("^[^?]*(/mads/gma|/gampad/ads|/pagead/ads).*");
                Intrinsics.checkNotNullParameter("gads:ad_request_url_pattern_match", C3510b4.i.W);
                Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
                List list = (List) ex0Var2.a("gads:ad_request_url_pattern_match", defaultValue, yr.g);
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Regex regex = new Regex((String) it.next());
                        Intrinsics.checkNotNull(string);
                        if (regex.containsMatchIn(string)) {
                        }
                    }
                }
            }
            return null;
        }
        mv mvVar = this.j;
        if (mvVar == null) {
            BuildersKt__Builders_commonKt.launch$default(this.c, null, null, new sv(this, null), 3, null);
        }
        if (mvVar == null || (strA = mvVar.a()) == null) {
            return null;
        }
        ex0 ex0Var3 = this.f;
        ex0Var3.getClass();
        Intrinsics.checkNotNullParameter("gads:client_data_header", C3510b4.i.W);
        Intrinsics.checkNotNullParameter("x-client-data", "defaultValue");
        return MapsKt.mapOf(p005kotlin.TuplesKt.to((String) ex0Var3.a("gads:client_data_header", "x-client-data", yr.o), strA));
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        return b(this, continuation);
    }
}
