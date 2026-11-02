package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.ironsource.C3510b4;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class si1 extends bs implements mi1 {
    public final pb e;
    public final nt3 f;
    public final vi2 g;
    public final ks3 h;
    public final ex0 i;
    public final ji1 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public si1(String requestId, int i, pb adSourceResponseInfoCollector, nt3 transactionRequester, vi2 transactionRenderer, ks3 traceMetaSet, ej1 internalAdRequestEventEmitter, ex0 flags, ji1 internalAdLoadEventEmitter) {
        super(requestId, i, traceMetaSet, internalAdRequestEventEmitter);
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(adSourceResponseInfoCollector, "adSourceResponseInfoCollector");
        Intrinsics.checkNotNullParameter(transactionRequester, "transactionRequester");
        Intrinsics.checkNotNullParameter(transactionRenderer, "transactionRenderer");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        Intrinsics.checkNotNullParameter(internalAdRequestEventEmitter, "internalAdRequestEventEmitter");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(internalAdLoadEventEmitter, "internalAdLoadEventEmitter");
        this.e = adSourceResponseInfoCollector;
        this.f = transactionRequester;
        this.g = transactionRenderer;
        this.h = traceMetaSet;
        this.i = flags;
        this.j = internalAdLoadEventEmitter;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00df  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:45:0x0107  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v8, types: [ads_mobile_sdk.si1] */
    public final Object a(Continuation continuation) {
        qi1 qi1Var;
        ResponseInfo responseInfo;
        r01 r01Var;
        si1 si1Var;
        v01 v01Var;
        ResponseInfo responseInfoA;
        v01 v01Var2;
        ResponseInfo responseInfo2;
        if (continuation instanceof qi1) {
            qi1Var = (qi1) continuation;
            int i = qi1Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                qi1Var.e = i - Integer.MIN_VALUE;
            } else {
                qi1Var = new qi1(this, continuation);
            }
        } else {
            qi1Var = new qi1(this, continuation);
        }
        Object objM4522withTimeoutKLykuaI = qi1Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        si1 si1Var2 = qi1Var.e;
        try {
            if (si1Var2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
                qi1Var.a = this;
                qi1Var.e = 1;
                rr3 rr3VarA = hs3.a();
                ks3 ks3Var = this.c;
                Intrinsics.checkNotNullParameter(ks3Var, "<set-?>");
                rr3VarA.a = ks3Var;
                tn1 tn1Var = this.c.b;
                tn1Var.a = this.a;
                tn1Var.c = this.b;
                Object objC = this.d.c(qi1Var);
                if ((objC == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? (p005kotlin.Unit) objC : p005kotlin.Unit.INSTANCE) != coroutine_suspended) {
                    si1Var = this;
                }
                return coroutine_suspended;
            }
            if (si1Var2 == 1) {
                si1 si1Var3 = (si1) qi1Var.a;
                p005kotlin.ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
                si1Var = si1Var3;
            } else {
                if (si1Var2 == 2) {
                    si1 si1Var4 = (si1) qi1Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
                    si1Var2 = si1Var4;
                    v01Var = (v01) objM4522withTimeoutKLykuaI;
                    if (v01Var instanceof q01) {
                        return new pi1((Flow) ((q01) v01Var).b, si1Var2);
                    }
                    if (v01Var instanceof i01) {
                        throw new p005kotlin.NoWhenBranchMatchedException();
                    }
                    responseInfoA = si1Var2.e.a();
                    qi1Var.a = v01Var;
                    qi1Var.b = responseInfoA;
                    qi1Var.e = 4;
                    if (si1Var2.j.a((i01) v01Var, responseInfoA, qi1Var) != coroutine_suspended) {
                        v01Var2 = v01Var;
                        responseInfo2 = responseInfoA;
                    }
                    return coroutine_suspended;
                }
                if (si1Var2 == 3) {
                    r01Var = (r01) qi1Var.b;
                    responseInfo = (ResponseInfo) qi1Var.a;
                    p005kotlin.ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
                    return FlowKt.flowOf(new p005kotlin.Pair(r01Var, responseInfo));
                }
                if (si1Var2 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                responseInfo2 = (ResponseInfo) qi1Var.b;
                v01Var2 = (v01) qi1Var.a;
                p005kotlin.ResultKt.throwOnFailure(objM4522withTimeoutKLykuaI);
            }
            return FlowKt.flowOf(new p005kotlin.Pair(v01Var2, responseInfo2));
            ex0 ex0Var = si1Var.i;
            ex0Var.getClass();
            Duration.Companion companion = Duration.INSTANCE;
            long duration = DurationKt.toDuration(5, DurationUnit.MINUTES);
            Intrinsics.checkNotNullParameter("gads:load_timeout:milliseconds", C3510b4.i.W);
            long rawValue = ((Duration) ex0Var.a("gads:load_timeout:milliseconds", Duration.m4365boximpl(duration), yr.j)).getRawValue();
            ri1 ri1Var = new ri1(si1Var, null);
            qi1Var.a = si1Var;
            qi1Var.e = 2;
            objM4522withTimeoutKLykuaI = TimeoutKt.m4522withTimeoutKLykuaI(rawValue, ri1Var, qi1Var);
            si1Var2 = si1Var;
            if (objM4522withTimeoutKLykuaI != coroutine_suspended) {
                v01Var = (v01) objM4522withTimeoutKLykuaI;
                if (v01Var instanceof q01) {
                    return new pi1((Flow) ((q01) v01Var).b, si1Var2);
                }
                if (v01Var instanceof i01) {
                    throw new p005kotlin.NoWhenBranchMatchedException();
                }
                responseInfoA = si1Var2.e.a();
                qi1Var.a = v01Var;
                qi1Var.b = responseInfoA;
                qi1Var.e = 4;
                if (si1Var2.j.a((i01) v01Var, responseInfoA, qi1Var) != coroutine_suspended) {
                    v01Var2 = v01Var;
                    responseInfo2 = responseInfoA;
                    return FlowKt.flowOf(new p005kotlin.Pair(v01Var2, responseInfo2));
                }
            }
        } catch (TimeoutCancellationException e) {
            ResponseInfo responseInfoA2 = si1Var2.e.a();
            r01 r01Var2 = new r01(e, 1);
            ji1 ji1Var = si1Var2.j;
            qi1Var.a = responseInfoA2;
            qi1Var.b = r01Var2;
            qi1Var.e = 3;
            if (ji1Var.a(r01Var2, responseInfoA2, qi1Var) != coroutine_suspended) {
                responseInfo = responseInfoA2;
                r01Var = r01Var2;
            }
            return coroutine_suspended;
        }
        return coroutine_suspended;
    }
}
