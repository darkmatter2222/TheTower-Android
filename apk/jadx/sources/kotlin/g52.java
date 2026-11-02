package kotlin;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.JsonObject;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g52 {
    public final v42 a;

    public g52(v42 nativeAssetsLoader) {
        Intrinsics.checkNotNullParameter(nativeAssetsLoader, "nativeAssetsLoader");
        this.a = nativeAssetsLoader;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(g52 g52Var, JsonObject jsonObject, Continuation continuation) {
        c52 c52Var;
        String str;
        g52Var.getClass();
        if (continuation instanceof c52) {
            c52Var = (c52) continuation;
            int i = c52Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                c52Var.d = i - Integer.MIN_VALUE;
            } else {
                c52Var = new c52(g52Var, continuation);
            }
        } else {
            c52Var = new c52(g52Var, continuation);
        }
        Object obj = c52Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c52Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ds1 ds1Var = ds1.a;
            String strA = ds1.a(jsonObject, "name", "");
            if (strA.length() != 0) {
                String strA2 = ds1.a(jsonObject, "type", "");
                if (Intrinsics.areEqual(strA2, TypedValues.Custom.S_STRING)) {
                    return new ec0(strA, ds1.a(jsonObject, "string_value", ""));
                }
                if (Intrinsics.areEqual(strA2, "image")) {
                    v42 v42Var = g52Var.a;
                    c52Var.a = strA;
                    c52Var.d = 1;
                    v42Var.getClass();
                    Object objA = v42Var.a(ds1.a(jsonObject, "image_value", (JsonObject) null), v42Var.a.getIsImageLoadingDisabled(), c52Var);
                    if (objA == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj = objA;
                    str = strA;
                }
            }
            return null;
        }
        if (i2 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        str = c52Var.a;
        p005kotlin.ResultKt.throwOnFailure(obj);
        km1 km1Var = (km1) obj;
        if (km1Var != null) {
            return new dc0(str, km1Var);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0078  */
    /* JADX WARN: Code duplicated, block: B:36:0x0093  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r9 == r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0088, code lost:
    
        if (r9 == r1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008a, code lost:
    
        return r1;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0088 -> B:33:0x008b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.google.gson.JsonObject r7, java.lang.String r8, p005kotlin.coroutines.Continuation r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof kotlin.d52
            if (r0 == 0) goto L13
            r0 = r9
            ads_mobile_sdk.d52 r0 = (kotlin.d52) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.d52 r0 = new ads_mobile_sdk.d52
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.util.Iterator r7 = r0.b
            java.util.Collection r8 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L8b
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            p005kotlin.ResultKt.throwOnFailure(r9)
            goto L64
        L3c:
            p005kotlin.ResultKt.throwOnFailure(r9)
            com.google.gson.JsonArray r7 = kotlin.ds1.e(r7, r8)
            if (r7 != 0) goto L4a
            java.util.List r7 = p005kotlin.collections.CollectionsKt.emptyList()
            return r7
        L4a:
            boolean r8 = r7.isEmpty()
            if (r8 == 0) goto L55
            java.util.List r7 = p005kotlin.collections.CollectionsKt.emptyList()
            return r7
        L55:
            ads_mobile_sdk.f52 r8 = new ads_mobile_sdk.f52
            r9 = 0
            r8.<init>(r7, r6, r9)
            r0.e = r4
            java.lang.Object r9 = kotlinx.coroutines.CoroutineScopeKt.coroutineScope(r8, r0)
            if (r9 != r1) goto L64
            goto L8a
        L64:
            java.util.List r9 = (java.util.List) r9
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.Iterator r8 = r9.iterator()
            r5 = r8
            r8 = r7
            r7 = r5
        L72:
            boolean r9 = r7.hasNext()
            if (r9 == 0) goto L93
            java.lang.Object r9 = r7.next()
            kotlinx.coroutines.Deferred r9 = (kotlinx.coroutines.Deferred) r9
            r0.a = r8
            r0.b = r7
            r0.e = r3
            java.lang.Object r9 = r9.await(r0)
            if (r9 != r1) goto L8b
        L8a:
            return r1
        L8b:
            ads_mobile_sdk.fc0 r9 = (kotlin.fc0) r9
            if (r9 == 0) goto L72
            r8.add(r9)
            goto L72
        L93:
            java.util.List r8 = (java.util.List) r8
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.g52.a(com.google.gson.JsonObject, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
