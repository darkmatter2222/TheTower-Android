package com.unity3d.ads.core.domain;

import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.core.LegacyHttpClient;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: AndroidHttpClientProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/network/core/HttpClient;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidHttpClientProvider$createHttpClient$client$1", f = "AndroidHttpClientProvider.kt", i = {}, l = {89}, m = "invokeSuspend", n = {}, s = {})
final class AndroidHttpClientProvider$createHttpClient$client$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HttpClient>, Object> {
    final /* synthetic */ HttpClientSelection $selectedHttpClient;
    int label;
    final /* synthetic */ AndroidHttpClientProvider this$0;

    /* JADX INFO: compiled from: AndroidHttpClientProvider.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HttpClientSelection.values().length];
            try {
                iArr[HttpClientSelection.OKHTTP3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HttpClientSelection.LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidHttpClientProvider$createHttpClient$client$1(HttpClientSelection httpClientSelection, AndroidHttpClientProvider androidHttpClientProvider, Continuation<? super AndroidHttpClientProvider$createHttpClient$client$1> continuation) {
        super(2, continuation);
        this.$selectedHttpClient = httpClientSelection;
        this.this$0 = androidHttpClientProvider;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AndroidHttpClientProvider$createHttpClient$client$1(this.$selectedHttpClient, this.this$0, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HttpClient> continuation) {
        return ((AndroidHttpClientProvider$createHttpClient$client$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            int i2 = WhenMappings.$EnumSwitchMapping$0[this.$selectedHttpClient.ordinal()];
            if (i2 == 1) {
                return this.this$0.getOkHttp3Client();
            }
            if (i2 == 2) {
                return new LegacyHttpClient(this.this$0.dispatchers);
            }
            AndroidHttpClientProvider androidHttpClientProvider = this.this$0;
            this.label = 1;
            obj = androidHttpClientProvider.buildNetworkClient(androidHttpClientProvider.context, this.this$0.dispatchers, this.$selectedHttpClient, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return (HttpClient) obj;
    }
}
