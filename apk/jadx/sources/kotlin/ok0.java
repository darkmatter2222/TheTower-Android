package kotlin;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.webkit.internal.AssetHelper;
import com.google.android.libraries.ads.mobile.sdk.common.AdInspectorError;
import com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener;
import com.google.common.base.Splitter;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.io.Closeable;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.text.Charsets;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class ok0 {
    public static final Uri q = Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push");
    public final CoroutineContext a;
    public final CoroutineScope b;
    public final g83 c;
    public final ur3 d;
    public final f0 e;
    public final ex0 f;
    public final o21 g;
    public final qn h;
    public final e01 i;
    public final if1 j;
    public final AtomicBoolean k;
    public String l;
    public String m;
    public JsonObject n;
    public ks3 o;
    public String p;

    public ok0(CoroutineContext uiContext, CoroutineScope backgroundScope, g83 rootTraceCreator, ur3 traceLogger, f0 activityTracker, ex0 flags, o21 gmaUtil, qn appState, e01 httpClient, if1 inspectorManager, String afmaVersion) {
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(rootTraceCreator, "rootTraceCreator");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(activityTracker, "activityTracker");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(gmaUtil, "gmaUtil");
        Intrinsics.checkNotNullParameter(appState, "appState");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        this.a = uiContext;
        this.b = backgroundScope;
        this.c = rootTraceCreator;
        this.d = traceLogger;
        this.e = activityTracker;
        this.f = flags;
        this.g = gmaUtil;
        this.h = appState;
        this.i = httpClient;
        this.j = inspectorManager;
        this.k = new AtomicBoolean(false);
        this.o = js3.a();
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01b6 A[Catch: all -> 0x01bd, TRY_LEAVE, TryCatch #11 {all -> 0x01bd, blocks: (B:100:0x01b0, B:102:0x01b6), top: B:158:0x01b0 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x01d2 A[Catch: all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:113:0x01cb, B:115:0x01d2, B:117:0x01d6, B:119:0x01da, B:120:0x01dd, B:122:0x01e1, B:124:0x01e5, B:126:0x01e9, B:127:0x01ea, B:128:0x01ef, B:129:0x01f0, B:130:0x01f7, B:131:0x01f8, B:132:0x01ff, B:133:0x0200), top: B:140:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:117:0x01d6 A[Catch: all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:113:0x01cb, B:115:0x01d2, B:117:0x01d6, B:119:0x01da, B:120:0x01dd, B:122:0x01e1, B:124:0x01e5, B:126:0x01e9, B:127:0x01ea, B:128:0x01ef, B:129:0x01f0, B:130:0x01f7, B:131:0x01f8, B:132:0x01ff, B:133:0x0200), top: B:140:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:122:0x01e1 A[Catch: all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:113:0x01cb, B:115:0x01d2, B:117:0x01d6, B:119:0x01da, B:120:0x01dd, B:122:0x01e1, B:124:0x01e5, B:126:0x01e9, B:127:0x01ea, B:128:0x01ef, B:129:0x01f0, B:130:0x01f7, B:131:0x01f8, B:132:0x01ff, B:133:0x0200), top: B:140:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:124:0x01e5 A[Catch: all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:113:0x01cb, B:115:0x01d2, B:117:0x01d6, B:119:0x01da, B:120:0x01dd, B:122:0x01e1, B:124:0x01e5, B:126:0x01e9, B:127:0x01ea, B:128:0x01ef, B:129:0x01f0, B:130:0x01f7, B:131:0x01f8, B:132:0x01ff, B:133:0x0200), top: B:140:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:126:0x01e9 A[Catch: all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:113:0x01cb, B:115:0x01d2, B:117:0x01d6, B:119:0x01da, B:120:0x01dd, B:122:0x01e1, B:124:0x01e5, B:126:0x01e9, B:127:0x01ea, B:128:0x01ef, B:129:0x01f0, B:130:0x01f7, B:131:0x01f8, B:132:0x01ff, B:133:0x0200), top: B:140:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:127:0x01ea A[Catch: all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:113:0x01cb, B:115:0x01d2, B:117:0x01d6, B:119:0x01da, B:120:0x01dd, B:122:0x01e1, B:124:0x01e5, B:126:0x01e9, B:127:0x01ea, B:128:0x01ef, B:129:0x01f0, B:130:0x01f7, B:131:0x01f8, B:132:0x01ff, B:133:0x0200), top: B:140:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:129:0x01f0 A[Catch: all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:113:0x01cb, B:115:0x01d2, B:117:0x01d6, B:119:0x01da, B:120:0x01dd, B:122:0x01e1, B:124:0x01e5, B:126:0x01e9, B:127:0x01ea, B:128:0x01ef, B:129:0x01f0, B:130:0x01f7, B:131:0x01f8, B:132:0x01ff, B:133:0x0200), top: B:140:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:131:0x01f8 A[Catch: all -> 0x0201, TryCatch #0 {all -> 0x0201, blocks: (B:113:0x01cb, B:115:0x01d2, B:117:0x01d6, B:119:0x01da, B:120:0x01dd, B:122:0x01e1, B:124:0x01e5, B:126:0x01e9, B:127:0x01ea, B:128:0x01ef, B:129:0x01f0, B:130:0x01f7, B:131:0x01f8, B:132:0x01ff, B:133:0x0200), top: B:140:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0200 A[Catch: all -> 0x0201, TRY_LEAVE, TryCatch #0 {all -> 0x0201, blocks: (B:113:0x01cb, B:115:0x01d2, B:117:0x01d6, B:119:0x01da, B:120:0x01dd, B:122:0x01e1, B:124:0x01e5, B:126:0x01e9, B:127:0x01ea, B:128:0x01ef, B:129:0x01f0, B:130:0x01f7, B:131:0x01f8, B:132:0x01ff, B:133:0x0200), top: B:140:0x01cb }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00f8 A[Catch: all -> 0x00ff, TRY_LEAVE, TryCatch #13 {all -> 0x00ff, blocks: (B:46:0x00f2, B:48:0x00f8), top: B:162:0x00f2 }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0113 A[Catch: all -> 0x0142, TryCatch #1 {all -> 0x0142, blocks: (B:57:0x010c, B:59:0x0113, B:61:0x0117, B:63:0x011b, B:64:0x011e, B:66:0x0122, B:68:0x0126, B:70:0x012a, B:71:0x012b, B:72:0x0130, B:73:0x0131, B:74:0x0138, B:75:0x0139, B:76:0x0140, B:77:0x0141), top: B:141:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0117 A[Catch: all -> 0x0142, TryCatch #1 {all -> 0x0142, blocks: (B:57:0x010c, B:59:0x0113, B:61:0x0117, B:63:0x011b, B:64:0x011e, B:66:0x0122, B:68:0x0126, B:70:0x012a, B:71:0x012b, B:72:0x0130, B:73:0x0131, B:74:0x0138, B:75:0x0139, B:76:0x0140, B:77:0x0141), top: B:141:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:66:0x0122 A[Catch: all -> 0x0142, TryCatch #1 {all -> 0x0142, blocks: (B:57:0x010c, B:59:0x0113, B:61:0x0117, B:63:0x011b, B:64:0x011e, B:66:0x0122, B:68:0x0126, B:70:0x012a, B:71:0x012b, B:72:0x0130, B:73:0x0131, B:74:0x0138, B:75:0x0139, B:76:0x0140, B:77:0x0141), top: B:141:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0126 A[Catch: all -> 0x0142, TryCatch #1 {all -> 0x0142, blocks: (B:57:0x010c, B:59:0x0113, B:61:0x0117, B:63:0x011b, B:64:0x011e, B:66:0x0122, B:68:0x0126, B:70:0x012a, B:71:0x012b, B:72:0x0130, B:73:0x0131, B:74:0x0138, B:75:0x0139, B:76:0x0140, B:77:0x0141), top: B:141:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:70:0x012a A[Catch: all -> 0x0142, TryCatch #1 {all -> 0x0142, blocks: (B:57:0x010c, B:59:0x0113, B:61:0x0117, B:63:0x011b, B:64:0x011e, B:66:0x0122, B:68:0x0126, B:70:0x012a, B:71:0x012b, B:72:0x0130, B:73:0x0131, B:74:0x0138, B:75:0x0139, B:76:0x0140, B:77:0x0141), top: B:141:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:71:0x012b A[Catch: all -> 0x0142, TryCatch #1 {all -> 0x0142, blocks: (B:57:0x010c, B:59:0x0113, B:61:0x0117, B:63:0x011b, B:64:0x011e, B:66:0x0122, B:68:0x0126, B:70:0x012a, B:71:0x012b, B:72:0x0130, B:73:0x0131, B:74:0x0138, B:75:0x0139, B:76:0x0140, B:77:0x0141), top: B:141:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0131 A[Catch: all -> 0x0142, TryCatch #1 {all -> 0x0142, blocks: (B:57:0x010c, B:59:0x0113, B:61:0x0117, B:63:0x011b, B:64:0x011e, B:66:0x0122, B:68:0x0126, B:70:0x012a, B:71:0x012b, B:72:0x0130, B:73:0x0131, B:74:0x0138, B:75:0x0139, B:76:0x0140, B:77:0x0141), top: B:141:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0139 A[Catch: all -> 0x0142, TryCatch #1 {all -> 0x0142, blocks: (B:57:0x010c, B:59:0x0113, B:61:0x0117, B:63:0x011b, B:64:0x011e, B:66:0x0122, B:68:0x0126, B:70:0x012a, B:71:0x012b, B:72:0x0130, B:73:0x0131, B:74:0x0138, B:75:0x0139, B:76:0x0140, B:77:0x0141), top: B:141:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0141 A[Catch: all -> 0x0142, TRY_LEAVE, TryCatch #1 {all -> 0x0142, blocks: (B:57:0x010c, B:59:0x0113, B:61:0x0117, B:63:0x011b, B:64:0x011e, B:66:0x0122, B:68:0x0126, B:70:0x012a, B:71:0x012b, B:72:0x0130, B:73:0x0131, B:74:0x0138, B:75:0x0139, B:76:0x0140, B:77:0x0141), top: B:141:0x010c }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public static Object a(ok0 ok0Var, String str, String str2, JsonObject jsonObject, ks3 ks3Var, Continuation continuation) {
        sj0 sj0Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        rr3 rr3Var2;
        rr3 rr3VarA2;
        rr3 rr3Var3;
        rr3 rr3Var4;
        Object obj;
        Object obj2;
        ok0 ok0Var2 = ok0Var;
        if (continuation instanceof sj0) {
            sj0Var = (sj0) continuation;
            int i = sj0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                sj0Var.f = i - Integer.MIN_VALUE;
            } else {
                sj0Var = new sj0(ok0Var2, continuation);
            }
        } else {
            sj0Var = new sj0(ok0Var2, continuation);
        }
        Object obj3 = sj0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = sj0Var.f;
        if (i2 != 0) {
            if (i2 == 1) {
                rr3Var3 = sj0Var.c;
                rr3Var4 = sj0Var.b;
                ok0 ok0Var3 = sj0Var.a;
                try {
                    p005kotlin.ResultKt.throwOnFailure(obj3);
                } catch (Throwable th) {
                    exception = th;
                    rr3VarA2 = rr3Var3;
                    ok0Var2 = ok0Var3;
                    try {
                        ok0Var2.k.set(false);
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        rr3 rr3VarA3 = hs3.a();
                        rr3VarA3.e().m = false;
                        rr3VarA3.a(exception);
                        ((as3) ok0Var2.d).a("Failed to show debug menu dialog", exception);
                        rr3Var3 = rr3VarA2;
                    } catch (Throwable th2) {
                        th = th2;
                        rr3Var3 = rr3VarA2;
                        rr3VarA2 = rr3Var4;
                        try {
                            rr3VarA2.b(th);
                            if (th instanceof v24) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                rr3VarA2.a(th);
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
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                CloseableKt.closeFinally(rr3Var3, th3);
                                throw th4;
                            }
                        }
                    }
                }
                rr3VarA2 = rr3Var4;
                try {
                    obj = p005kotlin.Unit.INSTANCE;
                    if (obj instanceof i01) {
                        xs3.a((i01) obj, false);
                    }
                    CloseableKt.closeFinally(rr3Var3, null);
                    return p005kotlin.Unit.INSTANCE;
                } catch (Throwable th5) {
                    th = th5;
                    rr3VarA2.b(th);
                    if (th instanceof v24) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA2.a(th);
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
                }
            }
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = sj0Var.c;
            rr3Var2 = sj0Var.b;
            ok0 ok0Var4 = sj0Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
            } catch (Throwable th6) {
                exception = th6;
                rr3VarA = rr3Var;
                ok0Var2 = ok0Var4;
                try {
                    ok0Var2.k.set(false);
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA4 = hs3.a();
                    rr3VarA4.e().m = false;
                    rr3VarA4.a(exception);
                    ((as3) ok0Var2.d).a("Failed to show debug menu dialog", exception);
                    rr3Var = rr3VarA;
                } catch (Throwable th7) {
                    th = th7;
                    rr3Var = rr3VarA;
                    rr3VarA = rr3Var2;
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
                    } catch (Throwable th8) {
                        try {
                            throw th8;
                        } catch (Throwable th9) {
                            CloseableKt.closeFinally(rr3Var, th8);
                            throw th9;
                        }
                    }
                }
            }
            rr3VarA = rr3Var2;
            try {
                obj2 = p005kotlin.Unit.INSTANCE;
                if (obj2 instanceof i01) {
                    xs3.a((i01) obj2, false);
                }
                CloseableKt.closeFinally(rr3Var, null);
                return p005kotlin.Unit.INSTANCE;
            } catch (Throwable th10) {
                th = th10;
                rr3VarA.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
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
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj3);
        if (ok0Var2.k.getAndSet(true)) {
            return p005kotlin.Unit.INSTANCE;
        }
        ok0Var2.l = str;
        ok0Var2.m = str2;
        ok0Var2.n = jsonObject;
        ok0Var2.o = ks3Var;
        g83 g83Var = ok0Var2.c;
        s11 s11Var = s11.CUI_NAME_DEBUG_MENU;
        List listEmptyList = CollectionsKt.emptyList();
        if (hs3.b().a == null) {
            rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
            try {
                Activity activityG = ok0Var2.e.g();
                if (activityG == null) {
                    Splitter splitter = f01.a;
                    f01.c("Can not display debug menu without an Activity context.", null);
                    xs3.a("No Activity context available for displaying the debug menu.", null, 6);
                    ok0Var2.k.set(false);
                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                    CloseableKt.closeFinally(rr3VarA2, null);
                    return unit;
                }
                String packageName = activityG.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
                Intrinsics.checkNotNullParameter(packageName, "<set-?>");
                ok0Var2.p = packageName;
                try {
                    sj0Var.a = ok0Var2;
                    sj0Var.b = rr3VarA2;
                    sj0Var.c = rr3VarA2;
                    sj0Var.f = 1;
                    if (ok0Var2.a(activityG, sj0Var) != coroutine_suspended) {
                        rr3Var3 = rr3VarA2;
                        rr3Var4 = rr3Var3;
                        rr3VarA2 = rr3Var4;
                        obj = p005kotlin.Unit.INSTANCE;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(rr3Var3, null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                } catch (Throwable th11) {
                    exception = th11;
                    rr3Var4 = rr3VarA2;
                    ok0Var2.k.set(false);
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA5 = hs3.a();
                    rr3VarA5.e().m = false;
                    rr3VarA5.a(exception);
                    ((as3) ok0Var2.d).a("Failed to show debug menu dialog", exception);
                    rr3Var3 = rr3VarA2;
                }
            } catch (Throwable th12) {
                th = th12;
                rr3Var3 = rr3VarA2;
                rr3VarA2.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    rr3VarA2.a(th);
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
            }
        } else {
            rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                Activity activityG2 = ok0Var2.e.g();
                if (activityG2 == null) {
                    Splitter splitter2 = f01.a;
                    f01.c("Can not display debug menu without an Activity context.", null);
                    xs3.a("No Activity context available for displaying the debug menu.", null, 6);
                    ok0Var2.k.set(false);
                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                    CloseableKt.closeFinally(rr3VarA, null);
                    return unit2;
                }
                String packageName2 = activityG2.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName2, "getPackageName(...)");
                Intrinsics.checkNotNullParameter(packageName2, "<set-?>");
                ok0Var2.p = packageName2;
                try {
                    sj0Var.a = ok0Var2;
                    sj0Var.b = rr3VarA;
                    sj0Var.c = rr3VarA;
                    sj0Var.f = 2;
                    if (ok0Var2.a(activityG2, sj0Var) != coroutine_suspended) {
                        rr3Var = rr3VarA;
                        rr3Var2 = rr3Var;
                        rr3VarA = rr3Var2;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(rr3Var, null);
                        return p005kotlin.Unit.INSTANCE;
                    }
                } catch (Throwable th13) {
                    exception = th13;
                    rr3Var2 = rr3VarA;
                    ok0Var2.k.set(false);
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA6 = hs3.a();
                    rr3VarA6.e().m = false;
                    rr3VarA6.a(exception);
                    ((as3) ok0Var2.d).a("Failed to show debug menu dialog", exception);
                    rr3Var = rr3VarA;
                }
            } catch (Throwable th14) {
                th = th14;
                rr3Var = rr3VarA;
                rr3VarA.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
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
            }
        }
        return coroutine_suspended;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0204  */
    /* JADX WARN: Code duplicated, block: B:101:0x0205 A[Catch: all -> 0x0105, TRY_LEAVE, TryCatch #5 {, blocks: (B:95:0x01eb, B:98:0x01f4, B:101:0x0205, B:56:0x00ff, B:72:0x0163, B:75:0x017c, B:77:0x0180, B:111:0x0219), top: B:246:0x00ff }] */
    /* JADX WARN: Code duplicated, block: B:104:0x020b  */
    /* JADX WARN: Code duplicated, block: B:111:0x0219 A[Catch: all -> 0x0105, TRY_ENTER, TRY_LEAVE, TryCatch #5 {, blocks: (B:95:0x01eb, B:98:0x01f4, B:101:0x0205, B:56:0x00ff, B:72:0x0163, B:75:0x017c, B:77:0x0180, B:111:0x0219), top: B:246:0x00ff }] */
    /* JADX WARN: Code duplicated, block: B:114:0x022c  */
    /* JADX WARN: Code duplicated, block: B:117:0x0234 A[Catch: all -> 0x00bb, TRY_LEAVE, TryCatch #16 {all -> 0x00bb, blocks: (B:37:0x00aa, B:115:0x022e, B:117:0x0234, B:40:0x00b6, B:105:0x020d), top: B:258:0x0032 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x024a A[Catch: all -> 0x0279, TryCatch #14 {all -> 0x0279, blocks: (B:122:0x0243, B:124:0x024a, B:126:0x024e, B:128:0x0252, B:129:0x0255, B:131:0x0259, B:133:0x025d, B:135:0x0261, B:136:0x0262, B:137:0x0267, B:138:0x0268, B:139:0x026f, B:140:0x0270, B:141:0x0277, B:142:0x0278), top: B:261:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:126:0x024e A[Catch: all -> 0x0279, TryCatch #14 {all -> 0x0279, blocks: (B:122:0x0243, B:124:0x024a, B:126:0x024e, B:128:0x0252, B:129:0x0255, B:131:0x0259, B:133:0x025d, B:135:0x0261, B:136:0x0262, B:137:0x0267, B:138:0x0268, B:139:0x026f, B:140:0x0270, B:141:0x0277, B:142:0x0278), top: B:261:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0259 A[Catch: all -> 0x0279, TryCatch #14 {all -> 0x0279, blocks: (B:122:0x0243, B:124:0x024a, B:126:0x024e, B:128:0x0252, B:129:0x0255, B:131:0x0259, B:133:0x025d, B:135:0x0261, B:136:0x0262, B:137:0x0267, B:138:0x0268, B:139:0x026f, B:140:0x0270, B:141:0x0277, B:142:0x0278), top: B:261:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x025d A[Catch: all -> 0x0279, TryCatch #14 {all -> 0x0279, blocks: (B:122:0x0243, B:124:0x024a, B:126:0x024e, B:128:0x0252, B:129:0x0255, B:131:0x0259, B:133:0x025d, B:135:0x0261, B:136:0x0262, B:137:0x0267, B:138:0x0268, B:139:0x026f, B:140:0x0270, B:141:0x0277, B:142:0x0278), top: B:261:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0261 A[Catch: all -> 0x0279, TryCatch #14 {all -> 0x0279, blocks: (B:122:0x0243, B:124:0x024a, B:126:0x024e, B:128:0x0252, B:129:0x0255, B:131:0x0259, B:133:0x025d, B:135:0x0261, B:136:0x0262, B:137:0x0267, B:138:0x0268, B:139:0x026f, B:140:0x0270, B:141:0x0277, B:142:0x0278), top: B:261:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0262 A[Catch: all -> 0x0279, TryCatch #14 {all -> 0x0279, blocks: (B:122:0x0243, B:124:0x024a, B:126:0x024e, B:128:0x0252, B:129:0x0255, B:131:0x0259, B:133:0x025d, B:135:0x0261, B:136:0x0262, B:137:0x0267, B:138:0x0268, B:139:0x026f, B:140:0x0270, B:141:0x0277, B:142:0x0278), top: B:261:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x0268 A[Catch: all -> 0x0279, TryCatch #14 {all -> 0x0279, blocks: (B:122:0x0243, B:124:0x024a, B:126:0x024e, B:128:0x0252, B:129:0x0255, B:131:0x0259, B:133:0x025d, B:135:0x0261, B:136:0x0262, B:137:0x0267, B:138:0x0268, B:139:0x026f, B:140:0x0270, B:141:0x0277, B:142:0x0278), top: B:261:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0270 A[Catch: all -> 0x0279, TryCatch #14 {all -> 0x0279, blocks: (B:122:0x0243, B:124:0x024a, B:126:0x024e, B:128:0x0252, B:129:0x0255, B:131:0x0259, B:133:0x025d, B:135:0x0261, B:136:0x0262, B:137:0x0267, B:138:0x0268, B:139:0x026f, B:140:0x0270, B:141:0x0277, B:142:0x0278), top: B:261:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x0278 A[Catch: all -> 0x0279, TRY_LEAVE, TryCatch #14 {all -> 0x0279, blocks: (B:122:0x0243, B:124:0x024a, B:126:0x024e, B:128:0x0252, B:129:0x0255, B:131:0x0259, B:133:0x025d, B:135:0x0261, B:136:0x0262, B:137:0x0267, B:138:0x0268, B:139:0x026f, B:140:0x0270, B:141:0x0277, B:142:0x0278), top: B:261:0x0243 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x02df  */
    /* JADX WARN: Code duplicated, block: B:174:0x033c  */
    /* JADX WARN: Code duplicated, block: B:187:0x036a  */
    /* JADX WARN: Code duplicated, block: B:188:0x036b A[Catch: all -> 0x00a0, TRY_LEAVE, TryCatch #1 {, blocks: (B:182:0x0350, B:185:0x035a, B:188:0x036b, B:32:0x0099, B:159:0x02c8, B:162:0x02e1, B:164:0x02e5, B:198:0x037e), top: B:240:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:191:0x0370  */
    /* JADX WARN: Code duplicated, block: B:198:0x037e A[Catch: all -> 0x00a0, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:182:0x0350, B:185:0x035a, B:188:0x036b, B:32:0x0099, B:159:0x02c8, B:162:0x02e1, B:164:0x02e5, B:198:0x037e), top: B:240:0x0099 }] */
    /* JADX WARN: Code duplicated, block: B:201:0x0391  */
    /* JADX WARN: Code duplicated, block: B:204:0x0399 A[Catch: all -> 0x0055, TRY_LEAVE, TryCatch #12 {all -> 0x0055, blocks: (B:13:0x0044, B:202:0x0393, B:204:0x0399, B:16:0x0050, B:192:0x0372), top: B:258:0x0032 }] */
    /* JADX WARN: Code duplicated, block: B:213:0x03b0 A[Catch: all -> 0x03df, TryCatch #19 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:268:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:215:0x03b4 A[Catch: all -> 0x03df, TryCatch #19 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:268:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:220:0x03bf A[Catch: all -> 0x03df, TryCatch #19 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:268:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:222:0x03c3 A[Catch: all -> 0x03df, TryCatch #19 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:268:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:224:0x03c7 A[Catch: all -> 0x03df, TryCatch #19 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:268:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:225:0x03c8 A[Catch: all -> 0x03df, TryCatch #19 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:268:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:227:0x03ce A[Catch: all -> 0x03df, TryCatch #19 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:268:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:229:0x03d6 A[Catch: all -> 0x03df, TryCatch #19 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:268:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:231:0x03de A[Catch: all -> 0x03df, TRY_LEAVE, TryCatch #19 {all -> 0x03df, blocks: (B:211:0x03a9, B:213:0x03b0, B:215:0x03b4, B:217:0x03b8, B:218:0x03bb, B:220:0x03bf, B:222:0x03c3, B:224:0x03c7, B:225:0x03c8, B:226:0x03cd, B:227:0x03ce, B:228:0x03d5, B:229:0x03d6, B:230:0x03dd, B:231:0x03de), top: B:268:0x03a9 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x017a  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:87:0x01d7  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v17, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v19 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v21 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v6, types: [ads_mobile_sdk.rr3, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v7, types: [ads_mobile_sdk.tu2, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v13, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v2, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v22, types: [java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v24, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v26, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r13v28 */
    /* JADX WARN: Type inference failed for: r13v29 */
    /* JADX WARN: Type inference failed for: r13v3, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r13v30, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v31 */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v33 */
    /* JADX WARN: Type inference failed for: r13v34 */
    /* JADX WARN: Type inference failed for: r13v35 */
    /* JADX WARN: Type inference failed for: r13v36 */
    /* JADX WARN: Type inference failed for: r13v37 */
    /* JADX WARN: Type inference failed for: r13v38 */
    /* JADX WARN: Type inference failed for: r13v39 */
    /* JADX WARN: Type inference failed for: r13v40 */
    /* JADX WARN: Type inference failed for: r13v41 */
    /* JADX WARN: Type inference failed for: r13v42 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v31, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v54 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v59, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v12, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v19, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v24, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v19, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v7, types: [ads_mobile_sdk.rr3] */
    public static final Object a(ok0 ok0Var, Continuation continuation) {
        mk0 mk0Var;
        ?? A;
        ?? r13;
        ?? A2;
        ?? r14;
        Activity activityG;
        Object objA;
        ok0 ok0Var2;
        boolean z;
        ?? r15;
        Activity activityG2;
        Object objA2;
        ok0 ok0Var3;
        boolean z2;
        ?? r16;
        ?? r12;
        ?? r2;
        Activity activity;
        ok0 ok0Var4;
        e01 e01Var;
        Object objA3;
        ?? r4;
        ok0 ok0Var5;
        ?? r5;
        URL url;
        ?? r17;
        ?? r6;
        ?? r3;
        ?? r18;
        ?? r19;
        Object objA4;
        ?? r7;
        ?? r110;
        Object obj;
        ?? r111;
        ?? r8;
        Activity activity2;
        ok0 ok0Var6;
        e01 e01Var2;
        Object objA5;
        ?? r9;
        ok0 ok0Var7;
        ?? r10;
        URL url2;
        ?? r112;
        ?? r11;
        ?? r20;
        ?? r113;
        ?? r114;
        Object objA6;
        ?? r21;
        ?? r115;
        Object obj2;
        ok0Var.getClass();
        if (continuation instanceof mk0) {
            mk0Var = (mk0) continuation;
            int i = mk0Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                mk0Var.i = i - Integer.MIN_VALUE;
            } else {
                mk0Var = new mk0(ok0Var, continuation);
            }
        } else {
            mk0Var = new mk0(ok0Var, continuation);
        }
        mk0 mk0Var2 = mk0Var;
        Object obj3 = mk0Var2.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r22 = mk0Var2.i;
        try {
            try {
                switch (r22) {
                    case 0:
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        g83 g83Var = ok0Var.c;
                        s11 s11Var = s11.CUI_NAME_DEBUG_MENU_DEBUG_SIGNALS;
                        ks3 ks3Var = ok0Var.o;
                        List listEmptyList = CollectionsKt.emptyList();
                        if (hs3.b().a == null) {
                            A = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                            try {
                                activityG2 = ok0Var.e.g();
                                if (activityG2 == null) {
                                    xs3.a("No Activity context available for starting debug signals.", null, 6);
                                    ok0Var.k.set(false);
                                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(A, null);
                                    return unit;
                                }
                                boolean z3 = ok0Var.h.h.get();
                                if1 if1Var = ok0Var.j;
                                String str = ok0Var.l;
                                JsonObject jsonObject = ok0Var.n;
                                mk0Var2.a = ok0Var;
                                mk0Var2.b = A;
                                mk0Var2.c = A;
                                mk0Var2.d = activityG2;
                                mk0Var2.f = z3;
                                mk0Var2.i = 1;
                                if1Var.getClass();
                                objA2 = if1.a(if1Var, str, jsonObject, mk0Var2);
                                if (objA2 != coroutine_suspended) {
                                    ok0Var3 = ok0Var;
                                    z2 = z3;
                                    r16 = A;
                                    r12 = A;
                                    ok0Var3.h.h.set(((Boolean) objA2).booleanValue());
                                    if (!ok0Var3.h.h.get()) {
                                        mk0Var2.a = r16;
                                        mk0Var2.b = r12;
                                        mk0Var2.c = null;
                                        mk0Var2.d = null;
                                        mk0Var2.i = 5;
                                        if (ok0Var3.c(mk0Var2) != coroutine_suspended) {
                                            r2 = r12;
                                            obj = p005kotlin.Unit.INSTANCE;
                                            if (obj instanceof i01) {
                                                xs3.a((i01) obj, false);
                                            }
                                            CloseableKt.closeFinally(r2, null);
                                            return p005kotlin.Unit.INSTANCE;
                                        }
                                    } else if (!z2 || ok0Var3.n == null) {
                                        activity = activityG2;
                                        ok0Var4 = ok0Var3;
                                        r19 = r12;
                                        r18 = r16;
                                        try {
                                            mk0Var2.a = r18;
                                            mk0Var2.b = r19;
                                            mk0Var2.c = null;
                                            mk0Var2.d = null;
                                            mk0Var2.i = 4;
                                            ok0Var4.getClass();
                                            objA4 = a(ok0Var4, false, "The device is successfully linked for troubleshooting.", activity, false, (Continuation) mk0Var2, 1);
                                            if (objA4 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                                objA4 = p005kotlin.Unit.INSTANCE;
                                            }
                                            if (objA4 != coroutine_suspended) {
                                                r7 = r19;
                                                p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                                CloseableKt.closeFinally(r7, null);
                                                return unit2;
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            r3 = r19;
                                            r6 = r18;
                                            A = r3;
                                            r13 = r6;
                                            try {
                                                r13.b(th);
                                                if (!(th instanceof v24)) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    r13.a(th);
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    throw new i21(th);
                                                }
                                                if (!(th instanceof CancellationException)) {
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
                                                    CloseableKt.closeFinally(A, th2);
                                                    throw th3;
                                                }
                                            }
                                        }
                                    } else {
                                        e01Var = ok0Var3.i;
                                        ex0 ex0Var = ok0Var3.f;
                                        ex0Var.getClass();
                                        Intrinsics.checkNotNullParameter("gads:drx_debug:send_debug_data_url", C3510b4.i.W);
                                        Intrinsics.checkNotNullParameter("https://www.google.com/dfp/sendDebugData", "defaultValue");
                                        String str2 = (String) ex0Var.a("gads:drx_debug:send_debug_data_url", "https://www.google.com/dfp/sendDebugData", yr.o);
                                        mk0Var2.a = ok0Var3;
                                        mk0Var2.b = r16;
                                        mk0Var2.c = r12;
                                        mk0Var2.d = activityG2;
                                        mk0Var2.e = e01Var;
                                        mk0Var2.i = 2;
                                        String str3 = ok0Var3.l;
                                        JsonObject jsonObject2 = ok0Var3.n;
                                        if1 if1Var2 = ok0Var3.j;
                                        if1Var2.getClass();
                                        objA3 = if1.a(if1Var2, str2, str3, jsonObject2, mk0Var2);
                                        if (objA3 != coroutine_suspended) {
                                            r4 = r12;
                                            ok0Var5 = ok0Var3;
                                            r13 = r16;
                                            try {
                                                url = new URL(((Uri) objA3).toString());
                                                mk0Var2.a = ok0Var5;
                                                try {
                                                    mk0Var2.b = r13;
                                                    mk0Var2.c = r4;
                                                    mk0Var2.d = activityG2;
                                                    mk0Var2.e = null;
                                                    mk0Var2.i = 3;
                                                    if (e01.a(e01Var, url, null, mk0Var2, 30) != coroutine_suspended) {
                                                        activity = activityG2;
                                                        r17 = r4;
                                                        r110 = r13;
                                                        ok0Var4 = ok0Var5;
                                                        r19 = r17;
                                                        r18 = r110;
                                                        mk0Var2.a = r18;
                                                        mk0Var2.b = r19;
                                                        mk0Var2.c = null;
                                                        mk0Var2.d = null;
                                                        mk0Var2.i = 4;
                                                        ok0Var4.getClass();
                                                        objA4 = a(ok0Var4, false, "The device is successfully linked for troubleshooting.", activity, false, (Continuation) mk0Var2, 1);
                                                        if (objA4 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                                            objA4 = p005kotlin.Unit.INSTANCE;
                                                        }
                                                        if (objA4 != coroutine_suspended) {
                                                            r7 = r19;
                                                            p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                                            CloseableKt.closeFinally(r7, null);
                                                            return unit3;
                                                        }
                                                    }
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    A = r4;
                                                    r13.b(th);
                                                    if (!(th instanceof v24)) {
                                                        throw th;
                                                    }
                                                    if (!(th instanceof TimeoutCancellationException)) {
                                                        r13.a(th);
                                                    }
                                                    if (!(th instanceof TimeoutCancellationException)) {
                                                        throw new i21(th);
                                                    }
                                                    if (!(th instanceof CancellationException)) {
                                                        throw new wz0(th);
                                                    }
                                                    if (th instanceof w01) {
                                                        throw th;
                                                    }
                                                    throw new b01(th);
                                                }
                                            } catch (Throwable th5) {
                                                th = th5;
                                                r5 = r13;
                                                A = r4;
                                                r13 = r5;
                                                r13.b(th);
                                                if (!(th instanceof v24)) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    r13.a(th);
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    throw new i21(th);
                                                }
                                                if (!(th instanceof CancellationException)) {
                                                    throw new wz0(th);
                                                }
                                                if (th instanceof w01) {
                                                    throw th;
                                                }
                                                throw new b01(th);
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                r13 = A;
                                r13.b(th);
                                if (!(th instanceof v24)) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                    r13.a(th);
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    throw new i21(th);
                                }
                                if (!(th instanceof CancellationException)) {
                                    throw new wz0(th);
                                }
                                if (th instanceof w01) {
                                    throw th;
                                }
                                throw new b01(th);
                            }
                        } else {
                            A2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                            try {
                                activityG = ok0Var.e.g();
                                if (activityG == null) {
                                    xs3.a("No Activity context available for starting debug signals.", null, 6);
                                    ok0Var.k.set(false);
                                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(A2, null);
                                    return unit4;
                                }
                                boolean z4 = ok0Var.h.h.get();
                                if1 if1Var3 = ok0Var.j;
                                String str4 = ok0Var.l;
                                JsonObject jsonObject3 = ok0Var.n;
                                mk0Var2.a = ok0Var;
                                mk0Var2.b = A2;
                                mk0Var2.c = A2;
                                mk0Var2.d = activityG;
                                mk0Var2.f = z4;
                                mk0Var2.i = 6;
                                if1Var3.getClass();
                                objA = if1.a(if1Var3, str4, jsonObject3, mk0Var2);
                                if (objA != coroutine_suspended) {
                                    ok0Var2 = ok0Var;
                                    z = z4;
                                    r15 = A2;
                                    r111 = A2;
                                    ok0Var2.h.h.set(((Boolean) objA).booleanValue());
                                    if (!ok0Var2.h.h.get()) {
                                        mk0Var2.a = r15;
                                        mk0Var2.b = r111;
                                        mk0Var2.c = null;
                                        mk0Var2.d = null;
                                        mk0Var2.i = 10;
                                        if (ok0Var2.c(mk0Var2) != coroutine_suspended) {
                                            r8 = r111;
                                            obj2 = p005kotlin.Unit.INSTANCE;
                                            if (obj2 instanceof i01) {
                                                xs3.a((i01) obj2, false);
                                            }
                                            CloseableKt.closeFinally(r8, null);
                                            return p005kotlin.Unit.INSTANCE;
                                        }
                                    } else if (!z || ok0Var2.n == null) {
                                        activity2 = activityG;
                                        ok0Var6 = ok0Var2;
                                        r114 = r111;
                                        r113 = r15;
                                        try {
                                            mk0Var2.a = r113;
                                            mk0Var2.b = r114;
                                            mk0Var2.c = null;
                                            mk0Var2.d = null;
                                            mk0Var2.i = 9;
                                            ok0Var6.getClass();
                                            objA6 = a(ok0Var6, false, "The device is successfully linked for troubleshooting.", activity2, false, (Continuation) mk0Var2, 1);
                                            if (objA6 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                                objA6 = p005kotlin.Unit.INSTANCE;
                                            }
                                            if (objA6 != coroutine_suspended) {
                                                r21 = r114;
                                                p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                                                CloseableKt.closeFinally(r21, null);
                                                return unit5;
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            r20 = r114;
                                            r11 = r113;
                                            A2 = r20;
                                            r14 = r11;
                                            try {
                                                r14.b(th);
                                                if (!(th instanceof v24)) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    r14.a(th);
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    throw new i21(th);
                                                }
                                                if (!(th instanceof CancellationException)) {
                                                    throw new wz0(th);
                                                }
                                                if (th instanceof w01) {
                                                    throw th;
                                                }
                                                throw new b01(th);
                                            } catch (Throwable th8) {
                                                try {
                                                    throw th8;
                                                } catch (Throwable th9) {
                                                    CloseableKt.closeFinally(A2, th8);
                                                    throw th9;
                                                }
                                            }
                                        }
                                    } else {
                                        e01Var2 = ok0Var2.i;
                                        ex0 ex0Var2 = ok0Var2.f;
                                        ex0Var2.getClass();
                                        Intrinsics.checkNotNullParameter("gads:drx_debug:send_debug_data_url", C3510b4.i.W);
                                        Intrinsics.checkNotNullParameter("https://www.google.com/dfp/sendDebugData", "defaultValue");
                                        String str5 = (String) ex0Var2.a("gads:drx_debug:send_debug_data_url", "https://www.google.com/dfp/sendDebugData", yr.o);
                                        mk0Var2.a = ok0Var2;
                                        mk0Var2.b = r15;
                                        mk0Var2.c = r111;
                                        mk0Var2.d = activityG;
                                        mk0Var2.e = e01Var2;
                                        mk0Var2.i = 7;
                                        String str6 = ok0Var2.l;
                                        JsonObject jsonObject4 = ok0Var2.n;
                                        if1 if1Var4 = ok0Var2.j;
                                        if1Var4.getClass();
                                        objA5 = if1.a(if1Var4, str5, str6, jsonObject4, mk0Var2);
                                        if (objA5 != coroutine_suspended) {
                                            r9 = r111;
                                            ok0Var7 = ok0Var2;
                                            r14 = r15;
                                            try {
                                                url2 = new URL(((Uri) objA5).toString());
                                                mk0Var2.a = ok0Var7;
                                                try {
                                                    mk0Var2.b = r14;
                                                    mk0Var2.c = r9;
                                                    mk0Var2.d = activityG;
                                                    mk0Var2.e = null;
                                                    mk0Var2.i = 8;
                                                    if (e01.a(e01Var2, url2, null, mk0Var2, 30) != coroutine_suspended) {
                                                        activity2 = activityG;
                                                        r112 = r9;
                                                        r115 = r14;
                                                        ok0Var6 = ok0Var7;
                                                        r114 = r112;
                                                        r113 = r115;
                                                        mk0Var2.a = r113;
                                                        mk0Var2.b = r114;
                                                        mk0Var2.c = null;
                                                        mk0Var2.d = null;
                                                        mk0Var2.i = 9;
                                                        ok0Var6.getClass();
                                                        objA6 = a(ok0Var6, false, "The device is successfully linked for troubleshooting.", activity2, false, (Continuation) mk0Var2, 1);
                                                        if (objA6 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                                            objA6 = p005kotlin.Unit.INSTANCE;
                                                        }
                                                        if (objA6 != coroutine_suspended) {
                                                            r21 = r114;
                                                            p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                                            CloseableKt.closeFinally(r21, null);
                                                            return unit6;
                                                        }
                                                    }
                                                } catch (Throwable th10) {
                                                    th = th10;
                                                    A2 = r9;
                                                    r14.b(th);
                                                    if (!(th instanceof v24)) {
                                                        throw th;
                                                    }
                                                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                        r14.a(th);
                                                    }
                                                    if (!(th instanceof TimeoutCancellationException)) {
                                                        throw new i21(th);
                                                    }
                                                    if (!(th instanceof CancellationException)) {
                                                        throw new wz0(th);
                                                    }
                                                    if (th instanceof w01) {
                                                        throw th;
                                                    }
                                                    throw new b01(th);
                                                }
                                            } catch (Throwable th11) {
                                                th = th11;
                                                r10 = r14;
                                                A2 = r9;
                                                r14 = r10;
                                                r14.b(th);
                                                if (!(th instanceof v24)) {
                                                    throw th;
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    r14.a(th);
                                                }
                                                if (!(th instanceof TimeoutCancellationException)) {
                                                    throw new i21(th);
                                                }
                                                if (!(th instanceof CancellationException)) {
                                                    throw new wz0(th);
                                                }
                                                if (th instanceof w01) {
                                                    throw th;
                                                }
                                                throw new b01(th);
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                r14 = A2;
                                r14.b(th);
                                if (!(th instanceof v24)) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    r14.a(th);
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    throw new i21(th);
                                }
                                if (!(th instanceof CancellationException)) {
                                    throw new wz0(th);
                                }
                                if (th instanceof w01) {
                                    throw th;
                                }
                                throw new b01(th);
                            }
                        }
                        return coroutine_suspended;
                    case 1:
                        z2 = mk0Var2.f;
                        Activity activity3 = mk0Var2.d;
                        A = mk0Var2.c;
                        r13 = (rr3) mk0Var2.b;
                        ok0Var3 = (ok0) mk0Var2.a;
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        objA2 = obj3;
                        activityG2 = activity3;
                        r12 = A;
                        r16 = r13;
                        ok0Var3.h.h.set(((Boolean) objA2).booleanValue());
                        if (!ok0Var3.h.h.get()) {
                            if (z2) {
                            }
                            activity = activityG2;
                            ok0Var4 = ok0Var3;
                            r19 = r12;
                            r18 = r16;
                            mk0Var2.a = r18;
                            mk0Var2.b = r19;
                            mk0Var2.c = null;
                            mk0Var2.d = null;
                            mk0Var2.i = 4;
                            ok0Var4.getClass();
                            objA4 = a(ok0Var4, false, "The device is successfully linked for troubleshooting.", activity, false, (Continuation) mk0Var2, 1);
                            if (objA4 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                objA4 = p005kotlin.Unit.INSTANCE;
                            }
                            if (objA4 != coroutine_suspended) {
                                r7 = r19;
                                p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(r7, null);
                                return unit7;
                            }
                            break;
                        } else {
                            mk0Var2.a = r16;
                            mk0Var2.b = r12;
                            mk0Var2.c = null;
                            mk0Var2.d = null;
                            mk0Var2.i = 5;
                            if (ok0Var3.c(mk0Var2) != coroutine_suspended) {
                                r2 = r12;
                                obj = p005kotlin.Unit.INSTANCE;
                                if (obj instanceof i01) {
                                    xs3.a((i01) obj, false);
                                }
                                CloseableKt.closeFinally(r2, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                        }
                        return coroutine_suspended;
                    case 2:
                        e01Var = mk0Var2.e;
                        Activity activity4 = mk0Var2.d;
                        r4 = mk0Var2.c;
                        r5 = (rr3) mk0Var2.b;
                        ok0 ok0Var8 = (ok0) mk0Var2.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj3);
                            objA3 = obj3;
                            activityG2 = activity4;
                            r13 = r5;
                            ok0Var5 = ok0Var8;
                            r4 = r4;
                            url = new URL(((Uri) objA3).toString());
                            mk0Var2.a = ok0Var5;
                            mk0Var2.b = r13;
                            mk0Var2.c = r4;
                            mk0Var2.d = activityG2;
                            mk0Var2.e = null;
                            mk0Var2.i = 3;
                            if (e01.a(e01Var, url, null, mk0Var2, 30) != coroutine_suspended) {
                                activity = activityG2;
                                r17 = r4;
                                r110 = r13;
                                ok0Var4 = ok0Var5;
                                r19 = r17;
                                r18 = r110;
                                mk0Var2.a = r18;
                                mk0Var2.b = r19;
                                mk0Var2.c = null;
                                mk0Var2.d = null;
                                mk0Var2.i = 4;
                                ok0Var4.getClass();
                                objA4 = a(ok0Var4, false, "The device is successfully linked for troubleshooting.", activity, false, (Continuation) mk0Var2, 1);
                                if (objA4 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    objA4 = p005kotlin.Unit.INSTANCE;
                                }
                                if (objA4 != coroutine_suspended) {
                                    r7 = r19;
                                    p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(r7, null);
                                    return unit8;
                                }
                            }
                            return coroutine_suspended;
                        } catch (Throwable th13) {
                            th = th13;
                            A = r4;
                            r13 = r5;
                            r13.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r13.a(th);
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                throw new i21(th);
                            }
                            if (!(th instanceof CancellationException)) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                    case 3:
                        Activity activity5 = mk0Var2.d;
                        r3 = mk0Var2.c;
                        r6 = (rr3) mk0Var2.b;
                        ok0Var5 = (ok0) mk0Var2.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj3);
                            activity = activity5;
                            r17 = r3;
                            r110 = r6;
                            ok0Var4 = ok0Var5;
                            r19 = r17;
                            r18 = r110;
                            mk0Var2.a = r18;
                            mk0Var2.b = r19;
                            mk0Var2.c = null;
                            mk0Var2.d = null;
                            mk0Var2.i = 4;
                            ok0Var4.getClass();
                            objA4 = a(ok0Var4, false, "The device is successfully linked for troubleshooting.", activity, false, (Continuation) mk0Var2, 1);
                            if (objA4 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                objA4 = p005kotlin.Unit.INSTANCE;
                            }
                            if (objA4 != coroutine_suspended) {
                                r7 = r19;
                                p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(r7, null);
                                return unit9;
                            }
                            return coroutine_suspended;
                        } catch (Throwable th14) {
                            th = th14;
                            A = r3;
                            r13 = r6;
                            r13.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r13.a(th);
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                throw new i21(th);
                            }
                            if (!(th instanceof CancellationException)) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                    case 4:
                        Closeable closeable = mk0Var2.b;
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        r7 = closeable;
                        p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(r7, null);
                        return unit10;
                    case 5:
                        Closeable closeable2 = mk0Var2.b;
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        r2 = closeable2;
                        obj = p005kotlin.Unit.INSTANCE;
                        if (obj instanceof i01) {
                            xs3.a((i01) obj, false);
                        }
                        CloseableKt.closeFinally(r2, null);
                        return p005kotlin.Unit.INSTANCE;
                    case 6:
                        z = mk0Var2.f;
                        Activity activity6 = mk0Var2.d;
                        A2 = mk0Var2.c;
                        r14 = (rr3) mk0Var2.b;
                        ok0Var2 = (ok0) mk0Var2.a;
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        objA = obj3;
                        activityG = activity6;
                        r111 = A2;
                        r15 = r14;
                        ok0Var2.h.h.set(((Boolean) objA).booleanValue());
                        if (!ok0Var2.h.h.get()) {
                            if (z) {
                            }
                            activity2 = activityG;
                            ok0Var6 = ok0Var2;
                            r114 = r111;
                            r113 = r15;
                            mk0Var2.a = r113;
                            mk0Var2.b = r114;
                            mk0Var2.c = null;
                            mk0Var2.d = null;
                            mk0Var2.i = 9;
                            ok0Var6.getClass();
                            objA6 = a(ok0Var6, false, "The device is successfully linked for troubleshooting.", activity2, false, (Continuation) mk0Var2, 1);
                            if (objA6 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                objA6 = p005kotlin.Unit.INSTANCE;
                            }
                            if (objA6 != coroutine_suspended) {
                                r21 = r114;
                                p005kotlin.Unit unit11 = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(r21, null);
                                return unit11;
                            }
                            break;
                        } else {
                            mk0Var2.a = r15;
                            mk0Var2.b = r111;
                            mk0Var2.c = null;
                            mk0Var2.d = null;
                            mk0Var2.i = 10;
                            if (ok0Var2.c(mk0Var2) != coroutine_suspended) {
                                r8 = r111;
                                obj2 = p005kotlin.Unit.INSTANCE;
                                if (obj2 instanceof i01) {
                                    xs3.a((i01) obj2, false);
                                }
                                CloseableKt.closeFinally(r8, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                        }
                        return coroutine_suspended;
                    case 7:
                        e01Var2 = mk0Var2.e;
                        Activity activity7 = mk0Var2.d;
                        r9 = mk0Var2.c;
                        r10 = (rr3) mk0Var2.b;
                        ok0 ok0Var9 = (ok0) mk0Var2.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj3);
                            objA5 = obj3;
                            activityG = activity7;
                            r14 = r10;
                            ok0Var7 = ok0Var9;
                            r9 = r9;
                            url2 = new URL(((Uri) objA5).toString());
                            mk0Var2.a = ok0Var7;
                            mk0Var2.b = r14;
                            mk0Var2.c = r9;
                            mk0Var2.d = activityG;
                            mk0Var2.e = null;
                            mk0Var2.i = 8;
                            if (e01.a(e01Var2, url2, null, mk0Var2, 30) != coroutine_suspended) {
                                activity2 = activityG;
                                r112 = r9;
                                r115 = r14;
                                ok0Var6 = ok0Var7;
                                r114 = r112;
                                r113 = r115;
                                mk0Var2.a = r113;
                                mk0Var2.b = r114;
                                mk0Var2.c = null;
                                mk0Var2.d = null;
                                mk0Var2.i = 9;
                                ok0Var6.getClass();
                                objA6 = a(ok0Var6, false, "The device is successfully linked for troubleshooting.", activity2, false, (Continuation) mk0Var2, 1);
                                if (objA6 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    objA6 = p005kotlin.Unit.INSTANCE;
                                }
                                if (objA6 != coroutine_suspended) {
                                    r21 = r114;
                                    p005kotlin.Unit unit12 = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(r21, null);
                                    return unit12;
                                }
                            }
                            return coroutine_suspended;
                        } catch (Throwable th15) {
                            th = th15;
                            A2 = r9;
                            r14 = r10;
                            r14.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r14.a(th);
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                throw new i21(th);
                            }
                            if (!(th instanceof CancellationException)) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                    case 8:
                        Activity activity8 = mk0Var2.d;
                        r20 = mk0Var2.c;
                        r11 = (rr3) mk0Var2.b;
                        ok0Var7 = (ok0) mk0Var2.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(obj3);
                            activity2 = activity8;
                            r112 = r20;
                            r115 = r11;
                            ok0Var6 = ok0Var7;
                            r114 = r112;
                            r113 = r115;
                            mk0Var2.a = r113;
                            mk0Var2.b = r114;
                            mk0Var2.c = null;
                            mk0Var2.d = null;
                            mk0Var2.i = 9;
                            ok0Var6.getClass();
                            objA6 = a(ok0Var6, false, "The device is successfully linked for troubleshooting.", activity2, false, (Continuation) mk0Var2, 1);
                            if (objA6 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                objA6 = p005kotlin.Unit.INSTANCE;
                            }
                            if (objA6 != coroutine_suspended) {
                                r21 = r114;
                                p005kotlin.Unit unit13 = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(r21, null);
                                return unit13;
                            }
                            return coroutine_suspended;
                        } catch (Throwable th16) {
                            th = th16;
                            A2 = r20;
                            r14 = r11;
                            r14.b(th);
                            if (!(th instanceof v24)) {
                                throw th;
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                r14.a(th);
                            }
                            if (!(th instanceof TimeoutCancellationException)) {
                                throw new i21(th);
                            }
                            if (!(th instanceof CancellationException)) {
                                throw new wz0(th);
                            }
                            if (th instanceof w01) {
                                throw th;
                            }
                            throw new b01(th);
                        }
                    case 9:
                        Closeable closeable3 = mk0Var2.b;
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        r21 = closeable3;
                        p005kotlin.Unit unit14 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(r21, null);
                        return unit14;
                    case 10:
                        Closeable closeable4 = mk0Var2.b;
                        p005kotlin.ResultKt.throwOnFailure(obj3);
                        r8 = closeable4;
                        obj2 = p005kotlin.Unit.INSTANCE;
                        if (obj2 instanceof i01) {
                            xs3.a((i01) obj2, false);
                        }
                        CloseableKt.closeFinally(r8, null);
                        return p005kotlin.Unit.INSTANCE;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable th17) {
                th = th17;
                A2 = coroutine_suspended;
                r14 = r22;
            }
        } catch (Throwable th18) {
            th = th18;
            A = coroutine_suspended;
            r13 = r22;
        }
    }

    public static /* synthetic */ Object a(ok0 ok0Var, boolean z, String str, Activity activity, boolean z2, Continuation continuation, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            str = "In-app preview failed to load because of a system error. Please try again later.";
        }
        if ((i & 4) != 0) {
            activity = null;
        }
        if ((i & 8) != 0) {
            z2 = false;
        }
        return ok0Var.a(z, str, activity, z2, continuation);
    }

    public static final void a(int i, ok0 this$0, Ref.IntRef adInspectorSettingsIndex, Ref.IntRef openAdInspectorIndex, int i2, int i3, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adInspectorSettingsIndex, "$adInspectorSettingsIndex");
        Intrinsics.checkNotNullParameter(openAdInspectorIndex, "$openAdInspectorIndex");
        if (i4 == i) {
            xs3.a(this$0.b, new fk0(this$0, null));
            return;
        }
        if (i4 == adInspectorSettingsIndex.element) {
            xs3.a(this$0.b, new gk0(this$0, null));
            return;
        }
        if (i4 == openAdInspectorIndex.element) {
            xs3.a(this$0.b, new hk0(this$0, null));
            return;
        }
        if (i4 == i2) {
            xs3.a(this$0.b, new ik0(this$0, null));
        } else {
            if (i4 == i3) {
                xs3.a(this$0.b, new jk0(this$0, null));
                return;
            }
            Splitter splitter = f01.a;
            f01.c("Unsupported debug menu option: " + i4, null);
            this$0.k.set(false);
        }
    }

    public static final void a(ok0 this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    public static final void a(ok0 this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    public static final void a(ok0 this$0, AdInspectorError adInspectorError) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (adInspectorError != null) {
            CoroutineScope coroutineScope = this$0.b;
            tj0 block = new tj0(this$0, adInspectorError, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        }
    }

    public static final void a(ok0 this$0, String diagnosticText, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(diagnosticText, "$diagnosticText");
        Activity activityG = this$0.e.g();
        if (activityG != null) {
            ClipboardManager clipboardManager = (ClipboardManager) activityG.getSystemService(ClipboardManager.class);
            if (clipboardManager == null) {
                Toast.makeText(activityG.getApplicationContext(), "Copy failed, unable to access clipboard", 0).show();
            } else {
                try {
                    clipboardManager.setPrimaryClip(ClipData.newPlainText("Ad Information", diagnosticText));
                    Toast.makeText(activityG.getApplicationContext(), "Copied to clipboard", 0).show();
                } catch (Throwable unused) {
                    Toast.makeText(activityG.getApplicationContext(), "Copy failed, possibly due to size", 1).show();
                }
            }
        }
        CoroutineScope coroutineScope = this$0.b;
        wj0 block = new wj0(this$0, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public static final void a(ok0 this$0, AtomicInteger selectedGestureIndex, int i, int i2, int i3, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(selectedGestureIndex, "$selectedGestureIndex");
        CoroutineScope coroutineScope = this$0.b;
        ck0 block = new ck0(selectedGestureIndex, i, i2, this$0, i3, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public static final void a(AtomicInteger selectedGestureIndex, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(selectedGestureIndex, "$selectedGestureIndex");
        selectedGestureIndex.set(i);
    }

    /* JADX WARN: Code duplicated, block: B:106:0x01ac A[Catch: all -> 0x0200, TryCatch #1 {all -> 0x0200, blocks: (B:104:0x01a6, B:106:0x01ac, B:109:0x01ca, B:112:0x01cf, B:114:0x01d3), top: B:158:0x01a6 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:109:0x01ca A[Catch: all -> 0x0200, TryCatch #1 {all -> 0x0200, blocks: (B:104:0x01a6, B:106:0x01ac, B:109:0x01ca, B:112:0x01cf, B:114:0x01d3), top: B:158:0x01a6 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:112:0x01cf A[Catch: all -> 0x0200, TryCatch #1 {all -> 0x0200, blocks: (B:104:0x01a6, B:106:0x01ac, B:109:0x01ca, B:112:0x01cf, B:114:0x01d3), top: B:158:0x01a6 }] */
    /* JADX WARN: Code duplicated, block: B:114:0x01d3 A[Catch: all -> 0x0200, TRY_LEAVE, TryCatch #1 {all -> 0x0200, blocks: (B:104:0x01a6, B:106:0x01ac, B:109:0x01ca, B:112:0x01cf, B:114:0x01d3), top: B:158:0x01a6 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x01f1 A[Catch: all -> 0x003e, TRY_LEAVE, TryCatch #9 {all -> 0x003e, blocks: (B:13:0x0039, B:118:0x01eb, B:120:0x01f1), top: B:170:0x0039 }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0210 A[Catch: all -> 0x023f, TryCatch #11 {all -> 0x023f, blocks: (B:129:0x0209, B:131:0x0210, B:133:0x0214, B:135:0x0218, B:136:0x021b, B:138:0x021f, B:140:0x0223, B:142:0x0227, B:143:0x0228, B:144:0x022d, B:145:0x022e, B:146:0x0235, B:147:0x0236, B:148:0x023d, B:149:0x023e), top: B:173:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0214 A[Catch: all -> 0x023f, TryCatch #11 {all -> 0x023f, blocks: (B:129:0x0209, B:131:0x0210, B:133:0x0214, B:135:0x0218, B:136:0x021b, B:138:0x021f, B:140:0x0223, B:142:0x0227, B:143:0x0228, B:144:0x022d, B:145:0x022e, B:146:0x0235, B:147:0x0236, B:148:0x023d, B:149:0x023e), top: B:173:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:138:0x021f A[Catch: all -> 0x023f, TryCatch #11 {all -> 0x023f, blocks: (B:129:0x0209, B:131:0x0210, B:133:0x0214, B:135:0x0218, B:136:0x021b, B:138:0x021f, B:140:0x0223, B:142:0x0227, B:143:0x0228, B:144:0x022d, B:145:0x022e, B:146:0x0235, B:147:0x0236, B:148:0x023d, B:149:0x023e), top: B:173:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0223 A[Catch: all -> 0x023f, TryCatch #11 {all -> 0x023f, blocks: (B:129:0x0209, B:131:0x0210, B:133:0x0214, B:135:0x0218, B:136:0x021b, B:138:0x021f, B:140:0x0223, B:142:0x0227, B:143:0x0228, B:144:0x022d, B:145:0x022e, B:146:0x0235, B:147:0x0236, B:148:0x023d, B:149:0x023e), top: B:173:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x0227 A[Catch: all -> 0x023f, TryCatch #11 {all -> 0x023f, blocks: (B:129:0x0209, B:131:0x0210, B:133:0x0214, B:135:0x0218, B:136:0x021b, B:138:0x021f, B:140:0x0223, B:142:0x0227, B:143:0x0228, B:144:0x022d, B:145:0x022e, B:146:0x0235, B:147:0x0236, B:148:0x023d, B:149:0x023e), top: B:173:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:143:0x0228 A[Catch: all -> 0x023f, TryCatch #11 {all -> 0x023f, blocks: (B:129:0x0209, B:131:0x0210, B:133:0x0214, B:135:0x0218, B:136:0x021b, B:138:0x021f, B:140:0x0223, B:142:0x0227, B:143:0x0228, B:144:0x022d, B:145:0x022e, B:146:0x0235, B:147:0x0236, B:148:0x023d, B:149:0x023e), top: B:173:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x022e A[Catch: all -> 0x023f, TryCatch #11 {all -> 0x023f, blocks: (B:129:0x0209, B:131:0x0210, B:133:0x0214, B:135:0x0218, B:136:0x021b, B:138:0x021f, B:140:0x0223, B:142:0x0227, B:143:0x0228, B:144:0x022d, B:145:0x022e, B:146:0x0235, B:147:0x0236, B:148:0x023d, B:149:0x023e), top: B:173:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:147:0x0236 A[Catch: all -> 0x023f, TryCatch #11 {all -> 0x023f, blocks: (B:129:0x0209, B:131:0x0210, B:133:0x0214, B:135:0x0218, B:136:0x021b, B:138:0x021f, B:140:0x0223, B:142:0x0227, B:143:0x0228, B:144:0x022d, B:145:0x022e, B:146:0x0235, B:147:0x0236, B:148:0x023d, B:149:0x023e), top: B:173:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x023e A[Catch: all -> 0x023f, TRY_LEAVE, TryCatch #11 {all -> 0x023f, blocks: (B:129:0x0209, B:131:0x0210, B:133:0x0214, B:135:0x0218, B:136:0x021b, B:138:0x021f, B:140:0x0223, B:142:0x0227, B:143:0x0228, B:144:0x022d, B:145:0x022e, B:146:0x0235, B:147:0x0236, B:148:0x023d, B:149:0x023e), top: B:173:0x0209 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00d3 A[Catch: all -> 0x0129, TryCatch #7 {all -> 0x0129, blocks: (B:44:0x00cd, B:46:0x00d3, B:49:0x00f1, B:52:0x00f7, B:54:0x00fb), top: B:167:0x00cd }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f1 A[Catch: all -> 0x0129, TryCatch #7 {all -> 0x0129, blocks: (B:44:0x00cd, B:46:0x00d3, B:49:0x00f1, B:52:0x00f7, B:54:0x00fb), top: B:167:0x00cd }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f7 A[Catch: all -> 0x0129, TryCatch #7 {all -> 0x0129, blocks: (B:44:0x00cd, B:46:0x00d3, B:49:0x00f1, B:52:0x00f7, B:54:0x00fb), top: B:167:0x00cd }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00fb A[Catch: all -> 0x0129, TRY_LEAVE, TryCatch #7 {all -> 0x0129, blocks: (B:44:0x00cd, B:46:0x00d3, B:49:0x00f1, B:52:0x00f7, B:54:0x00fb), top: B:167:0x00cd }] */
    /* JADX WARN: Code duplicated, block: B:60:0x011b A[Catch: all -> 0x0068, TRY_LEAVE, TryCatch #5 {all -> 0x0068, blocks: (B:23:0x0063, B:58:0x0115, B:60:0x011b), top: B:163:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0139 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x0132, B:69:0x0139, B:71:0x013d, B:73:0x0141, B:74:0x0144, B:76:0x0148, B:78:0x014c, B:80:0x0150, B:81:0x0151, B:82:0x0156, B:83:0x0157, B:84:0x015e, B:85:0x015f, B:86:0x0166, B:87:0x0167), top: B:162:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x013d A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x0132, B:69:0x0139, B:71:0x013d, B:73:0x0141, B:74:0x0144, B:76:0x0148, B:78:0x014c, B:80:0x0150, B:81:0x0151, B:82:0x0156, B:83:0x0157, B:84:0x015e, B:85:0x015f, B:86:0x0166, B:87:0x0167), top: B:162:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x0148 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x0132, B:69:0x0139, B:71:0x013d, B:73:0x0141, B:74:0x0144, B:76:0x0148, B:78:0x014c, B:80:0x0150, B:81:0x0151, B:82:0x0156, B:83:0x0157, B:84:0x015e, B:85:0x015f, B:86:0x0166, B:87:0x0167), top: B:162:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x014c A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x0132, B:69:0x0139, B:71:0x013d, B:73:0x0141, B:74:0x0144, B:76:0x0148, B:78:0x014c, B:80:0x0150, B:81:0x0151, B:82:0x0156, B:83:0x0157, B:84:0x015e, B:85:0x015f, B:86:0x0166, B:87:0x0167), top: B:162:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code duplicated, block: B:80:0x0150 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x0132, B:69:0x0139, B:71:0x013d, B:73:0x0141, B:74:0x0144, B:76:0x0148, B:78:0x014c, B:80:0x0150, B:81:0x0151, B:82:0x0156, B:83:0x0157, B:84:0x015e, B:85:0x015f, B:86:0x0166, B:87:0x0167), top: B:162:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0151 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x0132, B:69:0x0139, B:71:0x013d, B:73:0x0141, B:74:0x0144, B:76:0x0148, B:78:0x014c, B:80:0x0150, B:81:0x0151, B:82:0x0156, B:83:0x0157, B:84:0x015e, B:85:0x015f, B:86:0x0166, B:87:0x0167), top: B:162:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0157 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x0132, B:69:0x0139, B:71:0x013d, B:73:0x0141, B:74:0x0144, B:76:0x0148, B:78:0x014c, B:80:0x0150, B:81:0x0151, B:82:0x0156, B:83:0x0157, B:84:0x015e, B:85:0x015f, B:86:0x0166, B:87:0x0167), top: B:162:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:85:0x015f A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x0132, B:69:0x0139, B:71:0x013d, B:73:0x0141, B:74:0x0144, B:76:0x0148, B:78:0x014c, B:80:0x0150, B:81:0x0151, B:82:0x0156, B:83:0x0157, B:84:0x015e, B:85:0x015f, B:86:0x0166, B:87:0x0167), top: B:162:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0167 A[Catch: all -> 0x0168, TRY_LEAVE, TryCatch #4 {all -> 0x0168, blocks: (B:67:0x0132, B:69:0x0139, B:71:0x013d, B:73:0x0141, B:74:0x0144, B:76:0x0148, B:78:0x014c, B:80:0x0150, B:81:0x0151, B:82:0x0156, B:83:0x0157, B:84:0x015e, B:85:0x015f, B:86:0x0166, B:87:0x0167), top: B:162:0x0132 }] */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01e7, code lost:
    
        if (r1.a(r4, r12, r6) == r0) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0110, code lost:
    
        if (r1.a(r4, r12, r6) == r0) goto L116;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(kotlin.ok0 r11, p005kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ok0.b(ads_mobile_sdk.ok0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final void b(ok0 this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CoroutineScope coroutineScope = this$0.b;
        ak0 block = new ak0(this$0, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public static final void b(ok0 this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CoroutineScope coroutineScope = this$0.b;
        bk0 block = new bk0(this$0, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public static final void b(ok0 this$0, String diagnosticText, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(diagnosticText, "$diagnosticText");
        boolean zM0 = this$0.f.M0();
        Activity activityG = this$0.e.g();
        if (activityG == null) {
            return;
        }
        if (zM0) {
            byte[] bytes = diagnosticText.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            if (bytes.length > 100000) {
                Toast.makeText(activityG.getApplicationContext(), "Text too large to share, please use Copy", 1).show();
                CoroutineScope coroutineScope = this$0.b;
                rj0 block = new rj0(this$0, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
                return;
            }
        }
        this$0.g.a(Intent.createChooser(new Intent("android.intent.action.SEND").setType(AssetHelper.DEFAULT_MIME_TYPE).putExtra("android.intent.extra.TEXT", diagnosticText), "Share via"));
        if (zM0) {
            return;
        }
        this$0.k.set(false);
    }

    public static final void c(ok0 this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    public static final void c(ok0 this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    public static final void d(ok0 this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.k.set(false);
    }

    public static final void d(ok0 this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        o21 o21Var = this$0.g;
        Intent intent = new Intent("android.intent.action.VIEW", q);
        Bundle bundle = new Bundle();
        String str = null;
        bundle.putBinder(CustomTabsIntent.EXTRA_SESSION, null);
        String str2 = this$0.p;
        if (str2 != null) {
            str = str2;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("packageName");
        }
        bundle.putString("com.android.browser.application_id", str);
        intent.putExtras(bundle);
        o21Var.a(intent);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00af  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b8  */
    public final Object a(Activity activity, String str, nk0 nk0Var) {
        Activity activity2;
        nk0 nk0Var2;
        Object objA;
        switch (str.hashCode()) {
            case 48:
                activity2 = activity;
                nk0Var2 = nk0Var;
                if (str.equals("0")) {
                    Object objA2 = a(this, false, "The device is successfully linked for creative preview.", activity2, false, (Continuation) nk0Var2, 1);
                    if (objA2 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        objA2 = p005kotlin.Unit.INSTANCE;
                    }
                    return objA2 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA2 : p005kotlin.Unit.INSTANCE;
                }
                String strSubstring = str.substring(0, Math.min(50, str.length()));
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                xs3.a("Invalid creative preview status: " + strSubstring, null, 6);
                objA = a(this, true, (String) null, activity2, false, (Continuation) nk0Var2, 10);
                if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = p005kotlin.Unit.INSTANCE;
                }
                if (objA == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    return objA;
                }
                return p005kotlin.Unit.INSTANCE;
            case 49:
                activity2 = activity;
                nk0Var2 = nk0Var;
                if (str.equals("1")) {
                    Object objC = c(nk0Var2);
                    return objC == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objC : p005kotlin.Unit.INSTANCE;
                }
                String strSubstring2 = str.substring(0, Math.min(50, str.length()));
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                xs3.a("Invalid creative preview status: " + strSubstring2, null, 6);
                objA = a(this, true, (String) null, activity2, false, (Continuation) nk0Var2, 10);
                if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = p005kotlin.Unit.INSTANCE;
                }
                if (objA == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    return objA;
                }
                return p005kotlin.Unit.INSTANCE;
            case 50:
                if (!str.equals("2")) {
                    break;
                } else {
                    Object objA3 = a(this, false, "There was no creative pushed from DFP to the device.", activity, true, (Continuation) nk0Var, 1);
                    if (objA3 != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        objA3 = p005kotlin.Unit.INSTANCE;
                    }
                    return objA3 == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA3 : p005kotlin.Unit.INSTANCE;
                }
            default:
                activity2 = activity;
                nk0Var2 = nk0Var;
                String strSubstring3 = str.substring(0, Math.min(50, str.length()));
                Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                xs3.a("Invalid creative preview status: " + strSubstring3, null, 6);
                objA = a(this, true, (String) null, activity2, false, (Continuation) nk0Var2, 10);
                if (objA != IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objA = p005kotlin.Unit.INSTANCE;
                }
                if (objA == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    return objA;
                }
                return p005kotlin.Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0165, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext(r4, r5, r2) == r3) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.app.Activity r18, p005kotlin.coroutines.Continuation r19) {
        /*
            Method dump skipped, instruction units count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ok0.a(android.app.Activity, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x021a A[Catch: all -> 0x023a, TryCatch #4 {all -> 0x023a, blocks: (B:91:0x0204, B:93:0x020b, B:95:0x020f, B:97:0x0213, B:98:0x0216, B:100:0x021a, B:102:0x021e, B:104:0x0222, B:105:0x0223, B:106:0x0228, B:107:0x0229, B:108:0x0230, B:109:0x0231, B:110:0x0238, B:111:0x0239), top: B:123:0x0204 }] */
    /* JADX WARN: Code duplicated, block: B:102:0x021e A[Catch: all -> 0x023a, TryCatch #4 {all -> 0x023a, blocks: (B:91:0x0204, B:93:0x020b, B:95:0x020f, B:97:0x0213, B:98:0x0216, B:100:0x021a, B:102:0x021e, B:104:0x0222, B:105:0x0223, B:106:0x0228, B:107:0x0229, B:108:0x0230, B:109:0x0231, B:110:0x0238, B:111:0x0239), top: B:123:0x0204 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0222 A[Catch: all -> 0x023a, TryCatch #4 {all -> 0x023a, blocks: (B:91:0x0204, B:93:0x020b, B:95:0x020f, B:97:0x0213, B:98:0x0216, B:100:0x021a, B:102:0x021e, B:104:0x0222, B:105:0x0223, B:106:0x0228, B:107:0x0229, B:108:0x0230, B:109:0x0231, B:110:0x0238, B:111:0x0239), top: B:123:0x0204 }] */
    /* JADX WARN: Code duplicated, block: B:105:0x0223 A[Catch: all -> 0x023a, TryCatch #4 {all -> 0x023a, blocks: (B:91:0x0204, B:93:0x020b, B:95:0x020f, B:97:0x0213, B:98:0x0216, B:100:0x021a, B:102:0x021e, B:104:0x0222, B:105:0x0223, B:106:0x0228, B:107:0x0229, B:108:0x0230, B:109:0x0231, B:110:0x0238, B:111:0x0239), top: B:123:0x0204 }] */
    /* JADX WARN: Code duplicated, block: B:107:0x0229 A[Catch: all -> 0x023a, TryCatch #4 {all -> 0x023a, blocks: (B:91:0x0204, B:93:0x020b, B:95:0x020f, B:97:0x0213, B:98:0x0216, B:100:0x021a, B:102:0x021e, B:104:0x0222, B:105:0x0223, B:106:0x0228, B:107:0x0229, B:108:0x0230, B:109:0x0231, B:110:0x0238, B:111:0x0239), top: B:123:0x0204 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x0231 A[Catch: all -> 0x023a, TryCatch #4 {all -> 0x023a, blocks: (B:91:0x0204, B:93:0x020b, B:95:0x020f, B:97:0x0213, B:98:0x0216, B:100:0x021a, B:102:0x021e, B:104:0x0222, B:105:0x0223, B:106:0x0228, B:107:0x0229, B:108:0x0230, B:109:0x0231, B:110:0x0238, B:111:0x0239), top: B:123:0x0204 }] */
    /* JADX WARN: Code duplicated, block: B:111:0x0239 A[Catch: all -> 0x023a, TRY_LEAVE, TryCatch #4 {all -> 0x023a, blocks: (B:91:0x0204, B:93:0x020b, B:95:0x020f, B:97:0x0213, B:98:0x0216, B:100:0x021a, B:102:0x021e, B:104:0x0222, B:105:0x0223, B:106:0x0228, B:107:0x0229, B:108:0x0230, B:109:0x0231, B:110:0x0238, B:111:0x0239), top: B:123:0x0204 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x013d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0146 A[Catch: all -> 0x01d8, TryCatch #2 {all -> 0x01d8, blocks: (B:70:0x01cf, B:80:0x01e8, B:81:0x01ef, B:83:0x01f4, B:27:0x007c, B:43:0x0140, B:45:0x0146, B:46:0x014a), top: B:120:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:46:0x014a A[Catch: all -> 0x01d8, TRY_LEAVE, TryCatch #2 {all -> 0x01d8, blocks: (B:70:0x01cf, B:80:0x01e8, B:81:0x01ef, B:83:0x01f4, B:27:0x007c, B:43:0x0140, B:45:0x0146, B:46:0x014a), top: B:120:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0159 A[Catch: all -> 0x0047, TryCatch #1 {all -> 0x0047, blocks: (B:15:0x0042, B:47:0x0155, B:49:0x0159, B:51:0x0187, B:56:0x0193, B:78:0x01de), top: B:120:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0187 A[Catch: all -> 0x0047, TryCatch #1 {all -> 0x0047, blocks: (B:15:0x0042, B:47:0x0155, B:49:0x0159, B:51:0x0187, B:56:0x0193, B:78:0x01de), top: B:120:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0192  */
    /* JADX WARN: Code duplicated, block: B:59:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:62:0x01b2 A[Catch: all -> 0x01dc, TryCatch #6 {all -> 0x01dc, blocks: (B:60:0x01ae, B:62:0x01b2, B:66:0x01b8), top: B:126:0x01ae }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:78:0x01de A[Catch: all -> 0x0047, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0047, blocks: (B:15:0x0042, B:47:0x0155, B:49:0x0159, B:51:0x0187, B:56:0x0193, B:78:0x01de), top: B:120:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:83:0x01f4 A[Catch: all -> 0x01d8, TRY_LEAVE, TryCatch #2 {all -> 0x01d8, blocks: (B:70:0x01cf, B:80:0x01e8, B:81:0x01ef, B:83:0x01f4, B:27:0x007c, B:43:0x0140, B:45:0x0146, B:46:0x014a), top: B:120:0x002e }] */
    /* JADX WARN: Code duplicated, block: B:93:0x020b A[Catch: all -> 0x023a, TryCatch #4 {all -> 0x023a, blocks: (B:91:0x0204, B:93:0x020b, B:95:0x020f, B:97:0x0213, B:98:0x0216, B:100:0x021a, B:102:0x021e, B:104:0x0222, B:105:0x0223, B:106:0x0228, B:107:0x0229, B:108:0x0230, B:109:0x0231, B:110:0x0238, B:111:0x0239), top: B:123:0x0204 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x020f A[Catch: all -> 0x023a, TryCatch #4 {all -> 0x023a, blocks: (B:91:0x0204, B:93:0x020b, B:95:0x020f, B:97:0x0213, B:98:0x0216, B:100:0x021a, B:102:0x021e, B:104:0x0222, B:105:0x0223, B:106:0x0228, B:107:0x0229, B:108:0x0230, B:109:0x0231, B:110:0x0238, B:111:0x0239), top: B:123:0x0204 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r15v7, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v18, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v2, types: [ads_mobile_sdk.rr3, java.io.Closeable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    public final Object a(Continuation continuation) {
        pj0 pj0Var;
        ?? A;
        ?? r15;
        ?? r3;
        i01 j01Var;
        e01 e01Var;
        e81 e81Var;
        ok0 ok0Var;
        ?? r9;
        ?? r4;
        ok0 ok0Var2;
        ?? r5;
        v01 v01Var;
        p53 p53Var;
        String strA;
        ?? r13;
        if1 if1Var;
        ?? r6;
        ?? r7;
        ?? r8;
        if1 if1Var2;
        String str;
        ?? r10;
        String str2;
        if (continuation instanceof pj0) {
            pj0Var = (pj0) continuation;
            int i = pj0Var.i;
            if ((i & Integer.MIN_VALUE) != 0) {
                pj0Var.i = i - Integer.MIN_VALUE;
            } else {
                pj0Var = new pj0(this, continuation);
            }
        } else {
            pj0Var = new pj0(this, continuation);
        }
        pj0 pj0Var2 = pj0Var;
        Object objA = pj0Var2.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r11 = pj0Var2.i;
        String str3 = "";
        try {
            try {
                if (r11 == 0) {
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    s11 s11Var = s11.CUI_NAME_CREATIVE_PREVIEW_LINKING;
                    WeakHashMap weakHashMap = hs3.a;
                    A = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                    try {
                        e01Var = this.i;
                        e81Var = new e81();
                        ex0 ex0Var = this.f;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:drx_debug:in_app_preview_status_url", C3510b4.i.W);
                        Intrinsics.checkNotNullParameter("https://www.google.com/dfp/inAppPreview", "defaultValue");
                        String str4 = (String) ex0Var.a("gads:drx_debug:in_app_preview_status_url", "https://www.google.com/dfp/inAppPreview", yr.o);
                        pj0Var2.a = this;
                        pj0Var2.b = A;
                        pj0Var2.c = A;
                        pj0Var2.d = e81Var;
                        pj0Var2.e = e01Var;
                        pj0Var2.i = 1;
                        String str5 = this.l;
                        if1 if1Var3 = this.j;
                        if1Var3.getClass();
                        objA = if1.a(if1Var3, str4, str5, null, pj0Var2);
                        if (objA != coroutine_suspended) {
                            ok0Var = this;
                            ?? r12 = A;
                            r15 = r12;
                            r9 = r12;
                            String string = ((Uri) objA).toString();
                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                            f81 f81VarA = e81Var.b(string).a();
                            ex0 ex0Var2 = ok0Var.f;
                            ex0Var2.getClass();
                            Duration.Companion companion = Duration.INSTANCE;
                            long duration = DurationKt.toDuration(5, DurationUnit.SECONDS);
                            Intrinsics.checkNotNullParameter("gads:drx_debug:timeout_ms", C3510b4.i.W);
                            Duration durationM4365boximpl = Duration.m4365boximpl(((Duration) ex0Var2.a("gads:drx_debug:timeout_ms", Duration.m4365boximpl(duration), yr.j)).getRawValue());
                            pj0Var2.a = ok0Var;
                            pj0Var2.b = r15;
                            pj0Var2.c = r9;
                            pj0Var2.d = null;
                            pj0Var2.e = null;
                            pj0Var2.i = 2;
                            objA = e01.a(e01Var, f81VarA, durationM4365boximpl, false, (Continuation) pj0Var2, 28);
                            if (objA != coroutine_suspended) {
                                r4 = r9;
                                ok0Var2 = ok0Var;
                                r5 = r15;
                                v01Var = (v01) objA;
                                if (v01Var instanceof i01) {
                                    j01Var = (i01) v01Var;
                                    r3 = r4;
                                } else {
                                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                    p53Var = ((h81) ((q01) v01Var).b).d;
                                    if (p53Var != null) {
                                        JsonObject jsonObject = (JsonObject) new Gson().fromJson(p53.a(p53Var), JsonObject.class);
                                        ds1 ds1Var = ds1.a;
                                        ok0Var2.h.g.set(ds1.a(jsonObject, "gct", ""));
                                        strA = ds1.a(jsonObject, "status", "");
                                        if (Intrinsics.areEqual(strA, "0")) {
                                            r13 = 1;
                                        } else {
                                            r13 = 1;
                                        }
                                        if1Var = ok0Var2.j;
                                        pj0Var2.a = ok0Var2;
                                        pj0Var2.b = r5;
                                        pj0Var2.c = r4;
                                        pj0Var2.d = strA;
                                        pj0Var2.f = r13;
                                        pj0Var2.i = 3;
                                        if1Var.getClass();
                                        if (if1.a(if1Var, (boolean) r13, pj0Var2) != coroutine_suspended) {
                                            r6 = r4;
                                            r7 = r13;
                                            r8 = r5;
                                            if1Var2 = ok0Var2.j;
                                            if (r7 != 0) {
                                                str3 = str2;
                                            }
                                            pj0Var2.a = r8;
                                            pj0Var2.b = r6;
                                            pj0Var2.c = strA;
                                            pj0Var2.d = null;
                                            pj0Var2.i = 4;
                                            if1Var2.getClass();
                                            if (if1.a(if1Var2, str3, pj0Var2) != coroutine_suspended) {
                                                str = strA;
                                                r10 = r6;
                                                q01 q01Var = new q01(str);
                                                CloseableKt.closeFinally(r10, null);
                                                return q01Var;
                                            }
                                        }
                                    } else {
                                        j01Var = new m01("Null response body when fetching creative preview token", kk1.INTERNAL_ERROR);
                                        r3 = r4;
                                    }
                                }
                            }
                        }
                        return coroutine_suspended;
                    } catch (Throwable th) {
                        th = th;
                        r15 = A;
                        r15.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            r15.a(th);
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
                    }
                }
                if (r11 == 1) {
                    e01Var = pj0Var2.e;
                    e81Var = (e81) pj0Var2.d;
                    A = (Closeable) pj0Var2.c;
                    r15 = (rr3) pj0Var2.b;
                    ok0 ok0Var3 = (ok0) pj0Var2.a;
                    try {
                        p005kotlin.ResultKt.throwOnFailure(objA);
                        ok0Var = ok0Var3;
                        r9 = A;
                        r15 = r15;
                        try {
                            String string2 = ((Uri) objA).toString();
                            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                            f81 f81VarA2 = e81Var.b(string2).a();
                            ex0 ex0Var3 = ok0Var.f;
                            ex0Var3.getClass();
                            Duration.Companion companion2 = Duration.INSTANCE;
                            long duration2 = DurationKt.toDuration(5, DurationUnit.SECONDS);
                            Intrinsics.checkNotNullParameter("gads:drx_debug:timeout_ms", C3510b4.i.W);
                            Duration durationM4365boximpl2 = Duration.m4365boximpl(((Duration) ex0Var3.a("gads:drx_debug:timeout_ms", Duration.m4365boximpl(duration2), yr.j)).getRawValue());
                            pj0Var2.a = ok0Var;
                            pj0Var2.b = r15;
                            pj0Var2.c = r9;
                            pj0Var2.d = null;
                            pj0Var2.e = null;
                            pj0Var2.i = 2;
                            objA = e01.a(e01Var, f81VarA2, durationM4365boximpl2, false, (Continuation) pj0Var2, 28);
                            if (objA != coroutine_suspended) {
                                r4 = r9;
                                ok0Var2 = ok0Var;
                                r5 = r15;
                                v01Var = (v01) objA;
                                if (v01Var instanceof i01) {
                                    j01Var = (i01) v01Var;
                                    r3 = r4;
                                } else {
                                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                                    p53Var = ((h81) ((q01) v01Var).b).d;
                                    if (p53Var != null) {
                                        JsonObject jsonObject2 = (JsonObject) new Gson().fromJson(p53.a(p53Var), JsonObject.class);
                                        ds1 ds1Var2 = ds1.a;
                                        ok0Var2.h.g.set(ds1.a(jsonObject2, "gct", ""));
                                        strA = ds1.a(jsonObject2, "status", "");
                                        if (Intrinsics.areEqual(strA, "0")) {
                                            r13 = 1;
                                        } else {
                                            r13 = 1;
                                        }
                                        if1Var = ok0Var2.j;
                                        pj0Var2.a = ok0Var2;
                                        pj0Var2.b = r5;
                                        pj0Var2.c = r4;
                                        pj0Var2.d = strA;
                                        pj0Var2.f = r13;
                                        pj0Var2.i = 3;
                                        if1Var.getClass();
                                        if (if1.a(if1Var, (boolean) r13, pj0Var2) != coroutine_suspended) {
                                            r6 = r4;
                                            r7 = r13;
                                            r8 = r5;
                                            if1Var2 = ok0Var2.j;
                                            if (r7 != 0) {
                                                str3 = str2;
                                            }
                                            pj0Var2.a = r8;
                                            pj0Var2.b = r6;
                                            pj0Var2.c = strA;
                                            pj0Var2.d = null;
                                            pj0Var2.i = 4;
                                            if1Var2.getClass();
                                            if (if1.a(if1Var2, str3, pj0Var2) != coroutine_suspended) {
                                                str = strA;
                                                r10 = r6;
                                                q01 q01Var2 = new q01(str);
                                                CloseableKt.closeFinally(r10, null);
                                                return q01Var2;
                                            }
                                        }
                                    } else {
                                        j01Var = new m01("Null response body when fetching creative preview token", kk1.INTERNAL_ERROR);
                                        r3 = r4;
                                    }
                                }
                            }
                            return coroutine_suspended;
                        } catch (Throwable th2) {
                            th = th2;
                            A = r9;
                            try {
                                r15.b(th);
                                if (th instanceof v24) {
                                    throw th;
                                }
                                if (!(th instanceof TimeoutCancellationException)) {
                                    r15.a(th);
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
                            } catch (Throwable th3) {
                                try {
                                    throw th3;
                                } catch (Throwable th4) {
                                    CloseableKt.closeFinally(A, th3);
                                    throw th4;
                                }
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        r15.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            r15.a(th);
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
                    }
                }
                if (r11 != 2) {
                    if (r11 == 3) {
                        int i2 = pj0Var2.f;
                        String str6 = (String) pj0Var2.d;
                        Closeable closeable = (Closeable) pj0Var2.c;
                        rr3 rr3Var = (rr3) pj0Var2.b;
                        ok0Var2 = (ok0) pj0Var2.a;
                        try {
                            p005kotlin.ResultKt.throwOnFailure(objA);
                            strA = str6;
                            r8 = rr3Var;
                            r7 = i2;
                            r6 = closeable;
                            try {
                                if1Var2 = ok0Var2.j;
                                if (r7 != 0 && (str2 = ok0Var2.l) != null) {
                                    str3 = str2;
                                }
                                pj0Var2.a = r8;
                                pj0Var2.b = r6;
                                pj0Var2.c = strA;
                                pj0Var2.d = null;
                                pj0Var2.i = 4;
                                if1Var2.getClass();
                                if (if1.a(if1Var2, str3, pj0Var2) != coroutine_suspended) {
                                    str = strA;
                                    r10 = r6;
                                }
                                return coroutine_suspended;
                            } catch (Throwable th6) {
                                th = th6;
                                r11 = r6;
                                j01Var = new j01(th, null, null, 6);
                                r3 = r11;
                                if (j01Var instanceof i01) {
                                    xs3.a(j01Var, false);
                                }
                                CloseableKt.closeFinally(r3, null);
                                return j01Var;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            r11 = closeable;
                            j01Var = new j01(th, null, null, 6);
                            r3 = r11;
                            if (j01Var instanceof i01) {
                                xs3.a(j01Var, false);
                            }
                            CloseableKt.closeFinally(r3, null);
                            return j01Var;
                        }
                    }
                    if (r11 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    str = (String) pj0Var2.c;
                    Closeable closeable2 = pj0Var2.b;
                    p005kotlin.ResultKt.throwOnFailure(objA);
                    r10 = closeable2;
                    q01 q01Var3 = new q01(str);
                    CloseableKt.closeFinally(r10, null);
                    return q01Var3;
                }
                Closeable closeable3 = (Closeable) pj0Var2.c;
                rr3 rr3Var2 = (rr3) pj0Var2.b;
                ok0 ok0Var4 = (ok0) pj0Var2.a;
                p005kotlin.ResultKt.throwOnFailure(objA);
                ok0Var2 = ok0Var4;
                r4 = closeable3;
                r5 = rr3Var2;
                v01Var = (v01) objA;
                if (v01Var instanceof i01) {
                    j01Var = (i01) v01Var;
                    r3 = r4;
                } else {
                    Intrinsics.checkNotNull(v01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<T of com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Companion.returnIfError>");
                    p53Var = ((h81) ((q01) v01Var).b).d;
                    if (p53Var != null) {
                        JsonObject jsonObject3 = (JsonObject) new Gson().fromJson(p53.a(p53Var), JsonObject.class);
                        ds1 ds1Var3 = ds1.a;
                        ok0Var2.h.g.set(ds1.a(jsonObject3, "gct", ""));
                        strA = ds1.a(jsonObject3, "status", "");
                        if (Intrinsics.areEqual(strA, "0") || Intrinsics.areEqual(strA, "2")) {
                            r13 = 1;
                        } else {
                            r13 = 0;
                        }
                        if1Var = ok0Var2.j;
                        pj0Var2.a = ok0Var2;
                        pj0Var2.b = r5;
                        pj0Var2.c = r4;
                        pj0Var2.d = strA;
                        pj0Var2.f = r13;
                        pj0Var2.i = 3;
                        if1Var.getClass();
                        if (if1.a(if1Var, (boolean) r13, pj0Var2) != coroutine_suspended) {
                            r6 = r4;
                            r7 = r13;
                            r8 = r5;
                            if1Var2 = ok0Var2.j;
                            if (r7 != 0) {
                                str3 = str2;
                            }
                            pj0Var2.a = r8;
                            pj0Var2.b = r6;
                            pj0Var2.c = strA;
                            pj0Var2.d = null;
                            pj0Var2.i = 4;
                            if1Var2.getClass();
                            if (if1.a(if1Var2, str3, pj0Var2) != coroutine_suspended) {
                                str = strA;
                                r10 = r6;
                                q01 q01Var4 = new q01(str);
                                CloseableKt.closeFinally(r10, null);
                                return q01Var4;
                            }
                        }
                        return coroutine_suspended;
                    }
                    j01Var = new m01("Null response body when fetching creative preview token", kk1.INTERNAL_ERROR);
                    r3 = r4;
                }
            } catch (Throwable th8) {
                th = th8;
            }
            if (j01Var instanceof i01) {
                xs3.a(j01Var, false);
            }
            CloseableKt.closeFinally(r3, null);
            return j01Var;
        } catch (Throwable th9) {
            th = th9;
            A = r11;
            r15 = C3510b4.i.W;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(boolean z, String str, Activity activity, boolean z2, Continuation continuation) {
        kk0 kk0Var;
        ok0 ok0Var;
        if (continuation instanceof kk0) {
            kk0Var = (kk0) continuation;
            int i = kk0Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                kk0Var.d = i - Integer.MIN_VALUE;
            } else {
                kk0Var = new kk0(this, continuation);
            }
        } else {
            kk0Var = new kk0(this, continuation);
        }
        Object obj = kk0Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = kk0Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            if (activity == null) {
                try {
                    activity = this.e.g();
                } catch (Throwable th) {
                    exception = th;
                    ok0Var = this;
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA = hs3.a();
                    rr3VarA.e().m = false;
                    rr3VarA.a(exception);
                    ok0Var.k.set(false);
                    ((as3) ok0Var.d).a("Failed to show status dialog", exception);
                }
            }
            if (activity == null) {
                xs3.a("No Activity context available for showing status dialog.", null, 6);
                this.k.set(false);
                return p005kotlin.Unit.INSTANCE;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(activity, R.style.Theme.Material.Dialog.Alert);
            builder.setTitle(z ? "Error" : "Info");
            builder.setMessage(str);
            builder.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    ok0.d(this.f$0, dialogInterface);
                }
            });
            if (z2) {
                builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
                builder.setPositiveButton("Learn More", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda4
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        ok0.d(this.f$0, dialogInterface, i3);
                    }
                });
            } else {
                builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
            }
            CoroutineContext coroutineContext = this.a;
            lk0 lk0Var = new lk0(builder, null);
            kk0Var.a = this;
            kk0Var.d = 1;
            if (BuildersKt.withContext(coroutineContext, lk0Var, kk0Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ok0Var = kk0Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
            } catch (Throwable th2) {
                exception = th2;
                Intrinsics.checkNotNullParameter(exception, "exception");
                rr3 rr3VarA2 = hs3.a();
                rr3VarA2.e().m = false;
                rr3VarA2.a(exception);
                ok0Var.k.set(false);
                ((as3) ok0Var.d).a("Failed to show status dialog", exception);
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final String a(String str, boolean z) {
        if (str.length() == 0) {
            return "No debug information";
        }
        Uri uriBuild = new Uri.Builder().encodedQuery(new Regex("\\+").replace(str, "%20")).build();
        o21 o21Var = this.g;
        Intrinsics.checkNotNull(uriBuild);
        String string = StringsKt.trim((CharSequence) CollectionsKt.joinToString$default(o21Var.d(uriBuild).entrySet(), "\n\n", null, null, 0, null, new qj0(this, z), 30, null)).toString();
        return StringsKt.isBlank(string) ? "No debug information" : string;
    }

    public final Object b(Continuation continuation) {
        if1 if1Var = this.j;
        ae1 ae1Var = ae1.DEBUG_MENU;
        OnAdInspectorClosedListener onAdInspectorClosedListener = new OnAdInspectorClosedListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda7
            @Override // com.google.android.libraries.ads.mobile.sdk.common.OnAdInspectorClosedListener
            public final void onAdInspectorClosed(AdInspectorError adInspectorError) {
                ok0.a(this.f$0, adInspectorError);
            }
        };
        if1Var.getClass();
        Object objA = if1.a(if1Var, ae1Var, onAdInspectorClosedListener, continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Continuation continuation) {
        uj0 uj0Var;
        o21 o21Var;
        ok0 ok0Var;
        ok0 ok0Var2;
        if (continuation instanceof uj0) {
            uj0Var = (uj0) continuation;
            int i = uj0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                uj0Var.f = i - Integer.MIN_VALUE;
            } else {
                uj0Var = new uj0(this, continuation);
            }
        } else {
            uj0Var = new uj0(this, continuation);
        }
        Object objA = uj0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = uj0Var.f;
        String str = null;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            o21Var = this.g;
            ex0 ex0Var = this.f;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:drx_debug:debug_device_linking_url", C3510b4.i.W);
            Intrinsics.checkNotNullParameter("https://www.google.com/dfp/linkDevice", "defaultValue");
            String str2 = (String) ex0Var.a("gads:drx_debug:debug_device_linking_url", "https://www.google.com/dfp/linkDevice", yr.o);
            uj0Var.a = this;
            uj0Var.b = o21Var;
            uj0Var.c = this;
            uj0Var.f = 1;
            String str3 = this.l;
            if1 if1Var = this.j;
            if1Var.getClass();
            objA = if1.a(if1Var, str2, str3, null, uj0Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            ok0Var = this;
            ok0Var2 = ok0Var;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ok0Var2 = uj0Var.c;
            o21Var = uj0Var.b;
            ok0Var = uj0Var.a;
            p005kotlin.ResultKt.throwOnFailure(objA);
        }
        ok0Var2.getClass();
        Intent intent = new Intent("android.intent.action.VIEW", (Uri) objA);
        Bundle bundle = new Bundle();
        bundle.putBinder(CustomTabsIntent.EXTRA_SESSION, null);
        String str4 = ok0Var2.p;
        if (str4 != null) {
            str = str4;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("packageName");
        }
        bundle.putString("com.android.browser.application_id", str);
        intent.putExtras(bundle);
        o21Var.a(intent);
        ok0Var.k.set(false);
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x0220 A[Catch: all -> 0x0227, TRY_LEAVE, TryCatch #3 {all -> 0x0227, blocks: (B:108:0x021a, B:110:0x0220, B:107:0x01fd), top: B:150:0x01fd }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0238 A[Catch: all -> 0x0267, TryCatch #2 {all -> 0x0267, blocks: (B:119:0x0231, B:121:0x0238, B:123:0x023c, B:125:0x0240, B:126:0x0243, B:128:0x0247, B:130:0x024b, B:132:0x024f, B:133:0x0250, B:134:0x0255, B:135:0x0256, B:136:0x025d, B:137:0x025e, B:138:0x0265, B:139:0x0266), top: B:149:0x0231 }] */
    /* JADX WARN: Code duplicated, block: B:128:0x0247 A[Catch: all -> 0x0267, TryCatch #2 {all -> 0x0267, blocks: (B:119:0x0231, B:121:0x0238, B:123:0x023c, B:125:0x0240, B:126:0x0243, B:128:0x0247, B:130:0x024b, B:132:0x024f, B:133:0x0250, B:134:0x0255, B:135:0x0256, B:136:0x025d, B:137:0x025e, B:138:0x0265, B:139:0x0266), top: B:149:0x0231 }] */
    /* JADX WARN: Code duplicated, block: B:130:0x024b A[Catch: all -> 0x0267, TryCatch #2 {all -> 0x0267, blocks: (B:119:0x0231, B:121:0x0238, B:123:0x023c, B:125:0x0240, B:126:0x0243, B:128:0x0247, B:130:0x024b, B:132:0x024f, B:133:0x0250, B:134:0x0255, B:135:0x0256, B:136:0x025d, B:137:0x025e, B:138:0x0265, B:139:0x0266), top: B:149:0x0231 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x024f A[Catch: all -> 0x0267, TryCatch #2 {all -> 0x0267, blocks: (B:119:0x0231, B:121:0x0238, B:123:0x023c, B:125:0x0240, B:126:0x0243, B:128:0x0247, B:130:0x024b, B:132:0x024f, B:133:0x0250, B:134:0x0255, B:135:0x0256, B:136:0x025d, B:137:0x025e, B:138:0x0265, B:139:0x0266), top: B:149:0x0231 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0250 A[Catch: all -> 0x0267, TryCatch #2 {all -> 0x0267, blocks: (B:119:0x0231, B:121:0x0238, B:123:0x023c, B:125:0x0240, B:126:0x0243, B:128:0x0247, B:130:0x024b, B:132:0x024f, B:133:0x0250, B:134:0x0255, B:135:0x0256, B:136:0x025d, B:137:0x025e, B:138:0x0265, B:139:0x0266), top: B:149:0x0231 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0256 A[Catch: all -> 0x0267, TryCatch #2 {all -> 0x0267, blocks: (B:119:0x0231, B:121:0x0238, B:123:0x023c, B:125:0x0240, B:126:0x0243, B:128:0x0247, B:130:0x024b, B:132:0x024f, B:133:0x0250, B:134:0x0255, B:135:0x0256, B:136:0x025d, B:137:0x025e, B:138:0x0265, B:139:0x0266), top: B:149:0x0231 }] */
    /* JADX WARN: Code duplicated, block: B:137:0x025e A[Catch: all -> 0x0267, TryCatch #2 {all -> 0x0267, blocks: (B:119:0x0231, B:121:0x0238, B:123:0x023c, B:125:0x0240, B:126:0x0243, B:128:0x0247, B:130:0x024b, B:132:0x024f, B:133:0x0250, B:134:0x0255, B:135:0x0256, B:136:0x025d, B:137:0x025e, B:138:0x0265, B:139:0x0266), top: B:149:0x0231 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0266 A[Catch: all -> 0x0267, TRY_LEAVE, TryCatch #2 {all -> 0x0267, blocks: (B:119:0x0231, B:121:0x0238, B:123:0x023c, B:125:0x0240, B:126:0x0243, B:128:0x0247, B:130:0x024b, B:132:0x024f, B:133:0x0250, B:134:0x0255, B:135:0x0256, B:136:0x025d, B:137:0x025e, B:138:0x0265, B:139:0x0266), top: B:149:0x0231 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x0122 A[Catch: all -> 0x0129, TRY_LEAVE, TryCatch #5 {all -> 0x0129, blocks: (B:49:0x011c, B:51:0x0122, B:48:0x00ff), top: B:153:0x00ff }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0139 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:58:0x0132, B:60:0x0139, B:62:0x013d, B:64:0x0141, B:65:0x0144, B:67:0x0148, B:69:0x014c, B:71:0x0150, B:72:0x0151, B:73:0x0156, B:74:0x0157, B:75:0x015e, B:76:0x015f, B:77:0x0166, B:78:0x0167), top: B:152:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0148 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:58:0x0132, B:60:0x0139, B:62:0x013d, B:64:0x0141, B:65:0x0144, B:67:0x0148, B:69:0x014c, B:71:0x0150, B:72:0x0151, B:73:0x0156, B:74:0x0157, B:75:0x015e, B:76:0x015f, B:77:0x0166, B:78:0x0167), top: B:152:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x014c A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:58:0x0132, B:60:0x0139, B:62:0x013d, B:64:0x0141, B:65:0x0144, B:67:0x0148, B:69:0x014c, B:71:0x0150, B:72:0x0151, B:73:0x0156, B:74:0x0157, B:75:0x015e, B:76:0x015f, B:77:0x0166, B:78:0x0167), top: B:152:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0150 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:58:0x0132, B:60:0x0139, B:62:0x013d, B:64:0x0141, B:65:0x0144, B:67:0x0148, B:69:0x014c, B:71:0x0150, B:72:0x0151, B:73:0x0156, B:74:0x0157, B:75:0x015e, B:76:0x015f, B:77:0x0166, B:78:0x0167), top: B:152:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0151 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:58:0x0132, B:60:0x0139, B:62:0x013d, B:64:0x0141, B:65:0x0144, B:67:0x0148, B:69:0x014c, B:71:0x0150, B:72:0x0151, B:73:0x0156, B:74:0x0157, B:75:0x015e, B:76:0x015f, B:77:0x0166, B:78:0x0167), top: B:152:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0157 A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:58:0x0132, B:60:0x0139, B:62:0x013d, B:64:0x0141, B:65:0x0144, B:67:0x0148, B:69:0x014c, B:71:0x0150, B:72:0x0151, B:73:0x0156, B:74:0x0157, B:75:0x015e, B:76:0x015f, B:77:0x0166, B:78:0x0167), top: B:152:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x015f A[Catch: all -> 0x0168, TryCatch #4 {all -> 0x0168, blocks: (B:58:0x0132, B:60:0x0139, B:62:0x013d, B:64:0x0141, B:65:0x0144, B:67:0x0148, B:69:0x014c, B:71:0x0150, B:72:0x0151, B:73:0x0156, B:74:0x0157, B:75:0x015e, B:76:0x015f, B:77:0x0166, B:78:0x0167), top: B:152:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x0167 A[Catch: all -> 0x0168, TRY_LEAVE, TryCatch #4 {all -> 0x0168, blocks: (B:58:0x0132, B:60:0x0139, B:62:0x013d, B:64:0x0141, B:65:0x0144, B:67:0x0148, B:69:0x014c, B:71:0x0150, B:72:0x0151, B:73:0x0156, B:74:0x0157, B:75:0x015e, B:76:0x015f, B:77:0x0166, B:78:0x0167), top: B:152:0x0132 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object d(Continuation continuation) {
        vj0 vj0Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        ok0 ok0Var;
        rr3 rr3VarA2;
        rr3 rr3Var2;
        ok0 ok0Var2;
        Object obj;
        Object obj2;
        if (continuation instanceof vj0) {
            vj0Var = (vj0) continuation;
            int i = vj0Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                vj0Var.f = i - Integer.MIN_VALUE;
            } else {
                vj0Var = new vj0(this, continuation);
            }
        } else {
            vj0Var = new vj0(this, continuation);
        }
        Object obj3 = vj0Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = vj0Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj3);
            g83 g83Var = this.c;
            s11 s11Var = s11.CUI_NAME_DEBUG_MENU_AD_INFO;
            ks3 ks3Var = this.o;
            List listEmptyList = CollectionsKt.emptyList();
            if (hs3.b().a == null) {
                rr3VarA2 = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                try {
                    Activity activityG = this.e.g();
                    if (activityG == null) {
                        xs3.a("No Activity context available for displaying the ad info dialog.", null, 6);
                        this.k.set(false);
                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(rr3VarA2, null);
                        return unit;
                    }
                    String str = this.m;
                    if (str == null) {
                        str = "";
                    }
                    final String strA = a(str, false);
                    String str2 = this.m;
                    if (str2 == null) {
                        str2 = "";
                    }
                    try {
                        AlertDialog.Builder negativeButton = new AlertDialog.Builder(activityG, R.style.Theme.Material.Dialog.Alert).setMessage(a(str2, true)).setTitle("Ad Information").setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda12
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                ok0.a(this.f$0, dialogInterface);
                            }
                        }).setNegativeButton("Close", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda13
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                ok0.a(this.f$0, dialogInterface, i3);
                            }
                        });
                        if (this.f.M0()) {
                            negativeButton.setNeutralButton("Copy", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda1
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i3) {
                                    ok0.a(this.f$0, strA, dialogInterface, i3);
                                }
                            });
                        }
                        negativeButton.setPositiveButton("Share", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda2
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                ok0.b(this.f$0, strA, dialogInterface, i3);
                            }
                        });
                        CoroutineContext coroutineContext = this.a;
                        xj0 xj0Var = new xj0(negativeButton, null);
                        vj0Var.a = this;
                        vj0Var.b = rr3VarA2;
                        vj0Var.c = rr3VarA2;
                        vj0Var.f = 1;
                        if (BuildersKt.withContext(coroutineContext, xj0Var, vj0Var) != coroutine_suspended) {
                            rr3Var2 = rr3VarA2;
                            obj = p005kotlin.Unit.INSTANCE;
                            if (obj instanceof i01) {
                                xs3.a((i01) obj, false);
                            }
                            CloseableKt.closeFinally(rr3Var2, null);
                        }
                    } catch (Throwable th) {
                        exception = th;
                        ok0Var2 = this;
                        rr3Var2 = rr3VarA2;
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        rr3 rr3VarA3 = hs3.a();
                        rr3VarA3.e().m = false;
                        rr3VarA3.a(exception);
                        ok0Var2.k.set(false);
                        ((as3) ok0Var2.d).a("Failed to show ad info dialog", exception);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    rr3Var2 = rr3VarA2;
                    rr3VarA2.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                        rr3VarA2.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            } else {
                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                try {
                    Activity activityG2 = this.e.g();
                    if (activityG2 == null) {
                        xs3.a("No Activity context available for displaying the ad info dialog.", null, 6);
                        this.k.set(false);
                        p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                        CloseableKt.closeFinally(rr3VarA, null);
                        return unit2;
                    }
                    String str3 = this.m;
                    if (str3 == null) {
                        str3 = "";
                    }
                    final String strA2 = a(str3, false);
                    String str4 = this.m;
                    if (str4 == null) {
                        str4 = "";
                    }
                    try {
                        AlertDialog.Builder negativeButton2 = new AlertDialog.Builder(activityG2, R.style.Theme.Material.Dialog.Alert).setMessage(a(str4, true)).setTitle("Ad Information").setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda12
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                ok0.a(this.f$0, dialogInterface);
                            }
                        }).setNegativeButton("Close", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda13
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                ok0.a(this.f$0, dialogInterface, i3);
                            }
                        });
                        if (this.f.M0()) {
                            negativeButton2.setNeutralButton("Copy", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda1
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i3) {
                                    ok0.a(this.f$0, strA2, dialogInterface, i3);
                                }
                            });
                        }
                        negativeButton2.setPositiveButton("Share", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda2
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                ok0.b(this.f$0, strA2, dialogInterface, i3);
                            }
                        });
                        CoroutineContext coroutineContext2 = this.a;
                        xj0 xj0Var2 = new xj0(negativeButton2, null);
                        vj0Var.a = this;
                        vj0Var.b = rr3VarA;
                        vj0Var.c = rr3VarA;
                        vj0Var.f = 2;
                        if (BuildersKt.withContext(coroutineContext2, xj0Var2, vj0Var) != coroutine_suspended) {
                            rr3Var = rr3VarA;
                            obj2 = p005kotlin.Unit.INSTANCE;
                            if (obj2 instanceof i01) {
                                xs3.a((i01) obj2, false);
                            }
                            CloseableKt.closeFinally(rr3Var, null);
                        }
                    } catch (Throwable th3) {
                        exception = th3;
                        ok0Var = this;
                        rr3Var = rr3VarA;
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        rr3 rr3VarA4 = hs3.a();
                        rr3VarA4.e().m = false;
                        rr3VarA4.a(exception);
                        ok0Var.k.set(false);
                        ((as3) ok0Var.d).a("Failed to show ad info dialog", exception);
                    }
                } catch (Throwable th4) {
                    th = th4;
                    rr3Var = rr3VarA;
                    rr3VarA.b(th);
                    if (!(th instanceof v24)) {
                        throw th;
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        rr3VarA.a(th);
                    }
                    if (!(th instanceof TimeoutCancellationException)) {
                        throw new i21(th);
                    }
                    if (!(th instanceof CancellationException)) {
                        throw new wz0(th);
                    }
                    if (th instanceof w01) {
                        throw th;
                    }
                    throw new b01(th);
                }
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            rr3Var2 = vj0Var.c;
            rr3VarA2 = vj0Var.b;
            ok0Var2 = vj0Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
            } catch (Throwable th5) {
                exception = th5;
                try {
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA5 = hs3.a();
                    rr3VarA5.e().m = false;
                    rr3VarA5.a(exception);
                    ok0Var2.k.set(false);
                    ((as3) ok0Var2.d).a("Failed to show ad info dialog", exception);
                } catch (Throwable th6) {
                    th = th6;
                    try {
                        rr3VarA2.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            rr3VarA2.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            throw new i21(th);
                        }
                        if (!(th instanceof CancellationException)) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } catch (Throwable th7) {
                        try {
                            throw th7;
                        } catch (Throwable th8) {
                            CloseableKt.closeFinally(rr3Var2, th7);
                            throw th8;
                        }
                    }
                }
            }
            obj = p005kotlin.Unit.INSTANCE;
            if (obj instanceof i01) {
                xs3.a((i01) obj, false);
            }
            CloseableKt.closeFinally(rr3Var2, null);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rr3Var = vj0Var.c;
            rr3VarA = vj0Var.b;
            ok0Var = vj0Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj3);
            } catch (Throwable th9) {
                exception = th9;
                try {
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    rr3 rr3VarA6 = hs3.a();
                    rr3VarA6.e().m = false;
                    rr3VarA6.a(exception);
                    ok0Var.k.set(false);
                    ((as3) ok0Var.d).a("Failed to show ad info dialog", exception);
                } catch (Throwable th10) {
                    th = th10;
                    try {
                        rr3VarA.b(th);
                        if (!(th instanceof v24)) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3VarA.a(th);
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            throw new i21(th);
                        }
                        if (!(th instanceof CancellationException)) {
                            throw new wz0(th);
                        }
                        if (th instanceof w01) {
                            throw th;
                        }
                        throw new b01(th);
                    } catch (Throwable th11) {
                        try {
                            throw th11;
                        } catch (Throwable th12) {
                            CloseableKt.closeFinally(rr3Var, th11);
                            throw th12;
                        }
                    }
                }
            }
            obj2 = p005kotlin.Unit.INSTANCE;
            if (obj2 instanceof i01) {
                xs3.a((i01) obj2, false);
            }
            CloseableKt.closeFinally(rr3Var, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:111:0x02e1 A[Catch: all -> 0x0108, TRY_LEAVE, TryCatch #1 {all -> 0x0108, blocks: (B:109:0x02db, B:111:0x02e1, B:38:0x00ec, B:41:0x0103, B:77:0x01de), top: B:243:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:124:0x0301 A[Catch: all -> 0x0330, TryCatch #4 {all -> 0x0330, blocks: (B:122:0x02fa, B:124:0x0301, B:126:0x0305, B:128:0x0309, B:129:0x030c, B:131:0x0310, B:133:0x0314, B:135:0x0318, B:136:0x0319, B:137:0x031e, B:138:0x031f, B:139:0x0326, B:140:0x0327, B:141:0x032e, B:142:0x032f), top: B:248:0x02fa }] */
    /* JADX WARN: Code duplicated, block: B:126:0x0305 A[Catch: all -> 0x0330, TryCatch #4 {all -> 0x0330, blocks: (B:122:0x02fa, B:124:0x0301, B:126:0x0305, B:128:0x0309, B:129:0x030c, B:131:0x0310, B:133:0x0314, B:135:0x0318, B:136:0x0319, B:137:0x031e, B:138:0x031f, B:139:0x0326, B:140:0x0327, B:141:0x032e, B:142:0x032f), top: B:248:0x02fa }] */
    /* JADX WARN: Code duplicated, block: B:131:0x0310 A[Catch: all -> 0x0330, TryCatch #4 {all -> 0x0330, blocks: (B:122:0x02fa, B:124:0x0301, B:126:0x0305, B:128:0x0309, B:129:0x030c, B:131:0x0310, B:133:0x0314, B:135:0x0318, B:136:0x0319, B:137:0x031e, B:138:0x031f, B:139:0x0326, B:140:0x0327, B:141:0x032e, B:142:0x032f), top: B:248:0x02fa }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0314 A[Catch: all -> 0x0330, TryCatch #4 {all -> 0x0330, blocks: (B:122:0x02fa, B:124:0x0301, B:126:0x0305, B:128:0x0309, B:129:0x030c, B:131:0x0310, B:133:0x0314, B:135:0x0318, B:136:0x0319, B:137:0x031e, B:138:0x031f, B:139:0x0326, B:140:0x0327, B:141:0x032e, B:142:0x032f), top: B:248:0x02fa }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0318 A[Catch: all -> 0x0330, TryCatch #4 {all -> 0x0330, blocks: (B:122:0x02fa, B:124:0x0301, B:126:0x0305, B:128:0x0309, B:129:0x030c, B:131:0x0310, B:133:0x0314, B:135:0x0318, B:136:0x0319, B:137:0x031e, B:138:0x031f, B:139:0x0326, B:140:0x0327, B:141:0x032e, B:142:0x032f), top: B:248:0x02fa }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0319 A[Catch: all -> 0x0330, TryCatch #4 {all -> 0x0330, blocks: (B:122:0x02fa, B:124:0x0301, B:126:0x0305, B:128:0x0309, B:129:0x030c, B:131:0x0310, B:133:0x0314, B:135:0x0318, B:136:0x0319, B:137:0x031e, B:138:0x031f, B:139:0x0326, B:140:0x0327, B:141:0x032e, B:142:0x032f), top: B:248:0x02fa }] */
    /* JADX WARN: Code duplicated, block: B:138:0x031f A[Catch: all -> 0x0330, TryCatch #4 {all -> 0x0330, blocks: (B:122:0x02fa, B:124:0x0301, B:126:0x0305, B:128:0x0309, B:129:0x030c, B:131:0x0310, B:133:0x0314, B:135:0x0318, B:136:0x0319, B:137:0x031e, B:138:0x031f, B:139:0x0326, B:140:0x0327, B:141:0x032e, B:142:0x032f), top: B:248:0x02fa }] */
    /* JADX WARN: Code duplicated, block: B:140:0x0327 A[Catch: all -> 0x0330, TryCatch #4 {all -> 0x0330, blocks: (B:122:0x02fa, B:124:0x0301, B:126:0x0305, B:128:0x0309, B:129:0x030c, B:131:0x0310, B:133:0x0314, B:135:0x0318, B:136:0x0319, B:137:0x031e, B:138:0x031f, B:139:0x0326, B:140:0x0327, B:141:0x032e, B:142:0x032f), top: B:248:0x02fa }] */
    /* JADX WARN: Code duplicated, block: B:142:0x032f A[Catch: all -> 0x0330, TRY_LEAVE, TryCatch #4 {all -> 0x0330, blocks: (B:122:0x02fa, B:124:0x0301, B:126:0x0305, B:128:0x0309, B:129:0x030c, B:131:0x0310, B:133:0x0314, B:135:0x0318, B:136:0x0319, B:137:0x031e, B:138:0x031f, B:139:0x0326, B:140:0x0327, B:141:0x032e, B:142:0x032f), top: B:248:0x02fa }] */
    /* JADX WARN: Code duplicated, block: B:161:0x0381 A[Catch: all -> 0x00bb, TryCatch #17 {all -> 0x00bb, blocks: (B:203:0x04c1, B:205:0x04c7, B:18:0x0069, B:22:0x0081, B:170:0x03bf, B:25:0x0095, B:165:0x03a2, B:167:0x03aa, B:176:0x03cf, B:28:0x00b1, B:159:0x0379, B:161:0x0381), top: B:243:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:163:0x039f  */
    /* JADX WARN: Code duplicated, block: B:164:0x03a1  */
    /* JADX WARN: Code duplicated, block: B:167:0x03aa A[Catch: all -> 0x00bb, TryCatch #17 {all -> 0x00bb, blocks: (B:203:0x04c1, B:205:0x04c7, B:18:0x0069, B:22:0x0081, B:170:0x03bf, B:25:0x0095, B:165:0x03a2, B:167:0x03aa, B:176:0x03cf, B:28:0x00b1, B:159:0x0379, B:161:0x0381), top: B:243:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:169:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:173:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:174:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:179:0x0412  */
    /* JADX WARN: Code duplicated, block: B:182:0x042d  */
    /* JADX WARN: Code duplicated, block: B:184:0x0430  */
    /* JADX WARN: Code duplicated, block: B:185:0x0431  */
    /* JADX WARN: Code duplicated, block: B:186:0x0434  */
    /* JADX WARN: Code duplicated, block: B:195:0x0496  */
    /* JADX WARN: Code duplicated, block: B:205:0x04c7 A[Catch: all -> 0x00bb, TRY_LEAVE, TryCatch #17 {all -> 0x00bb, blocks: (B:203:0x04c1, B:205:0x04c7, B:18:0x0069, B:22:0x0081, B:170:0x03bf, B:25:0x0095, B:165:0x03a2, B:167:0x03aa, B:176:0x03cf, B:28:0x00b1, B:159:0x0379, B:161:0x0381), top: B:243:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:218:0x04e5 A[Catch: all -> 0x0514, TryCatch #10 {all -> 0x0514, blocks: (B:216:0x04de, B:218:0x04e5, B:220:0x04e9, B:222:0x04ed, B:223:0x04f0, B:225:0x04f4, B:227:0x04f8, B:229:0x04fc, B:230:0x04fd, B:231:0x0502, B:232:0x0503, B:233:0x050a, B:234:0x050b, B:235:0x0512, B:236:0x0513), top: B:259:0x04de }] */
    /* JADX WARN: Code duplicated, block: B:220:0x04e9 A[Catch: all -> 0x0514, TryCatch #10 {all -> 0x0514, blocks: (B:216:0x04de, B:218:0x04e5, B:220:0x04e9, B:222:0x04ed, B:223:0x04f0, B:225:0x04f4, B:227:0x04f8, B:229:0x04fc, B:230:0x04fd, B:231:0x0502, B:232:0x0503, B:233:0x050a, B:234:0x050b, B:235:0x0512, B:236:0x0513), top: B:259:0x04de }] */
    /* JADX WARN: Code duplicated, block: B:225:0x04f4 A[Catch: all -> 0x0514, TryCatch #10 {all -> 0x0514, blocks: (B:216:0x04de, B:218:0x04e5, B:220:0x04e9, B:222:0x04ed, B:223:0x04f0, B:225:0x04f4, B:227:0x04f8, B:229:0x04fc, B:230:0x04fd, B:231:0x0502, B:232:0x0503, B:233:0x050a, B:234:0x050b, B:235:0x0512, B:236:0x0513), top: B:259:0x04de }] */
    /* JADX WARN: Code duplicated, block: B:227:0x04f8 A[Catch: all -> 0x0514, TryCatch #10 {all -> 0x0514, blocks: (B:216:0x04de, B:218:0x04e5, B:220:0x04e9, B:222:0x04ed, B:223:0x04f0, B:225:0x04f4, B:227:0x04f8, B:229:0x04fc, B:230:0x04fd, B:231:0x0502, B:232:0x0503, B:233:0x050a, B:234:0x050b, B:235:0x0512, B:236:0x0513), top: B:259:0x04de }] */
    /* JADX WARN: Code duplicated, block: B:229:0x04fc A[Catch: all -> 0x0514, TryCatch #10 {all -> 0x0514, blocks: (B:216:0x04de, B:218:0x04e5, B:220:0x04e9, B:222:0x04ed, B:223:0x04f0, B:225:0x04f4, B:227:0x04f8, B:229:0x04fc, B:230:0x04fd, B:231:0x0502, B:232:0x0503, B:233:0x050a, B:234:0x050b, B:235:0x0512, B:236:0x0513), top: B:259:0x04de }] */
    /* JADX WARN: Code duplicated, block: B:230:0x04fd A[Catch: all -> 0x0514, TryCatch #10 {all -> 0x0514, blocks: (B:216:0x04de, B:218:0x04e5, B:220:0x04e9, B:222:0x04ed, B:223:0x04f0, B:225:0x04f4, B:227:0x04f8, B:229:0x04fc, B:230:0x04fd, B:231:0x0502, B:232:0x0503, B:233:0x050a, B:234:0x050b, B:235:0x0512, B:236:0x0513), top: B:259:0x04de }] */
    /* JADX WARN: Code duplicated, block: B:232:0x0503 A[Catch: all -> 0x0514, TryCatch #10 {all -> 0x0514, blocks: (B:216:0x04de, B:218:0x04e5, B:220:0x04e9, B:222:0x04ed, B:223:0x04f0, B:225:0x04f4, B:227:0x04f8, B:229:0x04fc, B:230:0x04fd, B:231:0x0502, B:232:0x0503, B:233:0x050a, B:234:0x050b, B:235:0x0512, B:236:0x0513), top: B:259:0x04de }] */
    /* JADX WARN: Code duplicated, block: B:234:0x050b A[Catch: all -> 0x0514, TryCatch #10 {all -> 0x0514, blocks: (B:216:0x04de, B:218:0x04e5, B:220:0x04e9, B:222:0x04ed, B:223:0x04f0, B:225:0x04f4, B:227:0x04f8, B:229:0x04fc, B:230:0x04fd, B:231:0x0502, B:232:0x0503, B:233:0x050a, B:234:0x050b, B:235:0x0512, B:236:0x0513), top: B:259:0x04de }] */
    /* JADX WARN: Code duplicated, block: B:236:0x0513 A[Catch: all -> 0x0514, TRY_LEAVE, TryCatch #10 {all -> 0x0514, blocks: (B:216:0x04de, B:218:0x04e5, B:220:0x04e9, B:222:0x04ed, B:223:0x04f0, B:225:0x04f4, B:227:0x04f8, B:229:0x04fc, B:230:0x04fd, B:231:0x0502, B:232:0x0503, B:233:0x050a, B:234:0x050b, B:235:0x0512, B:236:0x0513), top: B:259:0x04de }] */
    /* JADX WARN: Code duplicated, block: B:67:0x01a2 A[Catch: all -> 0x02f4, TRY_LEAVE, TryCatch #9 {all -> 0x02f4, blocks: (B:65:0x019a, B:67:0x01a2), top: B:257:0x019a }] */
    /* JADX WARN: Code duplicated, block: B:70:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:73:0x01c9 A[Catch: all -> 0x0140, TRY_LEAVE, TryCatch #0 {all -> 0x0140, blocks: (B:46:0x011a, B:71:0x01c1, B:73:0x01c9, B:82:0x01eb, B:49:0x0136), top: B:243:0x0034 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:81:0x01e8 A[PHI: r4 r9 r14 r17 r18
  0x01e8: PHI (r4v17 java.io.Closeable) = (r4v12 java.io.Closeable), (r4v54 java.io.Closeable) binds: [B:80:0x01e5, B:72:0x01c7] A[DONT_GENERATE, DONT_INLINE]
  0x01e8: PHI (r9v10 ads_mobile_sdk.ok0) = (r9v6 ads_mobile_sdk.ok0), (r9v12 ads_mobile_sdk.ok0) binds: [B:80:0x01e5, B:72:0x01c7] A[DONT_GENERATE, DONT_INLINE]
  0x01e8: PHI (r14v11 ads_mobile_sdk.rr3) = (r14v42 ads_mobile_sdk.rr3), (r14v43 ads_mobile_sdk.rr3) binds: [B:80:0x01e5, B:72:0x01c7] A[DONT_GENERATE, DONT_INLINE]
  0x01e8: PHI (r17v5 android.app.Activity) = (r17v2 android.app.Activity), (r17v6 android.app.Activity) binds: [B:80:0x01e5, B:72:0x01c7] A[DONT_GENERATE, DONT_INLINE]
  0x01e8: PHI (r18v3 java.lang.String) = (r18v1 java.lang.String), (r18v4 java.lang.String) binds: [B:80:0x01e5, B:72:0x01c7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:85:0x022d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0245  */
    /* JADX WARN: Code duplicated, block: B:90:0x0248  */
    /* JADX WARN: Code duplicated, block: B:91:0x0249  */
    /* JADX WARN: Code duplicated, block: B:92:0x024c  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v12, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v20, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v52 */
    public final Object e(Continuation continuation) {
        yj0 yj0Var;
        ?? r12;
        rr3 rr3Var;
        rr3 rr3Var2;
        Closeable closeable;
        rr3 rr3VarA;
        String str;
        String str2;
        rr3 rr3Var3;
        Activity activity;
        Object obj;
        ok0 ok0Var;
        rr3 rr3Var4;
        Activity activity2;
        Object obj2;
        ok0 ok0Var2;
        Closeable closeable2;
        Activity activity3;
        Closeable closeable3;
        Object objA;
        Closeable closeable4;
        rr3 rr3Var5;
        final ok0 ok0Var3;
        Activity activity4;
        ArrayList arrayList;
        int size;
        int size2;
        int size3;
        Object objB;
        final int i;
        final int i2;
        Activity activity5;
        int i3;
        Object obj3;
        rr3 rr3Var6;
        Closeable closeable5;
        rr3 rr3Var7;
        int i4;
        ?? r3;
        rr3 rr3Var8;
        ok0 ok0Var4;
        final ok0 ok0Var5;
        CoroutineContext coroutineContext;
        zj0 zj0Var;
        ?? r4;
        rr3 rr3Var9;
        Object obj4;
        Activity activity6;
        String str3;
        ok0 ok0Var6;
        Object objA2;
        ok0 ok0Var7;
        Activity activity7;
        ArrayList arrayList2;
        int size4;
        int size5;
        int size6;
        Object objB2;
        ArrayList arrayList3;
        final int i5;
        final int i6;
        final ok0 ok0Var8;
        int i7;
        Object obj5;
        int i8;
        ok0 ok0Var9;
        Closeable closeable6;
        final ok0 ok0Var10;
        CoroutineContext coroutineContext2;
        zj0 zj0Var2;
        Object obj6;
        if (continuation instanceof yj0) {
            yj0Var = (yj0) continuation;
            int i9 = yj0Var.k;
            if ((i9 & Integer.MIN_VALUE) != 0) {
                yj0Var.k = i9 - Integer.MIN_VALUE;
            } else {
                yj0Var = new yj0(this, continuation);
            }
        } else {
            yj0Var = new yj0(this, continuation);
        }
        Object obj7 = yj0Var.i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r5 = yj0Var.k;
        ?? r13 = "None";
        try {
            try {
                try {
                    switch (r5) {
                        case 0:
                            p005kotlin.ResultKt.throwOnFailure(obj7);
                            g83 g83Var = this.c;
                            s11 s11Var = s11.CUI_NAME_DEBUG_MENU_INSPECTOR_SETTINGS;
                            ks3 ks3Var = this.o;
                            List listEmptyList = CollectionsKt.emptyList();
                            str = "Failed to show inspector settings dialog";
                            if (hs3.b().a == null) {
                                tu2 tu2VarA = g83.a(g83Var, s11Var, listEmptyList, ks3Var);
                                try {
                                    Activity activityG = this.e.g();
                                    if (activityG == null) {
                                        xs3.a("No Activity context available for opening ad inspector settings.", null, 6);
                                        this.k.set(false);
                                        p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(tu2VarA, null);
                                        return unit;
                                    }
                                    if1 if1Var = this.j;
                                    yj0Var.a = this;
                                    yj0Var.b = tu2VarA;
                                    yj0Var.c = tu2VarA;
                                    yj0Var.d = activityG;
                                    yj0Var.k = 1;
                                    if1Var.getClass();
                                    Object objA3 = if1.a(if1Var, yj0Var);
                                    if (objA3 != coroutine_suspended) {
                                        tu2 tu2Var = tu2VarA;
                                        rr3Var4 = tu2Var;
                                        activity2 = activityG;
                                        obj2 = objA3;
                                        ok0Var2 = this;
                                        closeable2 = tu2Var;
                                        try {
                                            if (((Boolean) obj2).booleanValue()) {
                                                activity3 = activity2;
                                                closeable3 = closeable2;
                                                rr3Var5 = rr3Var4;
                                                ok0Var3 = ok0Var2;
                                                activity4 = activity3;
                                                arrayList = new ArrayList();
                                                arrayList.add("None");
                                                size = arrayList.size() - 1;
                                                arrayList.add("Shake");
                                                size2 = arrayList.size() - 1;
                                                arrayList.add("Flick");
                                                size3 = arrayList.size() - 1;
                                                if1 if1Var2 = ok0Var3.j;
                                                yj0Var.a = ok0Var3;
                                                yj0Var.b = rr3Var5;
                                                yj0Var.c = closeable3;
                                                yj0Var.d = activity4;
                                                yj0Var.e = arrayList;
                                                yj0Var.f = size;
                                                yj0Var.g = size2;
                                                yj0Var.h = size3;
                                                yj0Var.k = 4;
                                                if1Var2.getClass();
                                                objB = if1.b(if1Var2, yj0Var);
                                                if (objB != coroutine_suspended) {
                                                    i = size3;
                                                    i2 = size2;
                                                    activity5 = activity4;
                                                    i3 = size;
                                                    obj3 = objB;
                                                    r5 = closeable3;
                                                    rr3Var7 = rr3Var5;
                                                    i4 = oj0.a[((og1) obj3).y().ordinal()];
                                                    if (i4 != 1) {
                                                        i3 = i;
                                                    } else if (i4 != 2) {
                                                        i3 = i2;
                                                    }
                                                    final AtomicInteger atomicInteger = new AtomicInteger(i3);
                                                    AlertDialog.Builder builder = new AlertDialog.Builder(activity5, R.style.Theme.Material.Dialog.Alert);
                                                    builder.setTitle("Setup gesture");
                                                    builder.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i3, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                                        @Override // android.content.DialogInterface.OnClickListener
                                                        public final void onClick(DialogInterface dialogInterface, int i10) {
                                                            ok0.a(atomicInteger, dialogInterface, i10);
                                                        }
                                                    });
                                                    builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                                        @Override // android.content.DialogInterface.OnCancelListener
                                                        public final void onCancel(DialogInterface dialogInterface) {
                                                            ok0.b(this.f$0, dialogInterface);
                                                        }
                                                    });
                                                    builder.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                                        @Override // android.content.DialogInterface.OnClickListener
                                                        public final void onClick(DialogInterface dialogInterface, int i10) {
                                                            ok0.b(this.f$0, dialogInterface, i10);
                                                        }
                                                    });
                                                    final int i10 = i3;
                                                    ok0Var5 = ok0Var3;
                                                    ok0Var3 = ok0Var5;
                                                    builder.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                                        @Override // android.content.DialogInterface.OnClickListener
                                                        public final void onClick(DialogInterface dialogInterface, int i11) {
                                                            ok0.a(this.f$0, atomicInteger, i10, i, i2, dialogInterface, i11);
                                                        }
                                                    });
                                                    coroutineContext = ok0Var3.a;
                                                    zj0Var = new zj0(builder, null);
                                                    yj0Var.a = ok0Var3;
                                                    yj0Var.b = rr3Var7;
                                                    yj0Var.c = r5;
                                                    yj0Var.d = null;
                                                    yj0Var.e = null;
                                                    yj0Var.k = 5;
                                                    if (BuildersKt.withContext(coroutineContext, zj0Var, yj0Var) != coroutine_suspended) {
                                                        r4 = r5;
                                                        rr3Var9 = rr3Var7;
                                                        ?? r14 = r4;
                                                        obj4 = p005kotlin.Unit.INSTANCE;
                                                        if (obj4 instanceof i01) {
                                                            xs3.a((i01) obj4, false);
                                                        }
                                                        CloseableKt.closeFinally(r14, null);
                                                        return p005kotlin.Unit.INSTANCE;
                                                    }
                                                }
                                            } else {
                                                if1 if1Var3 = ok0Var2.j;
                                                String str4 = ok0Var2.l;
                                                JsonObject jsonObject = ok0Var2.n;
                                                yj0Var.a = ok0Var2;
                                                yj0Var.b = rr3Var4;
                                                yj0Var.c = closeable2;
                                                yj0Var.d = activity2;
                                                activity3 = activity2;
                                                yj0Var.k = 2;
                                                if1Var3.getClass();
                                                objA = if1.a(if1Var3, str4, jsonObject, yj0Var);
                                                if (objA != coroutine_suspended) {
                                                    closeable4 = closeable2;
                                                    rr3Var6 = rr3Var4;
                                                    closeable3 = closeable4;
                                                    rr3Var5 = rr3Var6;
                                                    if (((Boolean) objA).booleanValue()) {
                                                        ok0Var3 = ok0Var2;
                                                        activity4 = activity3;
                                                        arrayList = new ArrayList();
                                                        arrayList.add("None");
                                                        size = arrayList.size() - 1;
                                                        arrayList.add("Shake");
                                                        size2 = arrayList.size() - 1;
                                                        arrayList.add("Flick");
                                                        size3 = arrayList.size() - 1;
                                                        if1 if1Var4 = ok0Var3.j;
                                                        yj0Var.a = ok0Var3;
                                                        yj0Var.b = rr3Var5;
                                                        yj0Var.c = closeable3;
                                                        yj0Var.d = activity4;
                                                        yj0Var.e = arrayList;
                                                        yj0Var.f = size;
                                                        yj0Var.g = size2;
                                                        yj0Var.h = size3;
                                                        yj0Var.k = 4;
                                                        if1Var4.getClass();
                                                        objB = if1.b(if1Var4, yj0Var);
                                                        if (objB != coroutine_suspended) {
                                                            i = size3;
                                                            i2 = size2;
                                                            activity5 = activity4;
                                                            i3 = size;
                                                            obj3 = objB;
                                                            r5 = closeable3;
                                                            rr3Var7 = rr3Var5;
                                                            try {
                                                                i4 = oj0.a[((og1) obj3).y().ordinal()];
                                                                if (i4 != 1) {
                                                                    i3 = i;
                                                                } else if (i4 != 2) {
                                                                    i3 = i2;
                                                                }
                                                                final AtomicInteger atomicInteger2 = new AtomicInteger(i3);
                                                                try {
                                                                    AlertDialog.Builder builder2 = new AlertDialog.Builder(activity5, R.style.Theme.Material.Dialog.Alert);
                                                                    builder2.setTitle("Setup gesture");
                                                                    builder2.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i3, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                                                        @Override // android.content.DialogInterface.OnClickListener
                                                                        public final void onClick(DialogInterface dialogInterface, int i11) {
                                                                            ok0.a(atomicInteger2, dialogInterface, i11);
                                                                        }
                                                                    });
                                                                    builder2.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                                                        @Override // android.content.DialogInterface.OnCancelListener
                                                                        public final void onCancel(DialogInterface dialogInterface) {
                                                                            ok0.b(this.f$0, dialogInterface);
                                                                        }
                                                                    });
                                                                    builder2.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                                                        @Override // android.content.DialogInterface.OnClickListener
                                                                        public final void onClick(DialogInterface dialogInterface, int i11) {
                                                                            ok0.b(this.f$0, dialogInterface, i11);
                                                                        }
                                                                    });
                                                                    final int i11 = i3;
                                                                    ok0Var5 = ok0Var3;
                                                                    try {
                                                                        ok0Var3 = ok0Var5;
                                                                        builder2.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                                                            @Override // android.content.DialogInterface.OnClickListener
                                                                            public final void onClick(DialogInterface dialogInterface, int i12) {
                                                                                ok0.a(this.f$0, atomicInteger2, i11, i, i2, dialogInterface, i12);
                                                                            }
                                                                        });
                                                                        coroutineContext = ok0Var3.a;
                                                                        zj0Var = new zj0(builder2, null);
                                                                        yj0Var.a = ok0Var3;
                                                                        yj0Var.b = rr3Var7;
                                                                        yj0Var.c = r5;
                                                                        yj0Var.d = null;
                                                                        yj0Var.e = null;
                                                                        yj0Var.k = 5;
                                                                        if (BuildersKt.withContext(coroutineContext, zj0Var, yj0Var) != coroutine_suspended) {
                                                                            r4 = r5;
                                                                            rr3Var9 = rr3Var7;
                                                                            ?? r15 = r4;
                                                                            obj4 = p005kotlin.Unit.INSTANCE;
                                                                            if (obj4 instanceof i01) {
                                                                                xs3.a((i01) obj4, false);
                                                                            }
                                                                            CloseableKt.closeFinally(r15, null);
                                                                            return p005kotlin.Unit.INSTANCE;
                                                                        }
                                                                    } catch (Throwable th) {
                                                                        exception = th;
                                                                        ok0Var3 = ok0Var5;
                                                                        r3 = r5;
                                                                        rr3Var8 = rr3Var7;
                                                                        ok0Var4 = ok0Var3;
                                                                        try {
                                                                            Intrinsics.checkNotNullParameter(exception, "exception");
                                                                            rr3 rr3VarA2 = hs3.a();
                                                                            rr3VarA2.e().m = false;
                                                                            rr3VarA2.a(exception);
                                                                            ok0Var4.k.set(false);
                                                                            ((as3) ok0Var4.d).a(str, exception);
                                                                            r4 = r3;
                                                                            rr3Var9 = rr3Var8;
                                                                            break;
                                                                        } catch (Throwable th2) {
                                                                            th = th2;
                                                                            r13 = r3;
                                                                            rr3Var2 = rr3Var8;
                                                                            rr3Var = rr3Var2;
                                                                            r12 = r13;
                                                                            try {
                                                                                rr3Var.b(th);
                                                                                if (!(th instanceof v24)) {
                                                                                    throw th;
                                                                                }
                                                                                if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                                                                                    rr3Var.a(th);
                                                                                }
                                                                                if (!(th instanceof TimeoutCancellationException)) {
                                                                                    throw new i21(th);
                                                                                }
                                                                                if (!(th instanceof CancellationException)) {
                                                                                    throw new wz0(th);
                                                                                }
                                                                                if (th instanceof w01) {
                                                                                    throw th;
                                                                                }
                                                                                throw new b01(th);
                                                                            } catch (Throwable th3) {
                                                                                try {
                                                                                    throw th3;
                                                                                } catch (Throwable th4) {
                                                                                    CloseableKt.closeFinally(r12, th3);
                                                                                    throw th4;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                } catch (Throwable th5) {
                                                                    exception = th5;
                                                                }
                                                            } catch (Throwable th6) {
                                                                th = th6;
                                                                r13 = r5;
                                                                rr3Var2 = rr3Var7;
                                                                rr3Var = rr3Var2;
                                                                r12 = r13;
                                                                rr3Var.b(th);
                                                                if (!(th instanceof v24)) {
                                                                    throw th;
                                                                }
                                                                if (!(th instanceof TimeoutCancellationException)) {
                                                                    rr3Var.a(th);
                                                                }
                                                                if (!(th instanceof TimeoutCancellationException)) {
                                                                    throw new i21(th);
                                                                }
                                                                if (!(th instanceof CancellationException)) {
                                                                    throw new wz0(th);
                                                                }
                                                                if (th instanceof w01) {
                                                                    throw th;
                                                                }
                                                                throw new b01(th);
                                                            }
                                                        }
                                                    } else {
                                                        yj0Var.a = rr3Var6;
                                                        yj0Var.b = closeable4;
                                                        yj0Var.c = null;
                                                        yj0Var.d = null;
                                                        yj0Var.k = 3;
                                                        if (ok0Var2.c(yj0Var) != coroutine_suspended) {
                                                            closeable5 = closeable4;
                                                            p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                                            CloseableKt.closeFinally(closeable5, null);
                                                            return unit2;
                                                        }
                                                    }
                                                }
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            r13 = closeable2;
                                            rr3Var2 = rr3Var4;
                                            rr3Var = rr3Var2;
                                            r12 = r13;
                                            rr3Var.b(th);
                                            if (!(th instanceof v24)) {
                                                throw th;
                                            }
                                            if (!(th instanceof TimeoutCancellationException)) {
                                                rr3Var.a(th);
                                            }
                                            if (!(th instanceof TimeoutCancellationException)) {
                                                throw new i21(th);
                                            }
                                            if (!(th instanceof CancellationException)) {
                                                throw new wz0(th);
                                            }
                                            if (th instanceof w01) {
                                                throw th;
                                            }
                                            throw new b01(th);
                                        }
                                    }
                                } catch (Throwable th8) {
                                    th = th8;
                                    r12 = tu2VarA;
                                    rr3Var = tu2VarA;
                                    rr3Var.b(th);
                                    if (!(th instanceof v24)) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
                                        rr3Var.a(th);
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
                                        throw new i21(th);
                                    }
                                    if (!(th instanceof CancellationException)) {
                                        throw new wz0(th);
                                    }
                                    if (th instanceof w01) {
                                        throw th;
                                    }
                                    throw new b01(th);
                                }
                            } else {
                                str2 = str;
                                rr3VarA = hs3.a(s11Var, CollectionsKt.emptyList(), true);
                                try {
                                    Activity activityG2 = this.e.g();
                                    if (activityG2 == null) {
                                        xs3.a("No Activity context available for opening ad inspector settings.", null, 6);
                                        this.k.set(false);
                                        p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(rr3VarA, null);
                                        return unit3;
                                    }
                                    if1 if1Var5 = this.j;
                                    yj0Var.a = this;
                                    yj0Var.b = rr3VarA;
                                    yj0Var.c = rr3VarA;
                                    yj0Var.d = activityG2;
                                    yj0Var.k = 6;
                                    if1Var5.getClass();
                                    Object objA4 = if1.a(if1Var5, yj0Var);
                                    if (objA4 != coroutine_suspended) {
                                        rr3Var3 = rr3VarA;
                                        closeable = rr3Var3;
                                        activity = activityG2;
                                        obj = objA4;
                                        ok0Var = this;
                                        if (((Boolean) obj).booleanValue()) {
                                            activity6 = activity;
                                            str3 = str2;
                                            ok0Var6 = ok0Var;
                                            activity7 = activity6;
                                            arrayList2 = new ArrayList();
                                            arrayList2.add("None");
                                            size4 = arrayList2.size() - 1;
                                            arrayList2.add("Shake");
                                            size5 = arrayList2.size() - 1;
                                            arrayList2.add("Flick");
                                            size6 = arrayList2.size() - 1;
                                            if1 if1Var6 = ok0Var6.j;
                                            yj0Var.a = ok0Var6;
                                            yj0Var.b = rr3Var3;
                                            yj0Var.c = closeable;
                                            yj0Var.d = activity7;
                                            yj0Var.e = arrayList2;
                                            yj0Var.f = size4;
                                            yj0Var.g = size5;
                                            yj0Var.h = size6;
                                            yj0Var.k = 9;
                                            if1Var6.getClass();
                                            objB2 = if1.b(if1Var6, yj0Var);
                                            if (objB2 != coroutine_suspended) {
                                                arrayList3 = arrayList2;
                                                i5 = size6;
                                                i6 = size5;
                                                ok0Var8 = ok0Var6;
                                                i7 = size4;
                                                obj5 = objB2;
                                                rr3VarA = rr3Var3;
                                                i8 = oj0.a[((og1) obj5).y().ordinal()];
                                                if (i8 != 1) {
                                                    i7 = i5;
                                                } else if (i8 != 2) {
                                                    i7 = i6;
                                                }
                                                final AtomicInteger atomicInteger3 = new AtomicInteger(i7);
                                                AlertDialog.Builder builder3 = new AlertDialog.Builder(activity7, R.style.Theme.Material.Dialog.Alert);
                                                builder3.setTitle("Setup gesture");
                                                builder3.setSingleChoiceItems((CharSequence[]) arrayList3.toArray(new String[0]), i7, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                                    @Override // android.content.DialogInterface.OnClickListener
                                                    public final void onClick(DialogInterface dialogInterface, int i12) {
                                                        ok0.a(atomicInteger3, dialogInterface, i12);
                                                    }
                                                });
                                                builder3.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                                    @Override // android.content.DialogInterface.OnCancelListener
                                                    public final void onCancel(DialogInterface dialogInterface) {
                                                        ok0.b(this.f$0, dialogInterface);
                                                    }
                                                });
                                                builder3.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                                    @Override // android.content.DialogInterface.OnClickListener
                                                    public final void onClick(DialogInterface dialogInterface, int i12) {
                                                        ok0.b(this.f$0, dialogInterface, i12);
                                                    }
                                                });
                                                ok0Var10 = ok0Var8;
                                                final int i12 = i7;
                                                ok0Var8 = ok0Var10;
                                                builder3.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                                    @Override // android.content.DialogInterface.OnClickListener
                                                    public final void onClick(DialogInterface dialogInterface, int i13) {
                                                        ok0.a(this.f$0, atomicInteger3, i12, i5, i6, dialogInterface, i13);
                                                    }
                                                });
                                                coroutineContext2 = ok0Var8.a;
                                                zj0Var2 = new zj0(builder3, null);
                                                yj0Var.a = ok0Var8;
                                                yj0Var.b = rr3VarA;
                                                yj0Var.c = closeable;
                                                yj0Var.d = null;
                                                yj0Var.e = null;
                                                yj0Var.k = 10;
                                                if (BuildersKt.withContext(coroutineContext2, zj0Var2, yj0Var) != coroutine_suspended) {
                                                    closeable6 = closeable;
                                                    Closeable closeable7 = closeable6;
                                                    obj6 = p005kotlin.Unit.INSTANCE;
                                                    if (obj6 instanceof i01) {
                                                        xs3.a((i01) obj6, false);
                                                    }
                                                    CloseableKt.closeFinally(closeable7, null);
                                                    return p005kotlin.Unit.INSTANCE;
                                                }
                                            }
                                        } else {
                                            if1 if1Var7 = ok0Var.j;
                                            String str5 = ok0Var.l;
                                            str3 = str2;
                                            JsonObject jsonObject2 = ok0Var.n;
                                            yj0Var.a = ok0Var;
                                            yj0Var.b = rr3Var3;
                                            yj0Var.c = closeable;
                                            yj0Var.d = activity;
                                            activity6 = activity;
                                            yj0Var.k = 7;
                                            if1Var7.getClass();
                                            objA2 = if1.a(if1Var7, str5, jsonObject2, yj0Var);
                                            if (objA2 == coroutine_suspended) {
                                                ok0Var7 = ok0Var;
                                                if (!((Boolean) objA2).booleanValue()) {
                                                    yj0Var.a = rr3Var3;
                                                    yj0Var.b = closeable;
                                                    yj0Var.c = null;
                                                    yj0Var.d = null;
                                                    yj0Var.k = 8;
                                                    if (ok0Var7.c(yj0Var) == coroutine_suspended) {
                                                    }
                                                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                                    CloseableKt.closeFinally(closeable, null);
                                                    return unit4;
                                                }
                                                ok0Var6 = ok0Var7;
                                                activity7 = activity6;
                                                arrayList2 = new ArrayList();
                                                arrayList2.add("None");
                                                size4 = arrayList2.size() - 1;
                                                arrayList2.add("Shake");
                                                size5 = arrayList2.size() - 1;
                                                arrayList2.add("Flick");
                                                size6 = arrayList2.size() - 1;
                                                if1 if1Var8 = ok0Var6.j;
                                                yj0Var.a = ok0Var6;
                                                yj0Var.b = rr3Var3;
                                                yj0Var.c = closeable;
                                                yj0Var.d = activity7;
                                                yj0Var.e = arrayList2;
                                                yj0Var.f = size4;
                                                yj0Var.g = size5;
                                                yj0Var.h = size6;
                                                yj0Var.k = 9;
                                                if1Var8.getClass();
                                                objB2 = if1.b(if1Var8, yj0Var);
                                                if (objB2 != coroutine_suspended) {
                                                    arrayList3 = arrayList2;
                                                    i5 = size6;
                                                    i6 = size5;
                                                    ok0Var8 = ok0Var6;
                                                    i7 = size4;
                                                    obj5 = objB2;
                                                    rr3VarA = rr3Var3;
                                                    try {
                                                        i8 = oj0.a[((og1) obj5).y().ordinal()];
                                                        if (i8 != 1) {
                                                            i7 = i5;
                                                        } else if (i8 != 2) {
                                                            i7 = i6;
                                                        }
                                                        final AtomicInteger atomicInteger4 = new AtomicInteger(i7);
                                                        try {
                                                            AlertDialog.Builder builder4 = new AlertDialog.Builder(activity7, R.style.Theme.Material.Dialog.Alert);
                                                            builder4.setTitle("Setup gesture");
                                                            builder4.setSingleChoiceItems((CharSequence[]) arrayList3.toArray(new String[0]), i7, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                                                @Override // android.content.DialogInterface.OnClickListener
                                                                public final void onClick(DialogInterface dialogInterface, int i13) {
                                                                    ok0.a(atomicInteger4, dialogInterface, i13);
                                                                }
                                                            });
                                                            builder4.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                                                @Override // android.content.DialogInterface.OnCancelListener
                                                                public final void onCancel(DialogInterface dialogInterface) {
                                                                    ok0.b(this.f$0, dialogInterface);
                                                                }
                                                            });
                                                            builder4.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                                                @Override // android.content.DialogInterface.OnClickListener
                                                                public final void onClick(DialogInterface dialogInterface, int i13) {
                                                                    ok0.b(this.f$0, dialogInterface, i13);
                                                                }
                                                            });
                                                            ok0Var10 = ok0Var8;
                                                            final int i13 = i7;
                                                            try {
                                                                ok0Var8 = ok0Var10;
                                                                builder4.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                                                    @Override // android.content.DialogInterface.OnClickListener
                                                                    public final void onClick(DialogInterface dialogInterface, int i14) {
                                                                        ok0.a(this.f$0, atomicInteger4, i13, i5, i6, dialogInterface, i14);
                                                                    }
                                                                });
                                                                coroutineContext2 = ok0Var8.a;
                                                                zj0Var2 = new zj0(builder4, null);
                                                                yj0Var.a = ok0Var8;
                                                                yj0Var.b = rr3VarA;
                                                                yj0Var.c = closeable;
                                                                yj0Var.d = null;
                                                                yj0Var.e = null;
                                                                yj0Var.k = 10;
                                                                if (BuildersKt.withContext(coroutineContext2, zj0Var2, yj0Var) != coroutine_suspended) {
                                                                    closeable6 = closeable;
                                                                    Closeable closeable8 = closeable6;
                                                                    obj6 = p005kotlin.Unit.INSTANCE;
                                                                    if (obj6 instanceof i01) {
                                                                        xs3.a((i01) obj6, false);
                                                                    }
                                                                    CloseableKt.closeFinally(closeable8, null);
                                                                    return p005kotlin.Unit.INSTANCE;
                                                                }
                                                            } catch (Throwable th9) {
                                                                exception = th9;
                                                                ok0Var8 = ok0Var10;
                                                                ok0Var9 = ok0Var8;
                                                                closeable6 = closeable;
                                                                try {
                                                                    Intrinsics.checkNotNullParameter(exception, "exception");
                                                                    rr3 rr3VarA3 = hs3.a();
                                                                    rr3VarA3.e().m = false;
                                                                    rr3VarA3.a(exception);
                                                                    ok0Var9.k.set(false);
                                                                    ((as3) ok0Var9.d).a(str3, exception);
                                                                    break;
                                                                } catch (Throwable th10) {
                                                                    th = th10;
                                                                    closeable = closeable6;
                                                                    rr3 rr3Var10 = rr3VarA;
                                                                    rr3VarA = rr3Var10;
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
                                                                    } catch (Throwable th11) {
                                                                        try {
                                                                            throw th11;
                                                                        } catch (Throwable th12) {
                                                                            CloseableKt.closeFinally(closeable, th11);
                                                                            throw th12;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } catch (Throwable th13) {
                                                            exception = th13;
                                                        }
                                                    } catch (Throwable th14) {
                                                        th = th14;
                                                        rr3VarA.b(th);
                                                        if (th instanceof v24) {
                                                            throw th;
                                                        }
                                                        if (!(th instanceof TimeoutCancellationException)) {
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
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } catch (Throwable th15) {
                                    th = th15;
                                    closeable = rr3VarA;
                                    rr3VarA.b(th);
                                    if (th instanceof v24) {
                                        throw th;
                                    }
                                    if (!(th instanceof TimeoutCancellationException)) {
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
                                }
                            }
                            return coroutine_suspended;
                        case 1:
                            Activity activity8 = yj0Var.d;
                            Closeable closeable9 = yj0Var.c;
                            rr3 rr3Var11 = (rr3) yj0Var.b;
                            ok0Var2 = (ok0) yj0Var.a;
                            p005kotlin.ResultKt.throwOnFailure(obj7);
                            str = "Failed to show inspector settings dialog";
                            closeable2 = closeable9;
                            activity2 = activity8;
                            obj2 = obj7;
                            rr3Var4 = rr3Var11;
                            if (((Boolean) obj2).booleanValue()) {
                                if1 if1Var9 = ok0Var2.j;
                                String str6 = ok0Var2.l;
                                JsonObject jsonObject3 = ok0Var2.n;
                                yj0Var.a = ok0Var2;
                                yj0Var.b = rr3Var4;
                                yj0Var.c = closeable2;
                                yj0Var.d = activity2;
                                activity3 = activity2;
                                yj0Var.k = 2;
                                if1Var9.getClass();
                                objA = if1.a(if1Var9, str6, jsonObject3, yj0Var);
                                if (objA != coroutine_suspended) {
                                    closeable4 = closeable2;
                                    rr3Var6 = rr3Var4;
                                    closeable3 = closeable4;
                                    rr3Var5 = rr3Var6;
                                    if (((Boolean) objA).booleanValue()) {
                                        yj0Var.a = rr3Var6;
                                        yj0Var.b = closeable4;
                                        yj0Var.c = null;
                                        yj0Var.d = null;
                                        yj0Var.k = 3;
                                        if (ok0Var2.c(yj0Var) != coroutine_suspended) {
                                            closeable5 = closeable4;
                                            p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                                            CloseableKt.closeFinally(closeable5, null);
                                            return unit5;
                                        }
                                    } else {
                                        ok0Var3 = ok0Var2;
                                        activity4 = activity3;
                                        arrayList = new ArrayList();
                                        arrayList.add("None");
                                        size = arrayList.size() - 1;
                                        arrayList.add("Shake");
                                        size2 = arrayList.size() - 1;
                                        arrayList.add("Flick");
                                        size3 = arrayList.size() - 1;
                                        if1 if1Var10 = ok0Var3.j;
                                        yj0Var.a = ok0Var3;
                                        yj0Var.b = rr3Var5;
                                        yj0Var.c = closeable3;
                                        yj0Var.d = activity4;
                                        yj0Var.e = arrayList;
                                        yj0Var.f = size;
                                        yj0Var.g = size2;
                                        yj0Var.h = size3;
                                        yj0Var.k = 4;
                                        if1Var10.getClass();
                                        objB = if1.b(if1Var10, yj0Var);
                                        if (objB != coroutine_suspended) {
                                            i = size3;
                                            i2 = size2;
                                            activity5 = activity4;
                                            i3 = size;
                                            obj3 = objB;
                                            r5 = closeable3;
                                            rr3Var7 = rr3Var5;
                                            i4 = oj0.a[((og1) obj3).y().ordinal()];
                                            if (i4 != 1) {
                                                i3 = i;
                                            } else if (i4 != 2) {
                                                i3 = i2;
                                            }
                                            final AtomicInteger atomicInteger5 = new AtomicInteger(i3);
                                            AlertDialog.Builder builder5 = new AlertDialog.Builder(activity5, R.style.Theme.Material.Dialog.Alert);
                                            builder5.setTitle("Setup gesture");
                                            builder5.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i3, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                                @Override // android.content.DialogInterface.OnClickListener
                                                public final void onClick(DialogInterface dialogInterface, int i14) {
                                                    ok0.a(atomicInteger5, dialogInterface, i14);
                                                }
                                            });
                                            builder5.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                                @Override // android.content.DialogInterface.OnCancelListener
                                                public final void onCancel(DialogInterface dialogInterface) {
                                                    ok0.b(this.f$0, dialogInterface);
                                                }
                                            });
                                            builder5.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                                @Override // android.content.DialogInterface.OnClickListener
                                                public final void onClick(DialogInterface dialogInterface, int i14) {
                                                    ok0.b(this.f$0, dialogInterface, i14);
                                                }
                                            });
                                            final int i14 = i3;
                                            ok0Var5 = ok0Var3;
                                            ok0Var3 = ok0Var5;
                                            builder5.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                                @Override // android.content.DialogInterface.OnClickListener
                                                public final void onClick(DialogInterface dialogInterface, int i15) {
                                                    ok0.a(this.f$0, atomicInteger5, i14, i, i2, dialogInterface, i15);
                                                }
                                            });
                                            coroutineContext = ok0Var3.a;
                                            zj0Var = new zj0(builder5, null);
                                            yj0Var.a = ok0Var3;
                                            yj0Var.b = rr3Var7;
                                            yj0Var.c = r5;
                                            yj0Var.d = null;
                                            yj0Var.e = null;
                                            yj0Var.k = 5;
                                            if (BuildersKt.withContext(coroutineContext, zj0Var, yj0Var) != coroutine_suspended) {
                                                r4 = r5;
                                                rr3Var9 = rr3Var7;
                                                ?? r16 = r4;
                                                obj4 = p005kotlin.Unit.INSTANCE;
                                                if (obj4 instanceof i01) {
                                                    xs3.a((i01) obj4, false);
                                                }
                                                CloseableKt.closeFinally(r16, null);
                                                return p005kotlin.Unit.INSTANCE;
                                            }
                                        }
                                    }
                                }
                            } else {
                                activity3 = activity2;
                                closeable3 = closeable2;
                                rr3Var5 = rr3Var4;
                                ok0Var3 = ok0Var2;
                                activity4 = activity3;
                                arrayList = new ArrayList();
                                arrayList.add("None");
                                size = arrayList.size() - 1;
                                arrayList.add("Shake");
                                size2 = arrayList.size() - 1;
                                arrayList.add("Flick");
                                size3 = arrayList.size() - 1;
                                if1 if1Var11 = ok0Var3.j;
                                yj0Var.a = ok0Var3;
                                yj0Var.b = rr3Var5;
                                yj0Var.c = closeable3;
                                yj0Var.d = activity4;
                                yj0Var.e = arrayList;
                                yj0Var.f = size;
                                yj0Var.g = size2;
                                yj0Var.h = size3;
                                yj0Var.k = 4;
                                if1Var11.getClass();
                                objB = if1.b(if1Var11, yj0Var);
                                if (objB != coroutine_suspended) {
                                    i = size3;
                                    i2 = size2;
                                    activity5 = activity4;
                                    i3 = size;
                                    obj3 = objB;
                                    r5 = closeable3;
                                    rr3Var7 = rr3Var5;
                                    i4 = oj0.a[((og1) obj3).y().ordinal()];
                                    if (i4 != 1) {
                                        i3 = i;
                                    } else if (i4 != 2) {
                                        i3 = i2;
                                    }
                                    final AtomicInteger atomicInteger6 = new AtomicInteger(i3);
                                    AlertDialog.Builder builder6 = new AlertDialog.Builder(activity5, R.style.Theme.Material.Dialog.Alert);
                                    builder6.setTitle("Setup gesture");
                                    builder6.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i3, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i15) {
                                            ok0.a(atomicInteger6, dialogInterface, i15);
                                        }
                                    });
                                    builder6.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                        @Override // android.content.DialogInterface.OnCancelListener
                                        public final void onCancel(DialogInterface dialogInterface) {
                                            ok0.b(this.f$0, dialogInterface);
                                        }
                                    });
                                    builder6.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i15) {
                                            ok0.b(this.f$0, dialogInterface, i15);
                                        }
                                    });
                                    final int i15 = i3;
                                    ok0Var5 = ok0Var3;
                                    ok0Var3 = ok0Var5;
                                    builder6.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i16) {
                                            ok0.a(this.f$0, atomicInteger6, i15, i, i2, dialogInterface, i16);
                                        }
                                    });
                                    coroutineContext = ok0Var3.a;
                                    zj0Var = new zj0(builder6, null);
                                    yj0Var.a = ok0Var3;
                                    yj0Var.b = rr3Var7;
                                    yj0Var.c = r5;
                                    yj0Var.d = null;
                                    yj0Var.e = null;
                                    yj0Var.k = 5;
                                    if (BuildersKt.withContext(coroutineContext, zj0Var, yj0Var) != coroutine_suspended) {
                                        r4 = r5;
                                        rr3Var9 = rr3Var7;
                                        ?? r17 = r4;
                                        obj4 = p005kotlin.Unit.INSTANCE;
                                        if (obj4 instanceof i01) {
                                            xs3.a((i01) obj4, false);
                                        }
                                        CloseableKt.closeFinally(r17, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            }
                            return coroutine_suspended;
                        case 2:
                            Activity activity9 = yj0Var.d;
                            Closeable closeable10 = yj0Var.c;
                            rr3 rr3Var12 = (rr3) yj0Var.b;
                            ok0Var2 = (ok0) yj0Var.a;
                            p005kotlin.ResultKt.throwOnFailure(obj7);
                            activity3 = activity9;
                            objA = obj7;
                            str = "Failed to show inspector settings dialog";
                            closeable4 = closeable10;
                            rr3Var6 = rr3Var12;
                            closeable3 = closeable4;
                            rr3Var5 = rr3Var6;
                            if (((Boolean) objA).booleanValue()) {
                                yj0Var.a = rr3Var6;
                                yj0Var.b = closeable4;
                                yj0Var.c = null;
                                yj0Var.d = null;
                                yj0Var.k = 3;
                                if (ok0Var2.c(yj0Var) != coroutine_suspended) {
                                    closeable5 = closeable4;
                                    p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                    CloseableKt.closeFinally(closeable5, null);
                                    return unit6;
                                }
                            } else {
                                ok0Var3 = ok0Var2;
                                activity4 = activity3;
                                arrayList = new ArrayList();
                                arrayList.add("None");
                                size = arrayList.size() - 1;
                                arrayList.add("Shake");
                                size2 = arrayList.size() - 1;
                                arrayList.add("Flick");
                                size3 = arrayList.size() - 1;
                                if1 if1Var12 = ok0Var3.j;
                                yj0Var.a = ok0Var3;
                                yj0Var.b = rr3Var5;
                                yj0Var.c = closeable3;
                                yj0Var.d = activity4;
                                yj0Var.e = arrayList;
                                yj0Var.f = size;
                                yj0Var.g = size2;
                                yj0Var.h = size3;
                                yj0Var.k = 4;
                                if1Var12.getClass();
                                objB = if1.b(if1Var12, yj0Var);
                                if (objB != coroutine_suspended) {
                                    i = size3;
                                    i2 = size2;
                                    activity5 = activity4;
                                    i3 = size;
                                    obj3 = objB;
                                    r5 = closeable3;
                                    rr3Var7 = rr3Var5;
                                    i4 = oj0.a[((og1) obj3).y().ordinal()];
                                    if (i4 != 1) {
                                        i3 = i;
                                    } else if (i4 != 2) {
                                        i3 = i2;
                                    }
                                    final AtomicInteger atomicInteger7 = new AtomicInteger(i3);
                                    AlertDialog.Builder builder7 = new AlertDialog.Builder(activity5, R.style.Theme.Material.Dialog.Alert);
                                    builder7.setTitle("Setup gesture");
                                    builder7.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i3, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i16) {
                                            ok0.a(atomicInteger7, dialogInterface, i16);
                                        }
                                    });
                                    builder7.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                        @Override // android.content.DialogInterface.OnCancelListener
                                        public final void onCancel(DialogInterface dialogInterface) {
                                            ok0.b(this.f$0, dialogInterface);
                                        }
                                    });
                                    builder7.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i16) {
                                            ok0.b(this.f$0, dialogInterface, i16);
                                        }
                                    });
                                    final int i16 = i3;
                                    ok0Var5 = ok0Var3;
                                    ok0Var3 = ok0Var5;
                                    builder7.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i17) {
                                            ok0.a(this.f$0, atomicInteger7, i16, i, i2, dialogInterface, i17);
                                        }
                                    });
                                    coroutineContext = ok0Var3.a;
                                    zj0Var = new zj0(builder7, null);
                                    yj0Var.a = ok0Var3;
                                    yj0Var.b = rr3Var7;
                                    yj0Var.c = r5;
                                    yj0Var.d = null;
                                    yj0Var.e = null;
                                    yj0Var.k = 5;
                                    if (BuildersKt.withContext(coroutineContext, zj0Var, yj0Var) != coroutine_suspended) {
                                        r4 = r5;
                                        rr3Var9 = rr3Var7;
                                        ?? r18 = r4;
                                        obj4 = p005kotlin.Unit.INSTANCE;
                                        if (obj4 instanceof i01) {
                                            xs3.a((i01) obj4, false);
                                        }
                                        CloseableKt.closeFinally(r18, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            }
                            return coroutine_suspended;
                        case 3:
                            Closeable closeable11 = yj0Var.b;
                            p005kotlin.ResultKt.throwOnFailure(obj7);
                            closeable5 = closeable11;
                            p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                            CloseableKt.closeFinally(closeable5, null);
                            return unit7;
                        case 4:
                            int i17 = yj0Var.h;
                            int i18 = yj0Var.g;
                            i3 = yj0Var.f;
                            arrayList = yj0Var.e;
                            activity5 = yj0Var.d;
                            Closeable closeable12 = yj0Var.c;
                            rr3 rr3Var13 = (rr3) yj0Var.b;
                            ok0Var3 = (ok0) yj0Var.a;
                            p005kotlin.ResultKt.throwOnFailure(obj7);
                            i = i17;
                            i2 = i18;
                            str = "Failed to show inspector settings dialog";
                            r5 = closeable12;
                            obj3 = obj7;
                            rr3Var7 = rr3Var13;
                            i4 = oj0.a[((og1) obj3).y().ordinal()];
                            if (i4 != 1) {
                                i3 = i;
                            } else if (i4 != 2) {
                                i3 = i2;
                            }
                            final AtomicInteger atomicInteger8 = new AtomicInteger(i3);
                            AlertDialog.Builder builder8 = new AlertDialog.Builder(activity5, R.style.Theme.Material.Dialog.Alert);
                            builder8.setTitle("Setup gesture");
                            builder8.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i3, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i19) {
                                    ok0.a(atomicInteger8, dialogInterface, i19);
                                }
                            });
                            builder8.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                @Override // android.content.DialogInterface.OnCancelListener
                                public final void onCancel(DialogInterface dialogInterface) {
                                    ok0.b(this.f$0, dialogInterface);
                                }
                            });
                            builder8.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i19) {
                                    ok0.b(this.f$0, dialogInterface, i19);
                                }
                            });
                            final int i19 = i3;
                            ok0Var5 = ok0Var3;
                            ok0Var3 = ok0Var5;
                            builder8.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i110) {
                                    ok0.a(this.f$0, atomicInteger8, i19, i, i2, dialogInterface, i110);
                                }
                            });
                            coroutineContext = ok0Var3.a;
                            zj0Var = new zj0(builder8, null);
                            yj0Var.a = ok0Var3;
                            yj0Var.b = rr3Var7;
                            yj0Var.c = r5;
                            yj0Var.d = null;
                            yj0Var.e = null;
                            yj0Var.k = 5;
                            if (BuildersKt.withContext(coroutineContext, zj0Var, yj0Var) != coroutine_suspended) {
                                r4 = r5;
                                rr3Var9 = rr3Var7;
                                ?? r19 = r4;
                                obj4 = p005kotlin.Unit.INSTANCE;
                                if (obj4 instanceof i01) {
                                    xs3.a((i01) obj4, false);
                                }
                                CloseableKt.closeFinally(r19, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                            return coroutine_suspended;
                        case 5:
                            Closeable closeable13 = yj0Var.c;
                            rr3 rr3Var14 = (rr3) yj0Var.b;
                            ok0Var4 = (ok0) yj0Var.a;
                            try {
                                p005kotlin.ResultKt.throwOnFailure(obj7);
                                r4 = closeable13;
                                rr3Var9 = rr3Var14;
                                break;
                            } catch (Throwable th16) {
                                exception = th16;
                                str = "Failed to show inspector settings dialog";
                                r3 = closeable13;
                                rr3Var8 = rr3Var14;
                                Intrinsics.checkNotNullParameter(exception, "exception");
                                rr3 rr3VarA4 = hs3.a();
                                rr3VarA4.e().m = false;
                                rr3VarA4.a(exception);
                                ok0Var4.k.set(false);
                                ((as3) ok0Var4.d).a(str, exception);
                                r4 = r3;
                                rr3Var9 = rr3Var8;
                                break;
                            }
                            ?? r110 = r4;
                            obj4 = p005kotlin.Unit.INSTANCE;
                            if (obj4 instanceof i01) {
                                xs3.a((i01) obj4, false);
                            }
                            CloseableKt.closeFinally(r110, null);
                            return p005kotlin.Unit.INSTANCE;
                        case 6:
                            Activity activity10 = yj0Var.d;
                            closeable = yj0Var.c;
                            rr3Var3 = (rr3) yj0Var.b;
                            ok0 ok0Var11 = (ok0) yj0Var.a;
                            p005kotlin.ResultKt.throwOnFailure(obj7);
                            str2 = "Failed to show inspector settings dialog";
                            ok0Var = ok0Var11;
                            activity = activity10;
                            obj = obj7;
                            if (((Boolean) obj).booleanValue()) {
                                if1 if1Var13 = ok0Var.j;
                                String str7 = ok0Var.l;
                                str3 = str2;
                                JsonObject jsonObject4 = ok0Var.n;
                                yj0Var.a = ok0Var;
                                yj0Var.b = rr3Var3;
                                yj0Var.c = closeable;
                                yj0Var.d = activity;
                                activity6 = activity;
                                yj0Var.k = 7;
                                if1Var13.getClass();
                                objA2 = if1.a(if1Var13, str7, jsonObject4, yj0Var);
                                if (objA2 == coroutine_suspended) {
                                    ok0Var7 = ok0Var;
                                    if (!((Boolean) objA2).booleanValue()) {
                                        yj0Var.a = rr3Var3;
                                        yj0Var.b = closeable;
                                        yj0Var.c = null;
                                        yj0Var.d = null;
                                        yj0Var.k = 8;
                                        if (ok0Var7.c(yj0Var) == coroutine_suspended) {
                                        }
                                        p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                                        CloseableKt.closeFinally(closeable, null);
                                        return unit8;
                                    }
                                    ok0Var6 = ok0Var7;
                                    activity7 = activity6;
                                    arrayList2 = new ArrayList();
                                    arrayList2.add("None");
                                    size4 = arrayList2.size() - 1;
                                    arrayList2.add("Shake");
                                    size5 = arrayList2.size() - 1;
                                    arrayList2.add("Flick");
                                    size6 = arrayList2.size() - 1;
                                    if1 if1Var14 = ok0Var6.j;
                                    yj0Var.a = ok0Var6;
                                    yj0Var.b = rr3Var3;
                                    yj0Var.c = closeable;
                                    yj0Var.d = activity7;
                                    yj0Var.e = arrayList2;
                                    yj0Var.f = size4;
                                    yj0Var.g = size5;
                                    yj0Var.h = size6;
                                    yj0Var.k = 9;
                                    if1Var14.getClass();
                                    objB2 = if1.b(if1Var14, yj0Var);
                                    if (objB2 != coroutine_suspended) {
                                        arrayList3 = arrayList2;
                                        i5 = size6;
                                        i6 = size5;
                                        ok0Var8 = ok0Var6;
                                        i7 = size4;
                                        obj5 = objB2;
                                        rr3VarA = rr3Var3;
                                        i8 = oj0.a[((og1) obj5).y().ordinal()];
                                        if (i8 != 1) {
                                            i7 = i5;
                                        } else if (i8 != 2) {
                                            i7 = i6;
                                        }
                                        final AtomicInteger atomicInteger9 = new AtomicInteger(i7);
                                        AlertDialog.Builder builder9 = new AlertDialog.Builder(activity7, R.style.Theme.Material.Dialog.Alert);
                                        builder9.setTitle("Setup gesture");
                                        builder9.setSingleChoiceItems((CharSequence[]) arrayList3.toArray(new String[0]), i7, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                            @Override // android.content.DialogInterface.OnClickListener
                                            public final void onClick(DialogInterface dialogInterface, int i110) {
                                                ok0.a(atomicInteger9, dialogInterface, i110);
                                            }
                                        });
                                        builder9.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                            @Override // android.content.DialogInterface.OnCancelListener
                                            public final void onCancel(DialogInterface dialogInterface) {
                                                ok0.b(this.f$0, dialogInterface);
                                            }
                                        });
                                        builder9.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                            @Override // android.content.DialogInterface.OnClickListener
                                            public final void onClick(DialogInterface dialogInterface, int i110) {
                                                ok0.b(this.f$0, dialogInterface, i110);
                                            }
                                        });
                                        ok0Var10 = ok0Var8;
                                        final int i110 = i7;
                                        ok0Var8 = ok0Var10;
                                        builder9.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                            @Override // android.content.DialogInterface.OnClickListener
                                            public final void onClick(DialogInterface dialogInterface, int i111) {
                                                ok0.a(this.f$0, atomicInteger9, i110, i5, i6, dialogInterface, i111);
                                            }
                                        });
                                        coroutineContext2 = ok0Var8.a;
                                        zj0Var2 = new zj0(builder9, null);
                                        yj0Var.a = ok0Var8;
                                        yj0Var.b = rr3VarA;
                                        yj0Var.c = closeable;
                                        yj0Var.d = null;
                                        yj0Var.e = null;
                                        yj0Var.k = 10;
                                        if (BuildersKt.withContext(coroutineContext2, zj0Var2, yj0Var) != coroutine_suspended) {
                                            closeable6 = closeable;
                                            Closeable closeable14 = closeable6;
                                            obj6 = p005kotlin.Unit.INSTANCE;
                                            if (obj6 instanceof i01) {
                                                xs3.a((i01) obj6, false);
                                            }
                                            CloseableKt.closeFinally(closeable14, null);
                                            return p005kotlin.Unit.INSTANCE;
                                        }
                                    }
                                }
                            } else {
                                activity6 = activity;
                                str3 = str2;
                                ok0Var6 = ok0Var;
                                activity7 = activity6;
                                arrayList2 = new ArrayList();
                                arrayList2.add("None");
                                size4 = arrayList2.size() - 1;
                                arrayList2.add("Shake");
                                size5 = arrayList2.size() - 1;
                                arrayList2.add("Flick");
                                size6 = arrayList2.size() - 1;
                                if1 if1Var15 = ok0Var6.j;
                                yj0Var.a = ok0Var6;
                                yj0Var.b = rr3Var3;
                                yj0Var.c = closeable;
                                yj0Var.d = activity7;
                                yj0Var.e = arrayList2;
                                yj0Var.f = size4;
                                yj0Var.g = size5;
                                yj0Var.h = size6;
                                yj0Var.k = 9;
                                if1Var15.getClass();
                                objB2 = if1.b(if1Var15, yj0Var);
                                if (objB2 != coroutine_suspended) {
                                    arrayList3 = arrayList2;
                                    i5 = size6;
                                    i6 = size5;
                                    ok0Var8 = ok0Var6;
                                    i7 = size4;
                                    obj5 = objB2;
                                    rr3VarA = rr3Var3;
                                    i8 = oj0.a[((og1) obj5).y().ordinal()];
                                    if (i8 != 1) {
                                        i7 = i5;
                                    } else if (i8 != 2) {
                                        i7 = i6;
                                    }
                                    final AtomicInteger atomicInteger10 = new AtomicInteger(i7);
                                    AlertDialog.Builder builder10 = new AlertDialog.Builder(activity7, R.style.Theme.Material.Dialog.Alert);
                                    builder10.setTitle("Setup gesture");
                                    builder10.setSingleChoiceItems((CharSequence[]) arrayList3.toArray(new String[0]), i7, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i111) {
                                            ok0.a(atomicInteger10, dialogInterface, i111);
                                        }
                                    });
                                    builder10.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                        @Override // android.content.DialogInterface.OnCancelListener
                                        public final void onCancel(DialogInterface dialogInterface) {
                                            ok0.b(this.f$0, dialogInterface);
                                        }
                                    });
                                    builder10.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i111) {
                                            ok0.b(this.f$0, dialogInterface, i111);
                                        }
                                    });
                                    ok0Var10 = ok0Var8;
                                    final int i111 = i7;
                                    ok0Var8 = ok0Var10;
                                    builder10.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public final void onClick(DialogInterface dialogInterface, int i112) {
                                            ok0.a(this.f$0, atomicInteger10, i111, i5, i6, dialogInterface, i112);
                                        }
                                    });
                                    coroutineContext2 = ok0Var8.a;
                                    zj0Var2 = new zj0(builder10, null);
                                    yj0Var.a = ok0Var8;
                                    yj0Var.b = rr3VarA;
                                    yj0Var.c = closeable;
                                    yj0Var.d = null;
                                    yj0Var.e = null;
                                    yj0Var.k = 10;
                                    if (BuildersKt.withContext(coroutineContext2, zj0Var2, yj0Var) != coroutine_suspended) {
                                        closeable6 = closeable;
                                        Closeable closeable15 = closeable6;
                                        obj6 = p005kotlin.Unit.INSTANCE;
                                        if (obj6 instanceof i01) {
                                            xs3.a((i01) obj6, false);
                                        }
                                        CloseableKt.closeFinally(closeable15, null);
                                        return p005kotlin.Unit.INSTANCE;
                                    }
                                }
                            }
                            return coroutine_suspended;
                        case 7:
                            Activity activity11 = yj0Var.d;
                            closeable = yj0Var.c;
                            rr3Var3 = (rr3) yj0Var.b;
                            ok0Var7 = (ok0) yj0Var.a;
                            p005kotlin.ResultKt.throwOnFailure(obj7);
                            activity6 = activity11;
                            objA2 = obj7;
                            str3 = "Failed to show inspector settings dialog";
                            if (!((Boolean) objA2).booleanValue()) {
                                yj0Var.a = rr3Var3;
                                yj0Var.b = closeable;
                                yj0Var.c = null;
                                yj0Var.d = null;
                                yj0Var.k = 8;
                                if (ok0Var7.c(yj0Var) == coroutine_suspended) {
                                }
                                p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                                CloseableKt.closeFinally(closeable, null);
                                return unit9;
                            }
                            ok0Var6 = ok0Var7;
                            activity7 = activity6;
                            arrayList2 = new ArrayList();
                            arrayList2.add("None");
                            size4 = arrayList2.size() - 1;
                            arrayList2.add("Shake");
                            size5 = arrayList2.size() - 1;
                            arrayList2.add("Flick");
                            size6 = arrayList2.size() - 1;
                            if1 if1Var16 = ok0Var6.j;
                            yj0Var.a = ok0Var6;
                            yj0Var.b = rr3Var3;
                            yj0Var.c = closeable;
                            yj0Var.d = activity7;
                            yj0Var.e = arrayList2;
                            yj0Var.f = size4;
                            yj0Var.g = size5;
                            yj0Var.h = size6;
                            yj0Var.k = 9;
                            if1Var16.getClass();
                            objB2 = if1.b(if1Var16, yj0Var);
                            if (objB2 != coroutine_suspended) {
                                arrayList3 = arrayList2;
                                i5 = size6;
                                i6 = size5;
                                ok0Var8 = ok0Var6;
                                i7 = size4;
                                obj5 = objB2;
                                rr3VarA = rr3Var3;
                                i8 = oj0.a[((og1) obj5).y().ordinal()];
                                if (i8 != 1) {
                                    i7 = i5;
                                } else if (i8 != 2) {
                                    i7 = i6;
                                }
                                final AtomicInteger atomicInteger11 = new AtomicInteger(i7);
                                AlertDialog.Builder builder11 = new AlertDialog.Builder(activity7, R.style.Theme.Material.Dialog.Alert);
                                builder11.setTitle("Setup gesture");
                                builder11.setSingleChoiceItems((CharSequence[]) arrayList3.toArray(new String[0]), i7, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i112) {
                                        ok0.a(atomicInteger11, dialogInterface, i112);
                                    }
                                });
                                builder11.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                    @Override // android.content.DialogInterface.OnCancelListener
                                    public final void onCancel(DialogInterface dialogInterface) {
                                        ok0.b(this.f$0, dialogInterface);
                                    }
                                });
                                builder11.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i112) {
                                        ok0.b(this.f$0, dialogInterface, i112);
                                    }
                                });
                                ok0Var10 = ok0Var8;
                                final int i112 = i7;
                                ok0Var8 = ok0Var10;
                                builder11.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i113) {
                                        ok0.a(this.f$0, atomicInteger11, i112, i5, i6, dialogInterface, i113);
                                    }
                                });
                                coroutineContext2 = ok0Var8.a;
                                zj0Var2 = new zj0(builder11, null);
                                yj0Var.a = ok0Var8;
                                yj0Var.b = rr3VarA;
                                yj0Var.c = closeable;
                                yj0Var.d = null;
                                yj0Var.e = null;
                                yj0Var.k = 10;
                                if (BuildersKt.withContext(coroutineContext2, zj0Var2, yj0Var) != coroutine_suspended) {
                                    closeable6 = closeable;
                                    Closeable closeable16 = closeable6;
                                    obj6 = p005kotlin.Unit.INSTANCE;
                                    if (obj6 instanceof i01) {
                                        xs3.a((i01) obj6, false);
                                    }
                                    CloseableKt.closeFinally(closeable16, null);
                                    return p005kotlin.Unit.INSTANCE;
                                }
                            }
                            return coroutine_suspended;
                        case 8:
                            closeable = yj0Var.b;
                            p005kotlin.ResultKt.throwOnFailure(obj7);
                            p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                            CloseableKt.closeFinally(closeable, null);
                            return unit10;
                        case 9:
                            int i20 = yj0Var.h;
                            int i21 = yj0Var.g;
                            i7 = yj0Var.f;
                            arrayList3 = yj0Var.e;
                            activity7 = yj0Var.d;
                            closeable = yj0Var.c;
                            rr3Var3 = (rr3) yj0Var.b;
                            ok0 ok0Var12 = (ok0) yj0Var.a;
                            p005kotlin.ResultKt.throwOnFailure(obj7);
                            ok0Var8 = ok0Var12;
                            i5 = i20;
                            i6 = i21;
                            str3 = "Failed to show inspector settings dialog";
                            obj5 = obj7;
                            rr3VarA = rr3Var3;
                            i8 = oj0.a[((og1) obj5).y().ordinal()];
                            if (i8 != 1) {
                                i7 = i5;
                            } else if (i8 != 2) {
                                i7 = i6;
                            }
                            final AtomicInteger atomicInteger12 = new AtomicInteger(i7);
                            AlertDialog.Builder builder12 = new AlertDialog.Builder(activity7, R.style.Theme.Material.Dialog.Alert);
                            builder12.setTitle("Setup gesture");
                            builder12.setSingleChoiceItems((CharSequence[]) arrayList3.toArray(new String[0]), i7, new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda8
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i113) {
                                    ok0.a(atomicInteger12, dialogInterface, i113);
                                }
                            });
                            builder12.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda9
                                @Override // android.content.DialogInterface.OnCancelListener
                                public final void onCancel(DialogInterface dialogInterface) {
                                    ok0.b(this.f$0, dialogInterface);
                                }
                            });
                            builder12.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda10
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i113) {
                                    ok0.b(this.f$0, dialogInterface, i113);
                                }
                            });
                            ok0Var10 = ok0Var8;
                            final int i113 = i7;
                            ok0Var8 = ok0Var10;
                            builder12.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: ads_mobile_sdk.ok0$$ExternalSyntheticLambda11
                                @Override // android.content.DialogInterface.OnClickListener
                                public final void onClick(DialogInterface dialogInterface, int i114) {
                                    ok0.a(this.f$0, atomicInteger12, i113, i5, i6, dialogInterface, i114);
                                }
                            });
                            coroutineContext2 = ok0Var8.a;
                            zj0Var2 = new zj0(builder12, null);
                            yj0Var.a = ok0Var8;
                            yj0Var.b = rr3VarA;
                            yj0Var.c = closeable;
                            yj0Var.d = null;
                            yj0Var.e = null;
                            yj0Var.k = 10;
                            if (BuildersKt.withContext(coroutineContext2, zj0Var2, yj0Var) != coroutine_suspended) {
                                closeable6 = closeable;
                                Closeable closeable17 = closeable6;
                                obj6 = p005kotlin.Unit.INSTANCE;
                                if (obj6 instanceof i01) {
                                    xs3.a((i01) obj6, false);
                                }
                                CloseableKt.closeFinally(closeable17, null);
                                return p005kotlin.Unit.INSTANCE;
                            }
                            return coroutine_suspended;
                        case 10:
                            closeable6 = yj0Var.c;
                            rr3VarA = (rr3) yj0Var.b;
                            ok0Var9 = (ok0) yj0Var.a;
                            try {
                                p005kotlin.ResultKt.throwOnFailure(obj7);
                                break;
                            } catch (Throwable th17) {
                                exception = th17;
                                str3 = "Failed to show inspector settings dialog";
                                Intrinsics.checkNotNullParameter(exception, "exception");
                                rr3 rr3VarA5 = hs3.a();
                                rr3VarA5.e().m = false;
                                rr3VarA5.a(exception);
                                ok0Var9.k.set(false);
                                ((as3) ok0Var9.d).a(str3, exception);
                                break;
                            }
                            Closeable closeable18 = closeable6;
                            obj6 = p005kotlin.Unit.INSTANCE;
                            if (obj6 instanceof i01) {
                                xs3.a((i01) obj6, false);
                            }
                            CloseableKt.closeFinally(closeable18, null);
                            return p005kotlin.Unit.INSTANCE;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } catch (Throwable th18) {
                    th = th18;
                }
            } catch (Throwable th19) {
                th = th19;
            }
        } catch (Throwable th20) {
            th = th20;
        }
    }
}
