package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.util.Iterator;
import java.util.Optional;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rm2 implements nt3 {
    public final BaseRequest a;
    public final ej1 b;
    public final k c;
    public final im2 d;
    public final v8 e;
    public final j53 f;
    public final bb2 g;
    public final Gson h;
    public final ex0 i;
    public final ur3 j;
    public final Optional k;

    public rm2(BaseRequest baseRequest, ej1 internalAdRequestEventEmitter, k actionFunction, im2 persistentCacheManager, v8 adRequestKeyGenerator, j53 requestType, bb2 delegateNetworkRequester, Gson gson, ex0 flags, ur3 traceLogger, Optional numberOfAdsRequestedOptional) {
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(actionFunction, "actionFunction");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        Intrinsics.checkNotNullParameter(adRequestKeyGenerator, "adRequestKeyGenerator");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(delegateNetworkRequester, "delegateNetworkRequester");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        Intrinsics.checkNotNullParameter(numberOfAdsRequestedOptional, "numberOfAdsRequestedOptional");
        this.a = baseRequest;
        this.b = internalAdRequestEventEmitter;
        this.c = actionFunction;
        this.d = persistentCacheManager;
        this.e = adRequestKeyGenerator;
        this.f = requestType;
        this.g = delegateNetworkRequester;
        this.h = gson;
        this.i = flags;
        this.j = traceLogger;
        this.k = numberOfAdsRequestedOptional;
    }

    public final int a() {
        if (!this.k.isPresent()) {
            return 1;
        }
        Object obj = this.k.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        return ((Number) obj).intValue();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0089  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ct1 ct1Var, Continuation continuation) {
        pm2 pm2Var;
        rm2 rm2Var;
        nm2 nm2Var;
        if (continuation instanceof pm2) {
            pm2Var = (pm2) continuation;
            int i = pm2Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                pm2Var.d = i - Integer.MIN_VALUE;
            } else {
                pm2Var = new pm2(this, continuation);
            }
        } else {
            pm2Var = new pm2(this, continuation);
        }
        Object objB = pm2Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = pm2Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(objB);
            im2 im2Var = this.d;
            om2 om2Var = ct1Var.b;
            pm2Var.a = this;
            pm2Var.d = 1;
            im2Var.getClass();
            objB = im2.b(im2Var, om2Var, pm2Var);
            if (objB == coroutine_suspended) {
                return coroutine_suspended;
            }
            rm2Var = this;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            rm2Var = pm2Var.a;
            p005kotlin.ResultKt.throwOnFailure(objB);
        }
        v01 v01Var = (v01) objB;
        rr3 rr3VarA = hs3.a();
        nm2 nm2Var2 = rr3VarA.a.b.f;
        if (nm2Var2 != null) {
            vz0.a aVarU = nm2Var2.u();
            Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
            lm2 builder = (lm2) aVarU;
            Intrinsics.checkNotNullParameter(builder, "builder");
            builder.a(false);
            mm2 value = mm2.MISS_REASON_CORRUPTED;
            Intrinsics.checkNotNullParameter(value, "value");
            builder.a(value);
            builder.b(rm2Var.a());
            vz0 vz0VarB = builder.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
            nm2Var = (nm2) vz0VarB;
            if (nm2Var == null) {
                lm2 builder2 = nm2.v();
                Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
                Intrinsics.checkNotNullParameter(builder2, "builder");
                builder2.a(false);
                mm2 value2 = mm2.MISS_REASON_CORRUPTED;
                Intrinsics.checkNotNullParameter(value2, "value");
                builder2.a(value2);
                builder2.b(rm2Var.a());
                vz0 vz0VarB2 = builder2.b();
                Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                nm2Var = (nm2) vz0VarB2;
            }
        } else {
            lm2 builder3 = nm2.v();
            Intrinsics.checkNotNullExpressionValue(builder3, "newBuilder(...)");
            Intrinsics.checkNotNullParameter(builder3, "builder");
            builder3.a(false);
            mm2 value3 = mm2.MISS_REASON_CORRUPTED;
            Intrinsics.checkNotNullParameter(value3, "value");
            builder3.a(value3);
            builder3.b(rm2Var.a());
            vz0 vz0VarB3 = builder3.b();
            Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
            nm2Var = (nm2) vz0VarB3;
        }
        rr3VarA.a.b.f = nm2Var;
        if (v01Var instanceof i01) {
            ur3 ur3Var = rm2Var.j;
            Throwable thB = ((i01) v01Var).b();
            if (thB == null) {
                thB = new Exception(v01Var.toString());
            }
            ((as3) ur3Var).a("Failed to evict cached ad", thB);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0249 A[Catch: Exception -> 0x0060, TryCatch #0 {Exception -> 0x0060, blocks: (B:16:0x004f, B:93:0x01f5, B:95:0x0201, B:96:0x0228, B:98:0x022e, B:99:0x023b, B:106:0x028e, B:101:0x0249, B:102:0x026f, B:104:0x0275, B:105:0x0281, B:19:0x005a, B:89:0x01c4), top: B:117:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0275 A[Catch: Exception -> 0x0060, LOOP:1: B:102:0x026f->B:104:0x0275, LOOP_END, TryCatch #0 {Exception -> 0x0060, blocks: (B:16:0x004f, B:93:0x01f5, B:95:0x0201, B:96:0x0228, B:98:0x022e, B:99:0x023b, B:106:0x028e, B:101:0x0249, B:102:0x026f, B:104:0x0275, B:105:0x0281, B:19:0x005a, B:89:0x01c4), top: B:117:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x02c0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:116:0x02c1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:119:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:46:0x00be  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:60:0x0104  */
    /* JADX WARN: Code duplicated, block: B:62:0x0113  */
    /* JADX WARN: Code duplicated, block: B:64:0x0117  */
    /* JADX WARN: Code duplicated, block: B:69:0x0148 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:77:0x017f A[Catch: Exception -> 0x029a, TRY_LEAVE, TryCatch #1 {Exception -> 0x029a, blocks: (B:70:0x0149, B:75:0x017a, B:77:0x017f, B:85:0x01a5, B:74:0x0174, B:71:0x0169), top: B:119:0x0149, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:80:0x018e  */
    /* JADX WARN: Code duplicated, block: B:84:0x01a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:85:0x01a5 A[Catch: Exception -> 0x029a, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x029a, blocks: (B:70:0x0149, B:75:0x017a, B:77:0x017f, B:85:0x01a5, B:74:0x0174, B:71:0x0169), top: B:119:0x0149, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:91:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:92:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:95:0x0201 A[Catch: Exception -> 0x0060, TryCatch #0 {Exception -> 0x0060, blocks: (B:16:0x004f, B:93:0x01f5, B:95:0x0201, B:96:0x0228, B:98:0x022e, B:99:0x023b, B:106:0x028e, B:101:0x0249, B:102:0x026f, B:104:0x0275, B:105:0x0281, B:19:0x005a, B:89:0x01c4), top: B:117:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x022e A[Catch: Exception -> 0x0060, LOOP:0: B:96:0x0228->B:98:0x022e, LOOP_END, TryCatch #0 {Exception -> 0x0060, blocks: (B:16:0x004f, B:93:0x01f5, B:95:0x0201, B:96:0x0228, B:98:0x022e, B:99:0x023b, B:106:0x028e, B:101:0x0249, B:102:0x026f, B:104:0x0275, B:105:0x0281, B:19:0x005a, B:89:0x01c4), top: B:117:0x0030 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2, types: [ads_mobile_sdk.ct1] */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [ads_mobile_sdk.rm2] */
    /* JADX WARN: Type inference failed for: r4v25 */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [ads_mobile_sdk.rm2] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    @Override // kotlin.nt3
    public final Object b(Continuation continuation) throws Throwable {
        qm2 qm2Var;
        ?? r13;
        ?? r4;
        ?? r14;
        rm2 rm2Var;
        Object objA;
        ?? r5;
        Object objB;
        rm2 rm2Var2;
        v01 v01Var;
        eu euVar;
        ct1 ct1Var;
        Object j01Var;
        ac3 ac3Var;
        k kVar;
        rm2 rm2Var3;
        rm2 rm2Var4;
        ct1 ct1Var2;
        nm2 nm2Var;
        mm2 value;
        nm2 nm2Var2;
        Object objB2;
        mm2 value2;
        ct1 ct1Var3;
        Object objB3;
        ct1 ct1Var4;
        ec3 ec3Var;
        ej1 ej1Var;
        ac3 ac3Var2;
        rm2 rm2Var5;
        ct1 ct1Var5;
        nm2 nm2Var3;
        Iterator it;
        int iA;
        nm2 nm2Var4;
        Iterator it2;
        int iA2;
        if (continuation instanceof qm2) {
            qm2Var = (qm2) continuation;
            int i = qm2Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                qm2Var.g = i - Integer.MIN_VALUE;
            } else {
                qm2Var = new qm2(this, continuation);
            }
        } else {
            qm2Var = new qm2(this, continuation);
        }
        Object objB4 = qm2Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r6 = qm2Var.g;
        ?? r7 = 6;
        try {
            try {
                switch (r6) {
                    case 0:
                        p005kotlin.ResultKt.throwOnFailure(objB4);
                        BaseRequest baseRequest = this.a;
                        AdRequest adRequest = baseRequest instanceof AdRequest ? (AdRequest) baseRequest : null;
                        if (adRequest == null) {
                            return new m01("Expected AdRequest.", kk1.INTERNAL_ERROR);
                        }
                        String strA = this.e.a(adRequest);
                        im2 im2Var = this.d;
                        j53 j53Var = this.f;
                        qm2Var.a = this;
                        qm2Var.g = 1;
                        objB4 = im2Var.b(j53Var, strA, qm2Var);
                        if (objB4 != coroutine_suspended) {
                            rm2Var2 = this;
                            v01Var = (v01) objB4;
                            if (v01Var instanceof q01) {
                                euVar = (eu) ((q01) v01Var).b;
                            } else {
                                euVar = null;
                            }
                            if (euVar != null) {
                                ct1Var3 = euVar.a;
                            } else {
                                ct1Var = null;
                            }
                            if (ct1Var == null) {
                                rr3 rr3VarA = hs3.a();
                                nm2Var = rr3VarA.a.b.f;
                                if (nm2Var != null) {
                                    vz0.a aVarU = nm2Var.u();
                                    Intrinsics.checkNotNullExpressionValue(aVarU, "toBuilder(...)");
                                    lm2 builder = (lm2) aVarU;
                                    Intrinsics.checkNotNullParameter(builder, "builder");
                                    builder.a(false);
                                    if (euVar != null || (value2 = euVar.b) == null) {
                                        ct1Var = ct1Var3;
                                        ct1Var = ct1Var3;
                                        value2 = mm2.MISS_REASON_EMPTY;
                                    }
                                    ct1Var = ct1Var3;
                                    Intrinsics.checkNotNullParameter(value2, "value");
                                    builder.a(value2);
                                    builder.b(rm2Var2.a());
                                    vz0 vz0VarB = builder.b();
                                    Intrinsics.checkNotNullExpressionValue(vz0VarB, "build(...)");
                                    nm2Var2 = (nm2) vz0VarB;
                                    if (nm2Var2 == null) {
                                        ct1Var = ct1Var3;
                                        lm2 builder2 = nm2.v();
                                        Intrinsics.checkNotNullExpressionValue(builder2, "newBuilder(...)");
                                        Intrinsics.checkNotNullParameter(builder2, "builder");
                                        builder2.a(false);
                                        if (euVar != null || (value = euVar.b) == null) {
                                            value = mm2.MISS_REASON_EMPTY;
                                        }
                                        Intrinsics.checkNotNullParameter(value, "value");
                                        builder2.a(value);
                                        builder2.b(rm2Var2.a());
                                        vz0 vz0VarB2 = builder2.b();
                                        Intrinsics.checkNotNullExpressionValue(vz0VarB2, "build(...)");
                                        nm2Var2 = (nm2) vz0VarB2;
                                    }
                                } else {
                                    ct1Var = ct1Var3;
                                    lm2 builder3 = nm2.v();
                                    Intrinsics.checkNotNullExpressionValue(builder3, "newBuilder(...)");
                                    Intrinsics.checkNotNullParameter(builder3, "builder");
                                    builder3.a(false);
                                    if (euVar != null) {
                                        value = mm2.MISS_REASON_EMPTY;
                                    } else {
                                        value = mm2.MISS_REASON_EMPTY;
                                    }
                                    Intrinsics.checkNotNullParameter(value, "value");
                                    builder3.a(value);
                                    builder3.b(rm2Var2.a());
                                    vz0 vz0VarB3 = builder3.b();
                                    Intrinsics.checkNotNullExpressionValue(vz0VarB3, "build(...)");
                                    nm2Var2 = (nm2) vz0VarB3;
                                }
                                rr3VarA.a.b.f = nm2Var2;
                                bb2 bb2Var = rm2Var2.g;
                                qm2Var.a = null;
                                qm2Var.g = 2;
                                bb2Var.getClass();
                                objB2 = bb2.b(bb2Var, qm2Var);
                                if (objB2 == coroutine_suspended) {
                                    return objB2;
                                }
                            } else {
                                try {
                                    ct1Var = ct1Var3;
                                    JsonObject json = (JsonObject) rm2Var2.h.fromJson(ct1Var.a, JsonObject.class);
                                    Intrinsics.checkNotNull(json);
                                    ex0 ex0Var = rm2Var2.i;
                                    Intrinsics.checkNotNullParameter(json, "json");
                                    zb3 block = new zb3(ex0Var, json, null);
                                    Intrinsics.checkNotNullParameter(block, "block");
                                    try {
                                        j01Var = new q01(block.invoke());
                                    } catch (Exception e) {
                                        j01Var = new j01(e, null, null, 6);
                                    }
                                    if (j01Var instanceof i01) {
                                        qm2Var.a = rm2Var2;
                                        qm2Var.b = ct1Var;
                                        qm2Var.g = 3;
                                        if (rm2Var2.a(ct1Var, qm2Var) != coroutine_suspended) {
                                            rm2Var4 = rm2Var2;
                                            ct1Var2 = ct1Var;
                                            bb2 bb2Var2 = rm2Var4.g;
                                            qm2Var.a = rm2Var4;
                                            qm2Var.b = ct1Var2;
                                            qm2Var.g = 4;
                                            bb2Var2.getClass();
                                            objB3 = bb2.b(bb2Var2, qm2Var);
                                            if (objB3 == coroutine_suspended) {
                                                return objB3;
                                            }
                                        }
                                    } else {
                                        Intrinsics.checkNotNull(j01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<com.google.android.libraries.ads.mobile.sdk.internal.common.ServerResponse>");
                                        ac3Var = (ac3) ((q01) j01Var).b;
                                        kVar = rm2Var2.c;
                                        qm2Var.a = rm2Var2;
                                        qm2Var.b = ct1Var;
                                        qm2Var.c = ac3Var;
                                        qm2Var.g = 5;
                                        if (kVar.a(ac3Var, qm2Var) != coroutine_suspended) {
                                            rm2Var3 = rm2Var2;
                                            ct1Var4 = ct1Var;
                                            hs3.a().a.b.b = ac3Var.b.h;
                                            ec3Var = new ec3(new wb3(rm2Var3.a), ac3Var, true, ct1Var4.b);
                                            ej1Var = rm2Var3.b;
                                            qm2Var.a = rm2Var3;
                                            qm2Var.b = ct1Var4;
                                            qm2Var.c = ac3Var;
                                            qm2Var.d = ec3Var;
                                            qm2Var.g = 6;
                                            if (ej1Var.a(ec3Var, qm2Var) == coroutine_suspended) {
                                                ac3Var2 = ac3Var;
                                                ct1Var5 = ct1Var4;
                                                rm2Var5 = rm2Var3;
                                                rr3 rr3VarA2 = hs3.a();
                                                nm2Var3 = rr3VarA2.a.b.f;
                                                if (nm2Var3 != null) {
                                                    vz0.a aVarU2 = nm2Var3.u();
                                                    Intrinsics.checkNotNullExpressionValue(aVarU2, "toBuilder(...)");
                                                    lm2 builder4 = (lm2) aVarU2;
                                                    Intrinsics.checkNotNullParameter(builder4, "builder");
                                                    builder4.a(true);
                                                    builder4.b(ct1Var5.c);
                                                    builder4.a(ct1Var5.d);
                                                    builder4.b(rm2Var5.a());
                                                    it2 = ac3Var2.a.iterator();
                                                    iA2 = 0;
                                                    while (it2.hasNext()) {
                                                        iA2 += ((i2) it2.next()).a();
                                                    }
                                                    builder4.a(iA2);
                                                    vz0 vz0VarB4 = builder4.b();
                                                    Intrinsics.checkNotNullExpressionValue(vz0VarB4, "build(...)");
                                                    nm2Var4 = (nm2) vz0VarB4;
                                                    if (nm2Var4 == null) {
                                                        lm2 builder5 = nm2.v();
                                                        Intrinsics.checkNotNullExpressionValue(builder5, "newBuilder(...)");
                                                        Intrinsics.checkNotNullParameter(builder5, "builder");
                                                        builder5.a(true);
                                                        builder5.b(ct1Var5.c);
                                                        builder5.a(ct1Var5.d);
                                                        builder5.b(rm2Var5.a());
                                                        it = ac3Var2.a.iterator();
                                                        iA = 0;
                                                        while (it.hasNext()) {
                                                            iA += ((i2) it.next()).a();
                                                        }
                                                        builder5.a(iA);
                                                        vz0 vz0VarB5 = builder5.b();
                                                        Intrinsics.checkNotNullExpressionValue(vz0VarB5, "build(...)");
                                                        nm2Var4 = (nm2) vz0VarB5;
                                                    }
                                                } else {
                                                    lm2 builder6 = nm2.v();
                                                    Intrinsics.checkNotNullExpressionValue(builder6, "newBuilder(...)");
                                                    Intrinsics.checkNotNullParameter(builder6, "builder");
                                                    builder6.a(true);
                                                    builder6.b(ct1Var5.c);
                                                    builder6.a(ct1Var5.d);
                                                    builder6.b(rm2Var5.a());
                                                    it = ac3Var2.a.iterator();
                                                    iA = 0;
                                                    while (it.hasNext()) {
                                                        iA += ((i2) it.next()).a();
                                                    }
                                                    builder6.a(iA);
                                                    vz0 vz0VarB6 = builder6.b();
                                                    Intrinsics.checkNotNullExpressionValue(vz0VarB6, "build(...)");
                                                    nm2Var4 = (nm2) vz0VarB6;
                                                }
                                                rr3VarA2.a.b.f = nm2Var4;
                                                return new q01(ec3Var);
                                            }
                                        }
                                    }
                                } catch (Exception unused) {
                                    r7 = rm2Var2;
                                    r13 = ct1Var;
                                    r4 = r7;
                                    r14 = r13;
                                    qm2Var.a = r4;
                                    rm2Var = null;
                                    qm2Var.b = null;
                                    qm2Var.c = null;
                                    qm2Var.d = null;
                                    qm2Var.g = 7;
                                    objA = r4.a(r14, qm2Var);
                                    r5 = r4;
                                    if (objA != coroutine_suspended) {
                                        bb2 bb2Var3 = r5.g;
                                        qm2Var.a = rm2Var;
                                        qm2Var.g = 8;
                                        bb2Var3.getClass();
                                        objB = bb2.b(bb2Var3, qm2Var);
                                        if (objB != coroutine_suspended) {
                                            return objB;
                                        }
                                    }
                                }
                            }
                            break;
                        }
                        return coroutine_suspended;
                    case 1:
                        rm2 rm2Var6 = qm2Var.a;
                        p005kotlin.ResultKt.throwOnFailure(objB4);
                        rm2Var2 = rm2Var6;
                        v01Var = (v01) objB4;
                        if (v01Var instanceof q01) {
                            euVar = (eu) ((q01) v01Var).b;
                        } else {
                            euVar = null;
                        }
                        if (euVar != null) {
                            ct1Var3 = euVar.a;
                        } else {
                            ct1Var = null;
                        }
                        if (ct1Var == null) {
                            rr3 rr3VarA3 = hs3.a();
                            nm2Var = rr3VarA3.a.b.f;
                            if (nm2Var != null) {
                                vz0.a aVarU3 = nm2Var.u();
                                Intrinsics.checkNotNullExpressionValue(aVarU3, "toBuilder(...)");
                                lm2 builder7 = (lm2) aVarU3;
                                Intrinsics.checkNotNullParameter(builder7, "builder");
                                builder7.a(false);
                                if (euVar != null) {
                                    ct1Var = ct1Var3;
                                    ct1Var = ct1Var3;
                                    value2 = mm2.MISS_REASON_EMPTY;
                                } else {
                                    ct1Var = ct1Var3;
                                    ct1Var = ct1Var3;
                                    value2 = mm2.MISS_REASON_EMPTY;
                                }
                                ct1Var = ct1Var3;
                                Intrinsics.checkNotNullParameter(value2, "value");
                                builder7.a(value2);
                                builder7.b(rm2Var2.a());
                                vz0 vz0VarB7 = builder7.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB7, "build(...)");
                                nm2Var2 = (nm2) vz0VarB7;
                                if (nm2Var2 == null) {
                                    ct1Var = ct1Var3;
                                    lm2 builder8 = nm2.v();
                                    Intrinsics.checkNotNullExpressionValue(builder8, "newBuilder(...)");
                                    Intrinsics.checkNotNullParameter(builder8, "builder");
                                    builder8.a(false);
                                    if (euVar != null) {
                                        value = mm2.MISS_REASON_EMPTY;
                                    } else {
                                        value = mm2.MISS_REASON_EMPTY;
                                    }
                                    Intrinsics.checkNotNullParameter(value, "value");
                                    builder8.a(value);
                                    builder8.b(rm2Var2.a());
                                    vz0 vz0VarB8 = builder8.b();
                                    Intrinsics.checkNotNullExpressionValue(vz0VarB8, "build(...)");
                                    nm2Var2 = (nm2) vz0VarB8;
                                }
                            } else {
                                ct1Var = ct1Var3;
                                lm2 builder9 = nm2.v();
                                Intrinsics.checkNotNullExpressionValue(builder9, "newBuilder(...)");
                                Intrinsics.checkNotNullParameter(builder9, "builder");
                                builder9.a(false);
                                if (euVar != null) {
                                    value = mm2.MISS_REASON_EMPTY;
                                } else {
                                    value = mm2.MISS_REASON_EMPTY;
                                }
                                Intrinsics.checkNotNullParameter(value, "value");
                                builder9.a(value);
                                builder9.b(rm2Var2.a());
                                vz0 vz0VarB9 = builder9.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB9, "build(...)");
                                nm2Var2 = (nm2) vz0VarB9;
                            }
                            rr3VarA3.a.b.f = nm2Var2;
                            bb2 bb2Var4 = rm2Var2.g;
                            qm2Var.a = null;
                            qm2Var.g = 2;
                            bb2Var4.getClass();
                            objB2 = bb2.b(bb2Var4, qm2Var);
                            if (objB2 == coroutine_suspended) {
                                return objB2;
                            }
                        } else {
                            ct1Var = ct1Var3;
                            JsonObject json2 = (JsonObject) rm2Var2.h.fromJson(ct1Var.a, JsonObject.class);
                            Intrinsics.checkNotNull(json2);
                            ex0 ex0Var2 = rm2Var2.i;
                            Intrinsics.checkNotNullParameter(json2, "json");
                            zb3 block2 = new zb3(ex0Var2, json2, null);
                            Intrinsics.checkNotNullParameter(block2, "block");
                            j01Var = new q01(block2.invoke());
                            if (j01Var instanceof i01) {
                                qm2Var.a = rm2Var2;
                                qm2Var.b = ct1Var;
                                qm2Var.g = 3;
                                if (rm2Var2.a(ct1Var, qm2Var) != coroutine_suspended) {
                                    rm2Var4 = rm2Var2;
                                    ct1Var2 = ct1Var;
                                    bb2 bb2Var5 = rm2Var4.g;
                                    qm2Var.a = rm2Var4;
                                    qm2Var.b = ct1Var2;
                                    qm2Var.g = 4;
                                    bb2Var5.getClass();
                                    objB3 = bb2.b(bb2Var5, qm2Var);
                                    if (objB3 == coroutine_suspended) {
                                        return objB3;
                                    }
                                }
                            } else {
                                Intrinsics.checkNotNull(j01Var, "null cannot be cast to non-null type com.google.android.libraries.ads.mobile.sdk.internal.util.GmaResult.Success<com.google.android.libraries.ads.mobile.sdk.internal.common.ServerResponse>");
                                ac3Var = (ac3) ((q01) j01Var).b;
                                kVar = rm2Var2.c;
                                qm2Var.a = rm2Var2;
                                qm2Var.b = ct1Var;
                                qm2Var.c = ac3Var;
                                qm2Var.g = 5;
                                if (kVar.a(ac3Var, qm2Var) != coroutine_suspended) {
                                    rm2Var3 = rm2Var2;
                                    ct1Var4 = ct1Var;
                                    hs3.a().a.b.b = ac3Var.b.h;
                                    ec3Var = new ec3(new wb3(rm2Var3.a), ac3Var, true, ct1Var4.b);
                                    ej1Var = rm2Var3.b;
                                    qm2Var.a = rm2Var3;
                                    qm2Var.b = ct1Var4;
                                    qm2Var.c = ac3Var;
                                    qm2Var.d = ec3Var;
                                    qm2Var.g = 6;
                                    if (ej1Var.a(ec3Var, qm2Var) == coroutine_suspended) {
                                        ac3Var2 = ac3Var;
                                        ct1Var5 = ct1Var4;
                                        rm2Var5 = rm2Var3;
                                        rr3 rr3VarA4 = hs3.a();
                                        nm2Var3 = rr3VarA4.a.b.f;
                                        if (nm2Var3 != null) {
                                            vz0.a aVarU4 = nm2Var3.u();
                                            Intrinsics.checkNotNullExpressionValue(aVarU4, "toBuilder(...)");
                                            lm2 builder10 = (lm2) aVarU4;
                                            Intrinsics.checkNotNullParameter(builder10, "builder");
                                            builder10.a(true);
                                            builder10.b(ct1Var5.c);
                                            builder10.a(ct1Var5.d);
                                            builder10.b(rm2Var5.a());
                                            it2 = ac3Var2.a.iterator();
                                            iA2 = 0;
                                            while (it2.hasNext()) {
                                                iA2 += ((i2) it2.next()).a();
                                            }
                                            builder10.a(iA2);
                                            vz0 vz0VarB10 = builder10.b();
                                            Intrinsics.checkNotNullExpressionValue(vz0VarB10, "build(...)");
                                            nm2Var4 = (nm2) vz0VarB10;
                                            if (nm2Var4 == null) {
                                                lm2 builder11 = nm2.v();
                                                Intrinsics.checkNotNullExpressionValue(builder11, "newBuilder(...)");
                                                Intrinsics.checkNotNullParameter(builder11, "builder");
                                                builder11.a(true);
                                                builder11.b(ct1Var5.c);
                                                builder11.a(ct1Var5.d);
                                                builder11.b(rm2Var5.a());
                                                it = ac3Var2.a.iterator();
                                                iA = 0;
                                                while (it.hasNext()) {
                                                    iA += ((i2) it.next()).a();
                                                }
                                                builder11.a(iA);
                                                vz0 vz0VarB11 = builder11.b();
                                                Intrinsics.checkNotNullExpressionValue(vz0VarB11, "build(...)");
                                                nm2Var4 = (nm2) vz0VarB11;
                                            }
                                        } else {
                                            lm2 builder12 = nm2.v();
                                            Intrinsics.checkNotNullExpressionValue(builder12, "newBuilder(...)");
                                            Intrinsics.checkNotNullParameter(builder12, "builder");
                                            builder12.a(true);
                                            builder12.b(ct1Var5.c);
                                            builder12.a(ct1Var5.d);
                                            builder12.b(rm2Var5.a());
                                            it = ac3Var2.a.iterator();
                                            iA = 0;
                                            while (it.hasNext()) {
                                                iA += ((i2) it.next()).a();
                                            }
                                            builder12.a(iA);
                                            vz0 vz0VarB12 = builder12.b();
                                            Intrinsics.checkNotNullExpressionValue(vz0VarB12, "build(...)");
                                            nm2Var4 = (nm2) vz0VarB12;
                                        }
                                        rr3VarA4.a.b.f = nm2Var4;
                                        return new q01(ec3Var);
                                    }
                                }
                            }
                        }
                        return coroutine_suspended;
                    case 2:
                        p005kotlin.ResultKt.throwOnFailure(objB4);
                        return objB4;
                    case 3:
                        ct1 ct1Var6 = qm2Var.b;
                        rm2 rm2Var7 = qm2Var.a;
                        p005kotlin.ResultKt.throwOnFailure(objB4);
                        ct1Var2 = ct1Var6;
                        rm2Var4 = rm2Var7;
                        bb2 bb2Var6 = rm2Var4.g;
                        qm2Var.a = rm2Var4;
                        qm2Var.b = ct1Var2;
                        qm2Var.g = 4;
                        bb2Var6.getClass();
                        objB3 = bb2.b(bb2Var6, qm2Var);
                        if (objB3 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return objB3;
                    case 4:
                        ct1 ct1Var7 = qm2Var.b;
                        rm2 rm2Var8 = qm2Var.a;
                        p005kotlin.ResultKt.throwOnFailure(objB4);
                        return objB4;
                    case 5:
                        ac3 ac3Var3 = qm2Var.c;
                        ct1 ct1Var8 = qm2Var.b;
                        rm2 rm2Var9 = qm2Var.a;
                        p005kotlin.ResultKt.throwOnFailure(objB4);
                        ac3Var = ac3Var3;
                        ct1Var4 = ct1Var8;
                        rm2Var3 = rm2Var9;
                        hs3.a().a.b.b = ac3Var.b.h;
                        ec3Var = new ec3(new wb3(rm2Var3.a), ac3Var, true, ct1Var4.b);
                        ej1Var = rm2Var3.b;
                        qm2Var.a = rm2Var3;
                        qm2Var.b = ct1Var4;
                        qm2Var.c = ac3Var;
                        qm2Var.d = ec3Var;
                        qm2Var.g = 6;
                        if (ej1Var.a(ec3Var, qm2Var) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        ac3Var2 = ac3Var;
                        ct1Var5 = ct1Var4;
                        rm2Var5 = rm2Var3;
                        rr3 rr3VarA5 = hs3.a();
                        nm2Var3 = rr3VarA5.a.b.f;
                        if (nm2Var3 != null) {
                            vz0.a aVarU5 = nm2Var3.u();
                            Intrinsics.checkNotNullExpressionValue(aVarU5, "toBuilder(...)");
                            lm2 builder13 = (lm2) aVarU5;
                            Intrinsics.checkNotNullParameter(builder13, "builder");
                            builder13.a(true);
                            builder13.b(ct1Var5.c);
                            builder13.a(ct1Var5.d);
                            builder13.b(rm2Var5.a());
                            it2 = ac3Var2.a.iterator();
                            iA2 = 0;
                            while (it2.hasNext()) {
                                iA2 += ((i2) it2.next()).a();
                            }
                            builder13.a(iA2);
                            vz0 vz0VarB13 = builder13.b();
                            Intrinsics.checkNotNullExpressionValue(vz0VarB13, "build(...)");
                            nm2Var4 = (nm2) vz0VarB13;
                            if (nm2Var4 == null) {
                                lm2 builder14 = nm2.v();
                                Intrinsics.checkNotNullExpressionValue(builder14, "newBuilder(...)");
                                Intrinsics.checkNotNullParameter(builder14, "builder");
                                builder14.a(true);
                                builder14.b(ct1Var5.c);
                                builder14.a(ct1Var5.d);
                                builder14.b(rm2Var5.a());
                                it = ac3Var2.a.iterator();
                                iA = 0;
                                while (it.hasNext()) {
                                    iA += ((i2) it.next()).a();
                                }
                                builder14.a(iA);
                                vz0 vz0VarB14 = builder14.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB14, "build(...)");
                                nm2Var4 = (nm2) vz0VarB14;
                            }
                        } else {
                            lm2 builder15 = nm2.v();
                            Intrinsics.checkNotNullExpressionValue(builder15, "newBuilder(...)");
                            Intrinsics.checkNotNullParameter(builder15, "builder");
                            builder15.a(true);
                            builder15.b(ct1Var5.c);
                            builder15.a(ct1Var5.d);
                            builder15.b(rm2Var5.a());
                            it = ac3Var2.a.iterator();
                            iA = 0;
                            while (it.hasNext()) {
                                iA += ((i2) it.next()).a();
                            }
                            builder15.a(iA);
                            vz0 vz0VarB15 = builder15.b();
                            Intrinsics.checkNotNullExpressionValue(vz0VarB15, "build(...)");
                            nm2Var4 = (nm2) vz0VarB15;
                        }
                        rr3VarA5.a.b.f = nm2Var4;
                        return new q01(ec3Var);
                    case 6:
                        ec3Var = qm2Var.d;
                        ac3Var2 = qm2Var.c;
                        ct1 ct1Var9 = qm2Var.b;
                        rm2 rm2Var10 = qm2Var.a;
                        p005kotlin.ResultKt.throwOnFailure(objB4);
                        ct1Var5 = ct1Var9;
                        rm2Var5 = rm2Var10;
                        rr3 rr3VarA6 = hs3.a();
                        nm2Var3 = rr3VarA6.a.b.f;
                        if (nm2Var3 != null) {
                            vz0.a aVarU6 = nm2Var3.u();
                            Intrinsics.checkNotNullExpressionValue(aVarU6, "toBuilder(...)");
                            lm2 builder16 = (lm2) aVarU6;
                            Intrinsics.checkNotNullParameter(builder16, "builder");
                            builder16.a(true);
                            builder16.b(ct1Var5.c);
                            builder16.a(ct1Var5.d);
                            builder16.b(rm2Var5.a());
                            it2 = ac3Var2.a.iterator();
                            iA2 = 0;
                            while (it2.hasNext()) {
                                iA2 += ((i2) it2.next()).a();
                            }
                            builder16.a(iA2);
                            vz0 vz0VarB16 = builder16.b();
                            Intrinsics.checkNotNullExpressionValue(vz0VarB16, "build(...)");
                            nm2Var4 = (nm2) vz0VarB16;
                            if (nm2Var4 == null) {
                                lm2 builder17 = nm2.v();
                                Intrinsics.checkNotNullExpressionValue(builder17, "newBuilder(...)");
                                Intrinsics.checkNotNullParameter(builder17, "builder");
                                builder17.a(true);
                                builder17.b(ct1Var5.c);
                                builder17.a(ct1Var5.d);
                                builder17.b(rm2Var5.a());
                                it = ac3Var2.a.iterator();
                                iA = 0;
                                while (it.hasNext()) {
                                    iA += ((i2) it.next()).a();
                                }
                                builder17.a(iA);
                                vz0 vz0VarB17 = builder17.b();
                                Intrinsics.checkNotNullExpressionValue(vz0VarB17, "build(...)");
                                nm2Var4 = (nm2) vz0VarB17;
                            }
                        } else {
                            lm2 builder18 = nm2.v();
                            Intrinsics.checkNotNullExpressionValue(builder18, "newBuilder(...)");
                            Intrinsics.checkNotNullParameter(builder18, "builder");
                            builder18.a(true);
                            builder18.b(ct1Var5.c);
                            builder18.a(ct1Var5.d);
                            builder18.b(rm2Var5.a());
                            it = ac3Var2.a.iterator();
                            iA = 0;
                            while (it.hasNext()) {
                                iA += ((i2) it.next()).a();
                            }
                            builder18.a(iA);
                            vz0 vz0VarB18 = builder18.b();
                            Intrinsics.checkNotNullExpressionValue(vz0VarB18, "build(...)");
                            nm2Var4 = (nm2) vz0VarB18;
                        }
                        rr3VarA6.a.b.f = nm2Var4;
                        return new q01(ec3Var);
                    case 7:
                        rm2 rm2Var11 = qm2Var.a;
                        p005kotlin.ResultKt.throwOnFailure(objB4);
                        rm2Var = null;
                        r5 = rm2Var11;
                        bb2 bb2Var7 = r5.g;
                        qm2Var.a = rm2Var;
                        qm2Var.g = 8;
                        bb2Var7.getClass();
                        objB = bb2.b(bb2Var7, qm2Var);
                        if (objB != coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return objB;
                    case 8:
                        p005kotlin.ResultKt.throwOnFailure(objB4);
                        return objB4;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Exception unused2) {
                r4 = rm2Var5;
                r14 = ct1Var5;
                qm2Var.a = r4;
                rm2Var = null;
                qm2Var.b = null;
                qm2Var.c = null;
                qm2Var.d = null;
                qm2Var.g = 7;
                objA = r4.a(r14, qm2Var);
                r5 = r4;
                if (objA != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
        } catch (Exception unused3) {
            r13 = r6;
        }
    }
}
