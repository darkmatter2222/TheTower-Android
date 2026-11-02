package kotlin;

import com.ironsource.C3510b4;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class n8 extends fp2 {
    public final ex0 c;
    public final e01 d;
    public final CoroutineScope e;

    public n8(ex0 flags, e01 httpClient, CoroutineScope backgroundScope) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        this.c = flags;
        this.d = httpClient;
        this.e = backgroundScope;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(n8 n8Var, Continuation continuation) {
        m8 m8Var;
        if (continuation instanceof m8) {
            m8Var = (m8) continuation;
            int i = m8Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                m8Var.d = i - Integer.MIN_VALUE;
            } else {
                m8Var = new m8(n8Var, continuation);
            }
        } else {
            m8Var = new m8(n8Var, continuation);
        }
        Object obj = m8Var.b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = m8Var.d;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            ex0 ex0Var = n8Var.c;
            ex0Var.getClass();
            Intrinsics.checkNotNullParameter("gads:ad_request_http_client_enabled", C3510b4.i.W);
            if (((Boolean) ex0Var.a("gads:ad_request_http_client_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
                e01 e01Var = n8Var.d;
                ex0 ex0Var2 = n8Var.c;
                int iIntValue = ((Number) ex0Var2.a("gads:ad_request_http_client_max_idle_connections", by0.a(ex0Var2, "gads:ad_request_http_client_max_idle_connections", C3510b4.i.W, 5), yr.f)).intValue();
                ex0 ex0Var3 = n8Var.c;
                ex0Var3.getClass();
                Duration.Companion companion = Duration.INSTANCE;
                long jM4379getInWholeMinutesimpl = Duration.m4379getInWholeMinutesimpl(((Duration) ex0Var3.a("gads:ad_request_http_client_connection_pool_keep_alive_minutes", wm2.a(5, DurationUnit.MINUTES, "gads:ad_request_http_client_connection_pool_keep_alive_minutes", C3510b4.i.W), yr.m)).getRawValue());
                m8Var.a = n8Var;
                m8Var.d = 1;
                if (e01Var.a(iIntValue, jM4379getInWholeMinutesimpl, m8Var) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n8Var = m8Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        ex0 ex0Var4 = n8Var.c;
        ex0Var4.getClass();
        Intrinsics.checkNotNullParameter("gads:preconnect_initialization_task_enabled", C3510b4.i.W);
        if (((Boolean) ex0Var4.a("gads:preconnect_initialization_task_enabled", Boolean.TRUE, yr.b)).booleanValue()) {
            n8Var.g();
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    public final void g() {
        ex0 ex0Var = this.c;
        ex0Var.getClass();
        List defaultValue = CollectionsKt.listOf((Object[]) new String[]{"https://googleads.g.doubleclick.net", "https://pubads.g.doubleclick.net"});
        Intrinsics.checkNotNullParameter("gads:preconnect_urls", C3510b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Iterator it = ((List) ex0Var.a("gads:preconnect_urls", defaultValue, yr.g)).iterator();
        while (it.hasNext()) {
            BuildersKt__Builders_commonKt.launch$default(this.e, null, null, new l8(this, (String) it.next(), null), 3, null);
        }
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        return a(this, continuation);
    }
}
