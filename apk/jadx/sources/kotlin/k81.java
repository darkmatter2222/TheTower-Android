package kotlin;

import java.net.URL;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class k81 implements r41 {
    public final e01 a;

    public k81(e01 httpClient) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.a = httpClient;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        j81 j81Var;
        if (continuation instanceof j81) {
            j81Var = (j81) continuation;
            int i = j81Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                j81Var.c = i - Integer.MIN_VALUE;
            } else {
                j81Var = new j81(this, continuation);
            }
        } else {
            j81Var = new j81(this, continuation);
        }
        Object obj = j81Var.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = j81Var.c;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                String str = (String) map.get("u");
                if (str == null) {
                    xs3.a("URL is missing from an httpTrack GMSG: " + map, null, 6);
                    return p005kotlin.Unit.INSTANCE;
                }
                e01 e01Var = this.a;
                URL url = new URL(str);
                j81Var.c = 1;
                if (e01.a(e01Var, url, null, j81Var, 30) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
        } catch (Exception e) {
            xs3.a(xs3.a, e);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_NAME_HTTP_TRACK;
    }
}
