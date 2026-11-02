package kotlin;

import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vw3 extends nc1 {
    public final CoroutineScope c;
    public final e01 d;
    public final Channel e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vw3(CoroutineScope backgroundScope, e01 httpClient) {
        super((s11) null, 3);
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.c = backgroundScope;
        this.d = httpClient;
        this.e = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
    }

    @Override // kotlin.nc1
    public final Object u(Continuation continuation) {
        CoroutineScope coroutineScope = this.c;
        uw3 block = new uw3(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
        return new q01(p005kotlin.Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0055  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007c, code lost:
    
        if (r10 == r1) goto L28;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x007c -> B:29:0x007f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object v(p005kotlin.coroutines.Continuation r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof kotlin.tw3
            if (r0 == 0) goto L13
            r0 = r10
            ads_mobile_sdk.tw3 r0 = (kotlin.tw3) r0
            int r1 = r0.e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.e = r1
            goto L18
        L13:
            ads_mobile_sdk.tw3 r0 = new ads_mobile_sdk.tw3
            r0.<init>(r9, r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            android.net.Uri r2 = r0.b
            ads_mobile_sdk.vw3 r5 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L30
            goto L7f
        L30:
            r10 = move-exception
            goto L91
        L32:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L3a:
            ads_mobile_sdk.vw3 r2 = r0.a
            p005kotlin.ResultKt.throwOnFailure(r10)
            r5 = r2
            goto L57
        L41:
            p005kotlin.ResultKt.throwOnFailure(r10)
            r10 = r9
        L45:
            kotlinx.coroutines.channels.Channel r2 = r10.e
            r0.a = r10
            r5 = 0
            r0.b = r5
            r0.e = r4
            java.lang.Object r2 = r2.receive(r0)
            if (r2 != r1) goto L55
            goto L7e
        L55:
            r5 = r10
            r10 = r2
        L57:
            kotlin.Pair r10 = (p005kotlin.Pair) r10
            java.lang.Object r2 = r10.component1()
            android.net.Uri r2 = (android.net.Uri) r2
            java.lang.Object r10 = r10.component2()
            java.util.Map r10 = (java.util.Map) r10
            ads_mobile_sdk.e01 r6 = r5.d     // Catch: java.lang.Exception -> L30
            java.net.URL r7 = new java.net.URL     // Catch: java.lang.Exception -> L30
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Exception -> L30
            r7.<init>(r8)     // Catch: java.lang.Exception -> L30
            r0.a = r5     // Catch: java.lang.Exception -> L30
            r0.b = r2     // Catch: java.lang.Exception -> L30
            r0.e = r3     // Catch: java.lang.Exception -> L30
            r8 = 26
            java.lang.Object r10 = kotlin.e01.a(r6, r7, r10, r0, r8)     // Catch: java.lang.Exception -> L30
            if (r10 != r1) goto L7f
        L7e:
            return r1
        L7f:
            ads_mobile_sdk.v01 r10 = (kotlin.v01) r10     // Catch: java.lang.Exception -> L30
            boolean r6 = r10 instanceof kotlin.q01     // Catch: java.lang.Exception -> L30
            if (r6 == 0) goto Lb3
            ads_mobile_sdk.q01 r10 = (kotlin.q01) r10     // Catch: java.lang.Exception -> L30
            java.lang.Object r10 = r10.a()     // Catch: java.lang.Exception -> L30
            ads_mobile_sdk.h81 r10 = (kotlin.h81) r10     // Catch: java.lang.Exception -> L30
            r10.getClass()     // Catch: java.lang.Exception -> L30
            goto Lb3
        L91:
            com.google.common.base.Splitter r6 = kotlin.f01.a
            java.lang.String r10 = r10.getMessage()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r7 = "Error while pinging URL: "
            r6.<init>(r7)
            java.lang.StringBuilder r2 = r6.append(r2)
            java.lang.String r6 = ": "
            java.lang.StringBuilder r2 = r2.append(r6)
            java.lang.StringBuilder r10 = r2.append(r10)
            java.lang.String r10 = r10.toString()
            kotlin.f01.b(r10)
        Lb3:
            r10 = r5
            goto L45
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.vw3.v(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
