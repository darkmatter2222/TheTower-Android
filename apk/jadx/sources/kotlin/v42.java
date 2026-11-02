package kotlin;

import android.graphics.Color;
import android.net.Uri;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;
import com.google.common.base.Splitter;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.InterfaceC3669k1;
import java.util.List;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class v42 {
    public static final int h;
    public static final int i;
    public final NativeRequest a;
    public final xs b;
    public final ur3 c;
    public final j62 d;
    public final iz3 e;
    public final CoroutineScope f;
    public final g83 g;

    static {
        int iRgb = Color.rgb(12, 174, InterfaceC3669k1.c.b.g);
        h = Color.rgb(204, 204, 204);
        i = iRgb;
    }

    public v42(NativeRequest nativeRequest, xs bitmapLoader, ur3 traceLogger, j62 nativeMediaAssetLoader, iz3 webViewFactory, CoroutineContext uiContext, CoroutineScope uiScope, g83 traceCreator) {
        Intrinsics.checkNotNullParameter(nativeRequest, "nativeRequest");
        Intrinsics.checkNotNullParameter(bitmapLoader, "bitmapLoader");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(nativeMediaAssetLoader, "nativeMediaAssetLoader");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(uiContext, "uiContext");
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(traceCreator, "traceCreator");
        this.a = nativeRequest;
        this.b = bitmapLoader;
        this.c = traceLogger;
        this.d = nativeMediaAssetLoader;
        this.e = webViewFactory;
        this.f = uiScope;
        this.g = traceCreator;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006b  */
    /* JADX WARN: Code duplicated, block: B:33:0x0086  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
    
        if (r8 == r1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007b, code lost:
    
        if (r8 == r1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007d, code lost:
    
        return r1;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x007b -> B:30:0x007e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.google.gson.JsonArray r7, p005kotlin.coroutines.Continuation r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlin.q42
            if (r0 == 0) goto L13
            r0 = r8
            ads_mobile_sdk.q42 r0 = (kotlin.q42) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.q42 r0 = new ads_mobile_sdk.q42
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.util.Iterator r7 = r0.b
            java.util.Collection r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L7e
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L58
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r8)
            if (r7 == 0) goto L89
            boolean r8 = r7.isEmpty()
            if (r8 == 0) goto L48
            goto L89
        L48:
            ads_mobile_sdk.s42 r8 = new ads_mobile_sdk.s42
            r2 = 0
            r5 = 0
            r8.<init>(r6, r7, r2, r5)
            r0.e = r4
            java.lang.Object r8 = kotlinx.coroutines.CoroutineScopeKt.coroutineScope(r8, r0)
            if (r8 != r1) goto L58
            goto L7d
        L58:
            java.util.List r8 = (java.util.List) r8
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r8 = r8.iterator()
            r2 = r7
            r7 = r8
        L65:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto L86
            java.lang.Object r8 = r7.next()
            kotlinx.coroutines.Deferred r8 = (kotlinx.coroutines.Deferred) r8
            r0.a = r2
            r0.b = r7
            r0.e = r3
            java.lang.Object r8 = r8.await(r0)
            if (r8 != r1) goto L7e
        L7d:
            return r1
        L7e:
            ads_mobile_sdk.km1 r8 = (kotlin.km1) r8
            if (r8 == 0) goto L65
            r2.add(r8)
            goto L65
        L86:
            java.util.List r2 = (java.util.List) r2
            return r2
        L89:
            java.util.List r7 = p005kotlin.collections.CollectionsKt.emptyList()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.v42.a(com.google.gson.JsonArray, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009c, code lost:
    
        if (r14 == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00fa, code lost:
    
        if (r14 == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fc, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.google.gson.JsonObject r12, kotlin.eo2 r13, p005kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instruction units count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.v42.a(com.google.gson.JsonObject, ads_mobile_sdk.eo2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(JsonObject jsonObject, String str, Continuation continuation) {
        n42 n42Var;
        JsonObject jsonObject2;
        v42 v42Var;
        if (continuation instanceof n42) {
            n42Var = (n42) continuation;
            int i2 = n42Var.e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                n42Var.e = i2 - Integer.MIN_VALUE;
            } else {
                n42Var = new n42(this, continuation);
            }
        } else {
            n42Var = new n42(this, continuation);
        }
        Object obj = n42Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = n42Var.e;
        if (i3 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ds1 ds1Var = ds1.a;
            JsonObject jsonObjectA = ds1.a(jsonObject, str, (JsonObject) null);
            if (jsonObjectA == null) {
                return null;
            }
            JsonArray jsonArrayE = ds1.e(jsonObjectA, "images");
            JsonObject jsonObjectA2 = ds1.a(jsonObjectA, "image", (JsonObject) null);
            if (jsonArrayE == null && jsonObjectA2 != null) {
                jsonArrayE = new JsonArray();
                jsonArrayE.add(jsonObjectA2);
            }
            n42Var.a = this;
            n42Var.b = jsonObjectA;
            n42Var.e = 1;
            Object objA = a(jsonArrayE, n42Var);
            if (objA == coroutine_suspended) {
                return coroutine_suspended;
            }
            jsonObject2 = jsonObjectA;
            obj = objA;
            v42Var = this;
        } else {
            if (i3 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jsonObject2 = n42Var.b;
            v42Var = n42Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        List list = (List) obj;
        v42Var.getClass();
        if (list.isEmpty()) {
            return null;
        }
        ds1 ds1Var2 = ds1.a;
        String strA = ds1.a(jsonObject2, C3510b4.i.K0, "");
        Integer numA = m42.a(jsonObject2, "bg_color");
        Integer numA2 = m42.a(jsonObject2, "text_color");
        int iA = ds1.a(jsonObject2, "text_size", -1);
        boolean zA = ds1.a(jsonObject2, "allow_pub_rendering", false);
        Duration.Companion companion = Duration.INSTANCE;
        int iA2 = ds1.a(jsonObject2, "animation_ms", 1000);
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        long duration = DurationKt.toDuration(iA2, durationUnit);
        long duration2 = DurationKt.toDuration(ds1.a(jsonObject2, "presentation_ms", 4000), durationUnit);
        int iIntValue = numA != null ? numA.intValue() : h;
        int iIntValue2 = numA2 != null ? numA2.intValue() : i;
        Integer numValueOf = iA > 0 ? Integer.valueOf(iA) : null;
        return new ak1(strA, list, iIntValue, iIntValue2, numValueOf != null ? numValueOf.intValue() : 12, Duration.m4396plusLRDsOJo(duration2, duration), v42Var.a.getAdChoicesPlacement(), zA);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:52:0x0100  */
    /* JADX WARN: Code duplicated, block: B:56:0x0114  */
    /* JADX WARN: Code duplicated, block: B:57:0x0119  */
    /* JADX WARN: Code duplicated, block: B:59:0x011d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x011f  */
    /* JADX WARN: Code duplicated, block: B:62:0x0127  */
    /* JADX WARN: Code duplicated, block: B:64:0x012f  */
    /* JADX WARN: Code duplicated, block: B:66:0x0135  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final Object a(JsonObject jsonObject, boolean z, Continuation continuation) {
        o42 o42Var;
        int i2;
        String str;
        String str2;
        double d;
        v42 v42Var;
        int i3;
        v01 j01Var;
        int i4;
        double d2;
        String str3;
        int i5;
        boolean zA;
        JsonObject jsonObject2 = jsonObject;
        if (continuation instanceof o42) {
            o42Var = (o42) continuation;
            int i6 = o42Var.i;
            if ((i6 & Integer.MIN_VALUE) != 0) {
                o42Var.i = i6 - Integer.MIN_VALUE;
            } else {
                o42Var = new o42(this, continuation);
            }
        } else {
            o42Var = new o42(this, continuation);
        }
        o42 o42Var2 = o42Var;
        Object objA = o42Var2.g;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i7 = o42Var2.i;
        if (i7 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objA);
            if (jsonObject2 == null) {
                return null;
            }
            ds1 ds1Var = ds1.a;
            String strA = ds1.a(jsonObject2, "url", "");
            if (strA.length() == 0) {
                return null;
            }
            double dA = ds1.a(jsonObject2, "scale", 1.0d);
            boolean zA2 = ds1.a(jsonObject2, "is_transparent", true);
            int iA = ds1.a(jsonObject2, "width", -1);
            int iA2 = ds1.a(jsonObject2, "height", -1);
            if (z) {
                Uri uri = Uri.parse(strA);
                Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
                return new km1(null, uri, dA, iA, iA2);
            }
            i2 = iA2;
            try {
                xs xsVar = this.b;
                o42Var2.a = this;
                o42Var2.b = jsonObject2;
                o42Var2.c = strA;
                o42Var2.d = dA;
                o42Var2.e = iA;
                o42Var2.f = i2;
                o42Var2.i = 1;
                xsVar.getClass();
                str = strA;
                try {
                    objA = xs.a(xsVar, str, dA, zA2, o42Var2);
                    if (objA == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    str2 = str;
                    d = dA;
                    v42Var = this;
                    i3 = iA;
                    j01Var = (v01) objA;
                } catch (Exception e) {
                    e = e;
                    str2 = str;
                    d = dA;
                    v42Var = this;
                    i3 = iA;
                    ((as3) v42Var.c).a("Error loading bitmap.", (Throwable) e);
                    j01Var = new j01(e, null, null, 6);
                    i4 = i3;
                    d2 = d;
                    str3 = str2;
                    i5 = i2;
                    if (j01Var instanceof q01) {
                        p42 block = new p42(j01Var, str3, d2, i4, i5);
                        Intrinsics.checkNotNullParameter(block, "block");
                        j01Var = new q01(block.invoke());
                    } else if (!(j01Var instanceof i01)) {
                        throw new p005kotlin.NoWhenBranchMatchedException();
                    }
                    ds1 ds1Var2 = ds1.a;
                    zA = ds1.a(jsonObject2, "require", false);
                    v42Var.getClass();
                    if (j01Var instanceof q01) {
                        return ((q01) j01Var).b;
                    }
                    if (!(j01Var instanceof i01)) {
                        throw new p005kotlin.NoWhenBranchMatchedException();
                    }
                    if (zA) {
                        throw new w01((i01) j01Var);
                    }
                    Splitter splitter = f01.a;
                    f01.b("Error during loading assets.", null);
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                str = strA;
            }
        } else {
            if (i7 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i8 = o42Var2.f;
            i3 = o42Var2.e;
            d = o42Var2.d;
            str2 = o42Var2.c;
            JsonObject jsonObject3 = o42Var2.b;
            v42Var = o42Var2.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(objA);
                i2 = i8;
                jsonObject2 = jsonObject3;
                try {
                    j01Var = (v01) objA;
                } catch (Exception e3) {
                    e = e3;
                    ((as3) v42Var.c).a("Error loading bitmap.", (Throwable) e);
                    j01Var = new j01(e, null, null, 6);
                }
            } catch (Exception e4) {
                e = e4;
                i2 = i8;
                jsonObject2 = jsonObject3;
                ((as3) v42Var.c).a("Error loading bitmap.", (Throwable) e);
                j01Var = new j01(e, null, null, 6);
                i4 = i3;
                d2 = d;
                str3 = str2;
                i5 = i2;
                if (j01Var instanceof q01) {
                    p42 block2 = new p42(j01Var, str3, d2, i4, i5);
                    Intrinsics.checkNotNullParameter(block2, "block");
                    try {
                        j01Var = new q01(block2.invoke());
                    } catch (Exception e5) {
                        j01Var = new j01(e5, null, null, 6);
                    }
                } else if (!(j01Var instanceof i01)) {
                    throw new p005kotlin.NoWhenBranchMatchedException();
                }
                ds1 ds1Var3 = ds1.a;
                zA = ds1.a(jsonObject2, "require", false);
                v42Var.getClass();
                if (j01Var instanceof q01) {
                    return ((q01) j01Var).b;
                }
                if (!(j01Var instanceof i01)) {
                    throw new p005kotlin.NoWhenBranchMatchedException();
                }
                if (zA) {
                    throw new w01((i01) j01Var);
                }
                Splitter splitter2 = f01.a;
                f01.b("Error during loading assets.", null);
                return null;
            }
        }
        i4 = i3;
        d2 = d;
        str3 = str2;
        i5 = i2;
        if (j01Var instanceof q01) {
            p42 block3 = new p42(j01Var, str3, d2, i4, i5);
            Intrinsics.checkNotNullParameter(block3, "block");
            j01Var = new q01(block3.invoke());
        } else if (!(j01Var instanceof i01)) {
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        ds1 ds1Var4 = ds1.a;
        zA = ds1.a(jsonObject2, "require", false);
        v42Var.getClass();
        if (j01Var instanceof q01) {
            return ((q01) j01Var).b;
        }
        if (!(j01Var instanceof i01)) {
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        if (zA) {
            throw new w01((i01) j01Var);
        }
        Splitter splitter3 = f01.a;
        f01.b("Error during loading assets.", null);
        return null;
    }
}
