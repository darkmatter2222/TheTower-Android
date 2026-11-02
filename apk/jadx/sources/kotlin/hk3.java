package kotlin;

import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hk3 implements r41 {
    public final if1 a;
    public final ex0 b;
    public final ur3 c;

    public hk3(if1 inspectorManager, ex0 flags, ur3 traceLogger) {
        Intrinsics.checkNotNullParameter(inspectorManager, "inspectorManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceLogger, "traceLogger");
        this.a = inspectorManager;
        this.b = flags;
        this.c = traceLogger;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        gk3 gk3Var;
        hk3 hk3Var;
        if (continuation instanceof gk3) {
            gk3Var = (gk3) continuation;
            int i = gk3Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                gk3Var.e = i - Integer.MIN_VALUE;
            } else {
                gk3Var = new gk3(this, continuation);
            }
        } else {
            gk3Var = new gk3(this, continuation);
        }
        Object obj = gk3Var.c;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = gk3Var.e;
        if (i2 != 0) {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            map = gk3Var.b;
            hk3Var = gk3Var.a;
            try {
                p005kotlin.ResultKt.throwOnFailure(obj);
                return p005kotlin.Unit.INSTANCE;
            } catch (NumberFormatException e) {
                e = e;
                f01.c("Invalid expiration in SingleAdSourceTesting GMSG.", null);
                ((as3) hk3Var.c).a("SingleAdSourceTestingGmsgHandler.onGmsg", (Throwable) e);
                xs3.a("Invalid expiration in SingleAdSource GMSG: " + map, null, 6);
                return p005kotlin.Unit.INSTANCE;
            }
        }
        p005kotlin.ResultKt.throwOnFailure(obj);
        if (!this.b.a0()) {
            return p005kotlin.Unit.INSTANCE;
        }
        String str = (String) map.get(HandleInvocationsFromAdViewer.KEY_EXTRAS);
        if (str == null || str.length() == 0) {
            xs3.a("Network Extras is missing from SingleAdSource GMSG: " + map, null, 6);
            f01.c("Missing network extras in SingleAdSourceTesting request.", null);
            return p005kotlin.Unit.INSTANCE;
        }
        try {
            if1 if1Var = this.a;
            String str2 = (String) map.get("expires");
            Long lBoxLong = Boxing.boxLong(str2 != null ? Long.parseLong(str2) : Long.MAX_VALUE);
            gk3Var.a = this;
            gk3Var.b = map;
            gk3Var.e = 1;
            if (if1.a(if1Var, str, lBoxLong, gk3Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return p005kotlin.Unit.INSTANCE;
        } catch (NumberFormatException e2) {
            e = e2;
            hk3Var = this;
            f01.c("Invalid expiration in SingleAdSourceTesting GMSG.", null);
            ((as3) hk3Var.c).a("SingleAdSourceTestingGmsgHandler.onGmsg", (Throwable) e);
            xs3.a("Invalid expiration in SingleAdSource GMSG: " + map, null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_INSPECTOR_SINGLE_AD_SOURCE_TEST;
    }
}
