package kotlin;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import com.google.gson.JsonObject;
import com.tapjoy.TJAdUnitConstants;
import java.io.Closeable;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.TimeoutCancellationException;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d62 extends SuspendLambda implements Function1 {
    public Object a;
    public Closeable b;
    public Closeable c;
    public Object d;
    public Object e;
    public rr3 f;
    public int g;
    public final /* synthetic */ JsonObject h;
    public final /* synthetic */ j62 i;
    public final /* synthetic */ eo2 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d62(eo2 eo2Var, j62 j62Var, JsonObject jsonObject, Continuation continuation) {
        super(1, continuation);
        this.h = jsonObject;
        this.i = j62Var;
        this.j = eo2Var;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        JsonObject jsonObject = this.h;
        return new d62(this.j, this.i, jsonObject, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((d62) create((Continuation) obj)).invokeSuspend(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0120 A[Catch: all -> 0x0200, TRY_LEAVE, TryCatch #0 {all -> 0x0200, blocks: (B:35:0x011a, B:37:0x0120, B:40:0x012a, B:42:0x012e, B:99:0x01fa, B:100:0x01ff), top: B:132:0x011a }] */
    /* JADX WARN: Code duplicated, block: B:40:0x012a A[Catch: all -> 0x0200, TRY_ENTER, TryCatch #0 {all -> 0x0200, blocks: (B:35:0x011a, B:37:0x0120, B:40:0x012a, B:42:0x012e, B:99:0x01fa, B:100:0x01ff), top: B:132:0x011a }] */
    /* JADX WARN: Code duplicated, block: B:42:0x012e A[Catch: all -> 0x0200, TRY_LEAVE, TryCatch #0 {all -> 0x0200, blocks: (B:35:0x011a, B:37:0x0120, B:40:0x012a, B:42:0x012e, B:99:0x01fa, B:100:0x01ff), top: B:132:0x011a }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0158  */
    /* JADX WARN: Code duplicated, block: B:49:0x0161 A[Catch: all -> 0x0168, TRY_LEAVE, TryCatch #3 {all -> 0x0168, blocks: (B:47:0x015b, B:49:0x0161), top: B:137:0x015b }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0173 A[Catch: all -> 0x01b2, TryCatch #6 {all -> 0x01b2, blocks: (B:54:0x016c, B:56:0x0173, B:57:0x0190), top: B:142:0x016c }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0190 A[Catch: all -> 0x01b2, TRY_LEAVE, TryCatch #6 {all -> 0x01b2, blocks: (B:54:0x016c, B:56:0x0173, B:57:0x0190), top: B:142:0x016c }] */
    /* JADX WARN: Code duplicated, block: B:60:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:72:0x01c1 A[Catch: all -> 0x01f0, TryCatch #5 {all -> 0x01f0, blocks: (B:70:0x01ba, B:72:0x01c1, B:74:0x01c5, B:76:0x01c9, B:77:0x01cc, B:79:0x01d0, B:81:0x01d4, B:83:0x01d8, B:84:0x01d9, B:85:0x01de, B:86:0x01df, B:87:0x01e6, B:88:0x01e7, B:89:0x01ee, B:90:0x01ef), top: B:141:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:74:0x01c5 A[Catch: all -> 0x01f0, TryCatch #5 {all -> 0x01f0, blocks: (B:70:0x01ba, B:72:0x01c1, B:74:0x01c5, B:76:0x01c9, B:77:0x01cc, B:79:0x01d0, B:81:0x01d4, B:83:0x01d8, B:84:0x01d9, B:85:0x01de, B:86:0x01df, B:87:0x01e6, B:88:0x01e7, B:89:0x01ee, B:90:0x01ef), top: B:141:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01d0 A[Catch: all -> 0x01f0, TryCatch #5 {all -> 0x01f0, blocks: (B:70:0x01ba, B:72:0x01c1, B:74:0x01c5, B:76:0x01c9, B:77:0x01cc, B:79:0x01d0, B:81:0x01d4, B:83:0x01d8, B:84:0x01d9, B:85:0x01de, B:86:0x01df, B:87:0x01e6, B:88:0x01e7, B:89:0x01ee, B:90:0x01ef), top: B:141:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:81:0x01d4 A[Catch: all -> 0x01f0, TryCatch #5 {all -> 0x01f0, blocks: (B:70:0x01ba, B:72:0x01c1, B:74:0x01c5, B:76:0x01c9, B:77:0x01cc, B:79:0x01d0, B:81:0x01d4, B:83:0x01d8, B:84:0x01d9, B:85:0x01de, B:86:0x01df, B:87:0x01e6, B:88:0x01e7, B:89:0x01ee, B:90:0x01ef), top: B:141:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01d8 A[Catch: all -> 0x01f0, TryCatch #5 {all -> 0x01f0, blocks: (B:70:0x01ba, B:72:0x01c1, B:74:0x01c5, B:76:0x01c9, B:77:0x01cc, B:79:0x01d0, B:81:0x01d4, B:83:0x01d8, B:84:0x01d9, B:85:0x01de, B:86:0x01df, B:87:0x01e6, B:88:0x01e7, B:89:0x01ee, B:90:0x01ef), top: B:141:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01d9 A[Catch: all -> 0x01f0, TryCatch #5 {all -> 0x01f0, blocks: (B:70:0x01ba, B:72:0x01c1, B:74:0x01c5, B:76:0x01c9, B:77:0x01cc, B:79:0x01d0, B:81:0x01d4, B:83:0x01d8, B:84:0x01d9, B:85:0x01de, B:86:0x01df, B:87:0x01e6, B:88:0x01e7, B:89:0x01ee, B:90:0x01ef), top: B:141:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01df A[Catch: all -> 0x01f0, TryCatch #5 {all -> 0x01f0, blocks: (B:70:0x01ba, B:72:0x01c1, B:74:0x01c5, B:76:0x01c9, B:77:0x01cc, B:79:0x01d0, B:81:0x01d4, B:83:0x01d8, B:84:0x01d9, B:85:0x01de, B:86:0x01df, B:87:0x01e6, B:88:0x01e7, B:89:0x01ee, B:90:0x01ef), top: B:141:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01e7 A[Catch: all -> 0x01f0, TryCatch #5 {all -> 0x01f0, blocks: (B:70:0x01ba, B:72:0x01c1, B:74:0x01c5, B:76:0x01c9, B:77:0x01cc, B:79:0x01d0, B:81:0x01d4, B:83:0x01d8, B:84:0x01d9, B:85:0x01de, B:86:0x01df, B:87:0x01e6, B:88:0x01e7, B:89:0x01ee, B:90:0x01ef), top: B:141:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:90:0x01ef A[Catch: all -> 0x01f0, TRY_LEAVE, TryCatch #5 {all -> 0x01f0, blocks: (B:70:0x01ba, B:72:0x01c1, B:74:0x01c5, B:76:0x01c9, B:77:0x01cc, B:79:0x01d0, B:81:0x01d4, B:83:0x01d8, B:84:0x01d9, B:85:0x01de, B:86:0x01df, B:87:0x01e6, B:88:0x01e7, B:89:0x01ee, B:90:0x01ef), top: B:141:0x01ba }] */
    /* JADX WARN: Code duplicated, block: B:99:0x01fa A[Catch: all -> 0x0200, TRY_ENTER, TryCatch #0 {all -> 0x0200, blocks: (B:35:0x011a, B:37:0x0120, B:40:0x012a, B:42:0x012e, B:99:0x01fa, B:100:0x01ff), top: B:132:0x011a }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v23, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v39, types: [ads_mobile_sdk.rr3] */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v6 */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Closeable closeable;
        ?? r2;
        String strA;
        v14 v14Var;
        Object objA;
        Closeable closeable2;
        Closeable closeable3;
        j62 j62Var;
        String str;
        int i;
        v01 v01Var;
        r31 r31Var;
        rr3 rr3VarA;
        rr3 rr3Var;
        Closeable closeable4;
        Object objA2;
        Closeable closeable5;
        v01 v01Var2;
        Object objA3;
        r31 r31Var2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            s11 s11Var = s11.CUI_NAME_NATIVE_AD_MEDIA_LOAD;
            JsonObject jsonObject = this.h;
            j62 j62Var2 = this.i;
            eo2 eo2Var = this.j;
            WeakHashMap weakHashMap = hs3.a;
            rr3 rr3VarA2 = hs3.a(s11Var, CollectionsKt.emptyList(), true);
            try {
                ds1 ds1Var = ds1.a;
                String strA2 = ds1.a(jsonObject, "base_url", "");
                strA = ds1.a(jsonObject, TJAdUnitConstants.String.HTML, "");
                int iA = ds1.a(jsonObject, "width", 0);
                int iA2 = ds1.a(jsonObject, "height", 0);
                if (iA <= 0 || iA2 <= 0) {
                    v14Var = new v14(u14.DEFAULT, 0, 0, 14);
                } else {
                    Context context = j62Var2.a;
                    Intrinsics.checkNotNullParameter(context, "<this>");
                    Intrinsics.checkNotNullParameter(context, "<this>");
                    DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                    Intrinsics.checkNotNullExpressionValue(displayMetrics, "getDisplayMetrics(...)");
                    int iCeil = (int) Math.ceil(TypedValue.applyDimension(1, iA, displayMetrics));
                    Context context2 = j62Var2.a;
                    Intrinsics.checkNotNullParameter(context2, "<this>");
                    Intrinsics.checkNotNullParameter(context2, "<this>");
                    DisplayMetrics displayMetrics2 = context2.getResources().getDisplayMetrics();
                    Intrinsics.checkNotNullExpressionValue(displayMetrics2, "getDisplayMetrics(...)");
                    v14Var = new v14(u14.FIXED_RECTANGLE, iCeil, (int) Math.ceil(TypedValue.applyDimension(1, iA2, displayMetrics2)), 8);
                }
                this.a = j62Var2;
                this.b = rr3VarA2;
                this.c = rr3VarA2;
                this.d = strA2;
                this.e = strA;
                this.g = 1;
                objA = j62.a(j62Var2, v14Var, eo2Var, this);
                if (objA != coroutine_suspended) {
                    closeable2 = rr3VarA2;
                    closeable3 = closeable2;
                    j62Var = j62Var2;
                    str = strA2;
                    i = 2;
                    v01Var = (v01) objA;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                        CloseableKt.closeFinally(closeable2, null);
                        return null;
                    }
                    if (v01Var instanceof q01) {
                        throw new p005kotlin.NoWhenBranchMatchedException();
                    }
                    r31Var = (r31) ((q01) v01Var).b;
                    s11 s11Var2 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                    WeakHashMap weakHashMap2 = hs3.a;
                    rr3VarA = hs3.a(s11Var2, CollectionsKt.emptyList(), true);
                    this.a = j62Var;
                    this.b = closeable3;
                    this.c = closeable2;
                    this.d = r31Var;
                    this.e = rr3VarA;
                    this.f = rr3VarA;
                    this.g = i;
                    objA2 = r31.a(r31Var, strA, str, true, (Continuation) this, 12);
                    if (objA2 != coroutine_suspended) {
                        closeable5 = closeable2;
                        rr3Var = rr3VarA;
                        closeable4 = closeable3;
                        v01Var2 = (v01) objA2;
                        if (v01Var2 instanceof i01) {
                            xs3.a((i01) v01Var2, false);
                        }
                        CloseableKt.closeFinally(rr3VarA, null);
                        if (!(v01Var2 instanceof i01)) {
                            BuildersKt__Builders_commonKt.launch$default(j62Var.b, NonCancellable.INSTANCE, null, new c62(r31Var, null), 2, null);
                            xs3.a((i01) v01Var2, false);
                            r31Var2 = null;
                        } else {
                            this.a = closeable4;
                            this.b = closeable5;
                            this.c = null;
                            this.d = null;
                            this.e = null;
                            this.f = null;
                            this.g = 3;
                            objA3 = j62.a(j62Var, r31Var, this);
                            if (objA3 != coroutine_suspended) {
                                closeable = closeable5;
                                r2 = closeable4;
                                r31Var2 = (r31) objA3;
                                closeable5 = closeable;
                            }
                        }
                        CloseableKt.closeFinally(closeable5, null);
                        return r31Var2;
                    }
                }
                return coroutine_suspended;
            } catch (Throwable th) {
                th = th;
                closeable = rr3VarA2;
                r2 = closeable;
            }
        } else if (i2 == 1) {
            String str2 = (String) this.e;
            String str3 = (String) this.d;
            Closeable closeable6 = this.c;
            rr3 rr3Var2 = (rr3) this.b;
            j62Var = (j62) this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                closeable3 = rr3Var2;
                i = 2;
                coroutine_suspended = coroutine_suspended;
                closeable2 = closeable6;
                str = str3;
                strA = str2;
                objA = obj;
                try {
                    v01Var = (v01) objA;
                    if (v01Var instanceof i01) {
                        xs3.a((i01) v01Var, false);
                        CloseableKt.closeFinally(closeable2, null);
                        return null;
                    }
                    if (v01Var instanceof q01) {
                        throw new p005kotlin.NoWhenBranchMatchedException();
                    }
                    r31Var = (r31) ((q01) v01Var).b;
                    s11 s11Var3 = s11.CUI_NAME_CREATIVE_WEBVIEW_LOAD;
                    WeakHashMap weakHashMap3 = hs3.a;
                    rr3VarA = hs3.a(s11Var3, CollectionsKt.emptyList(), true);
                    try {
                        this.a = j62Var;
                        this.b = closeable3;
                        this.c = closeable2;
                        this.d = r31Var;
                        this.e = rr3VarA;
                        this.f = rr3VarA;
                        this.g = i;
                        objA2 = r31.a(r31Var, strA, str, true, (Continuation) this, 12);
                        if (objA2 != coroutine_suspended) {
                            closeable5 = closeable2;
                            rr3Var = rr3VarA;
                            closeable4 = closeable3;
                            v01Var2 = (v01) objA2;
                            if (v01Var2 instanceof i01) {
                                xs3.a((i01) v01Var2, false);
                            }
                            CloseableKt.closeFinally(rr3VarA, null);
                            if (!(v01Var2 instanceof i01)) {
                                BuildersKt__Builders_commonKt.launch$default(j62Var.b, NonCancellable.INSTANCE, null, new c62(r31Var, null), 2, null);
                                xs3.a((i01) v01Var2, false);
                                r31Var2 = null;
                            } else {
                                this.a = closeable4;
                                this.b = closeable5;
                                this.c = null;
                                this.d = null;
                                this.e = null;
                                this.f = null;
                                this.g = 3;
                                objA3 = j62.a(j62Var, r31Var, this);
                                if (objA3 != coroutine_suspended) {
                                    closeable = closeable5;
                                    r2 = closeable4;
                                    r31Var2 = (r31) objA3;
                                    closeable5 = closeable;
                                }
                            }
                            CloseableKt.closeFinally(closeable5, null);
                            return r31Var2;
                        }
                        return coroutine_suspended;
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = closeable2;
                        rr3Var = rr3VarA;
                        closeable4 = closeable3;
                        rr3Var.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException)) {
                            rr3Var.a(th);
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
                } catch (Throwable th3) {
                    th = th3;
                    closeable = closeable2;
                    r2 = closeable3;
                }
            } catch (Throwable th4) {
                th = th4;
                closeable = closeable6;
                r2 = rr3Var2;
            }
        } else if (i2 == 2) {
            rr3 rr3Var3 = this.f;
            rr3Var = (rr3) this.e;
            r31Var = (r31) this.d;
            closeable5 = this.c;
            closeable4 = (rr3) this.b;
            j62 j62Var3 = (j62) this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                coroutine_suspended = coroutine_suspended;
                j62Var = j62Var3;
                rr3VarA = rr3Var3;
                objA2 = obj;
                try {
                    v01Var2 = (v01) objA2;
                    if (v01Var2 instanceof i01) {
                        xs3.a((i01) v01Var2, false);
                    }
                    try {
                        CloseableKt.closeFinally(rr3VarA, null);
                        if (!(v01Var2 instanceof i01)) {
                            this.a = closeable4;
                            this.b = closeable5;
                            this.c = null;
                            this.d = null;
                            this.e = null;
                            this.f = null;
                            this.g = 3;
                            objA3 = j62.a(j62Var, r31Var, this);
                            if (objA3 != coroutine_suspended) {
                                closeable = closeable5;
                                r2 = closeable4;
                                r31Var2 = (r31) objA3;
                                closeable5 = closeable;
                            }
                            return coroutine_suspended;
                        }
                        BuildersKt__Builders_commonKt.launch$default(j62Var.b, NonCancellable.INSTANCE, null, new c62(r31Var, null), 2, null);
                        xs3.a((i01) v01Var2, false);
                        r31Var2 = null;
                        CloseableKt.closeFinally(closeable5, null);
                        return r31Var2;
                    } catch (Throwable th5) {
                        th = th5;
                        closeable = closeable5;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    closeable = closeable5;
                    try {
                        rr3Var.b(th);
                        if (th instanceof v24) {
                            throw th;
                        }
                        if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                            rr3Var.a(th);
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
                    } catch (Throwable th7) {
                        try {
                            throw th7;
                        } catch (Throwable th8) {
                            try {
                                CloseableKt.closeFinally(rr3VarA, th7);
                                throw th8;
                            } catch (Throwable th9) {
                                th = th9;
                            }
                        }
                    }
                }
            } catch (Throwable th10) {
                th = th10;
                rr3VarA = rr3Var3;
                closeable = closeable5;
                rr3Var.b(th);
                if (th instanceof v24) {
                    throw th;
                }
                if (!(th instanceof TimeoutCancellationException)) {
                    rr3Var.a(th);
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
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            closeable = this.b;
            r2 = (rr3) this.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                objA3 = obj;
                r2 = r2;
                r31Var2 = (r31) objA3;
                closeable5 = closeable;
                CloseableKt.closeFinally(closeable5, null);
                return r31Var2;
            } catch (Throwable th11) {
                th = th11;
            }
        }
        r2 = closeable4;
        try {
            r2.b(th);
            if (th instanceof v24) {
                throw th;
            }
            if (!(th instanceof TimeoutCancellationException) && !(th instanceof CancellationException)) {
                r2.a(th);
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
        } catch (Throwable th12) {
            try {
                throw th12;
            } catch (Throwable th13) {
                CloseableKt.closeFinally(closeable, th12);
                throw th13;
            }
        }
    }
}
