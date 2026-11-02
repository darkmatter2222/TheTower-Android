package kotlin;

import com.google.common.base.Splitter;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.io.IOException;
import java.util.LinkedList;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public abstract class b43 {
    public final cw2 a;
    public final e01 b;
    public final ex0 c;
    public final zw3 d;
    public g30 e;
    public CoroutineScope f;
    public uv g;
    public Object h;
    public final Channel i;
    public final LinkedList j;

    public b43(dw2 consentManagerProvider, e01 httpClient, ex0 flags, zw3 userAgentProvider) {
        Intrinsics.checkNotNullParameter(consentManagerProvider, "consentManagerProvider");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(userAgentProvider, "userAgentProvider");
        this.a = consentManagerProvider;
        this.b = httpClient;
        this.c = flags;
        this.d = userAgentProvider;
        this.i = ChannelKt.Channel$default(0, null, null, 7, null);
        this.j = new LinkedList();
    }

    public abstract Object a(Continuation continuation);

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(byte[] bArr, Continuation continuation) {
        x33 x33Var;
        if (continuation instanceof x33) {
            x33Var = (x33) continuation;
            int i = x33Var.c;
            if ((i & Integer.MIN_VALUE) != 0) {
                x33Var.c = i - Integer.MIN_VALUE;
            } else {
                x33Var = new x33(this, continuation);
            }
        } else {
            x33Var = new x33(this, continuation);
        }
        x33 x33Var2 = x33Var;
        Object obj = x33Var2.a;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = x33Var2.c;
        try {
            if (i2 == 0) {
                p005kotlin.ResultKt.throwOnFailure(obj);
                f81 f81VarA = new e81().b(this.c.w0()).b(CommonGatewayClient.HEADER_PROTOBUF, bArr).a();
                e01 e01Var = this.b;
                x33Var2.c = 1;
                if (e01.a(e01Var, f81VarA, (Duration) null, false, (Continuation) x33Var2, 30) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                p005kotlin.ResultKt.throwOnFailure(obj);
            }
        } catch (IOException e) {
            Splitter splitter = f01.a;
            f01.b("Failed to ping RCS payload: " + e, null);
        }
        return p005kotlin.Unit.INSTANCE;
    }

    public final void a(Object snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        synchronized (this) {
            this.j.add(snapshot);
        }
        if (a()) {
            this.i.mo4525trySendJP2dKIU(p005kotlin.Unit.INSTANCE);
        }
    }

    public final void a(CoroutineScope backgroundScope, vz0 baseMessage, uv chromeVariationsProvider) {
        CoroutineScope coroutineScope;
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(baseMessage, "baseMessage");
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "chromeVariationsProvider");
        Intrinsics.checkNotNullParameter(backgroundScope, "<set-?>");
        this.f = backgroundScope;
        Intrinsics.checkNotNullParameter(baseMessage, "<set-?>");
        this.h = baseMessage;
        Object obj = this.a.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        g30 g30Var = (g30) obj;
        Intrinsics.checkNotNullParameter(g30Var, "<set-?>");
        this.e = g30Var;
        Intrinsics.checkNotNullParameter(chromeVariationsProvider, "<set-?>");
        this.g = chromeVariationsProvider;
        CoroutineScope coroutineScope2 = this.f;
        if (coroutineScope2 != null) {
            coroutineScope = coroutineScope2;
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundScope");
            coroutineScope = null;
        }
        a43 block = new a43(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    public abstract boolean a();

    public abstract long b();
}
