package com.unity3d.ads.core.domain.exposure;

import com.unity3d.ads.adplayer.model.OnDownloadProgressEvent;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.CacheFile;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import kotlinx.coroutines.channels.ProducerScope;
import org.json.JSONArray;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: CommonAdViewerExposedFunctions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/unity3d/ads/adplayer/model/OnDownloadProgressEvent;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1", f = "CommonAdViewerExposedFunctions.kt", i = {0}, l = {421, CommonGatewayClient.CODE_TOO_MANY_REQUESTS, 433}, m = "invokeSuspend", n = {"$this$channelFlow"}, s = {"L$0"})
final class CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1 extends SuspendLambda implements Function2<ProducerScope<? super OnDownloadProgressEvent>, Continuation<? super Unit>, Object> {
    final /* synthetic */ AdObject $adObject;
    final /* synthetic */ CacheFile $cacheFile;
    final /* synthetic */ String $downloadId;
    final /* synthetic */ JSONArray $headers;
    final /* synthetic */ int $intervalMs;
    final /* synthetic */ int $priority;
    final /* synthetic */ String $url;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1(CacheFile cacheFile, String str, AdObject adObject, JSONArray jSONArray, int i, int i2, String str2, Continuation<? super CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1> continuation) {
        super(2, continuation);
        this.$cacheFile = cacheFile;
        this.$url = str;
        this.$adObject = adObject;
        this.$headers = jSONArray;
        this.$priority = i;
        this.$intervalMs = i2;
        this.$downloadId = str2;
    }

    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1 commonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1 = new CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1(this.$cacheFile, this.$url, this.$adObject, this.$headers, this.$priority, this.$intervalMs, this.$downloadId, continuation);
        commonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1.L$0 = obj;
        return commonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1;
    }

    @Override // p005kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super OnDownloadProgressEvent> producerScope, Continuation<? super Unit> continuation) {
        return ((CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b2, code lost:
    
        if (r2.send(new com.unity3d.ads.adplayer.model.OnDownloadProgressEvent(r10, r11, r7, p005kotlin.coroutines.jvm.internal.Boxing.boxLong(r5.getCachedFile().getContentLength()), true, null, r3), r18) == r1) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ed, code lost:
    
        if (r2.send(new com.unity3d.ads.adplayer.model.OnDownloadProgressEvent(r18.$downloadId, null, 0, null, true, r5.getError().name(), r4), r18) == r1) goto L28;
     */
    @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$downloadWithProgress$1$progressFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
