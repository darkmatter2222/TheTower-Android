package kotlin;

import android.net.Uri;
import java.util.Map;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class l52 implements r41 {
    public final v3 a;
    public final d63 b;

    public l52(v3 adEventEmitter, d63 retryingUrlPinger) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(retryingUrlPinger, "retryingUrlPinger");
        this.a = adEventEmitter;
        this.b = retryingUrlPinger;
    }

    @Override // kotlin.r41
    public final Object a(r31 r31Var, Map map, Continuation continuation) {
        String str = (String) map.get("u");
        if (str == null || str.length() == 0) {
            xs3.a("Impression URL in native GMSG is null or empty", null, 6);
            return p005kotlin.Unit.INSTANCE;
        }
        d63 d63Var = this.b;
        Uri uri = Uri.parse(str);
        v3 v3Var = this.a;
        Boolean boolBoxBoolean = Boxing.boxBoolean(true);
        n03 publisherRequestTraceMeta = new n03();
        tn1 internalRequestTraceMeta = new tn1();
        m33 renderTraceMeta = new m33();
        zb adTraceMeta = new zb();
        Intrinsics.checkNotNullParameter(publisherRequestTraceMeta, "publisherRequestTraceMeta");
        Intrinsics.checkNotNullParameter(internalRequestTraceMeta, "internalRequestTraceMeta");
        Intrinsics.checkNotNullParameter(renderTraceMeta, "renderTraceMeta");
        Intrinsics.checkNotNullParameter(adTraceMeta, "adTraceMeta");
        d63Var.getClass();
        Intrinsics.checkNotNullParameter(uri, "uri");
        d63Var.c.a(uri, d63Var.a, d63Var.b, v3Var, boolBoxBoolean, (ks3) null);
        return p005kotlin.Unit.INSTANCE;
    }

    @Override // kotlin.r41
    public final u11 g() {
        return u11.GMSG_NATIVE_IMPRESSION_FLOW_CONTROL;
    }
}
