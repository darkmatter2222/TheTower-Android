package com.unity3d.services.core.di;

import com.unity3d.ads.core.domain.HttpClientProvider;
import com.unity3d.services.core.network.core.HttpClient;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ServiceProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/network/core/HttpClient;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.di.ServiceProvider$initialize$1$37$1", f = "ServiceProvider.kt", i = {}, l = {542}, m = "invokeSuspend", n = {}, s = {})
final class ServiceProvider$initialize$1$37$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HttpClient>, Object> {
    final /* synthetic */ ServicesRegistry $this_registry;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ServiceProvider$initialize$1$37$1(ServicesRegistry servicesRegistry, Continuation<? super ServiceProvider$initialize$1$37$1> continuation) {
        super(2, continuation);
        this.$this_registry = servicesRegistry;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ServiceProvider$initialize$1$37$1(this.$this_registry, continuation);
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HttpClient> continuation) {
        return ((ServiceProvider$initialize$1$37$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        this.label = 1;
        Object objInvoke = ((HttpClientProvider) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClientProvider.class)))).invoke(this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
