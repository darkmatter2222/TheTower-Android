package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.datasource.WebviewConfigurationDataSource;
import com.unity3d.ads.core.data.model.WebViewConfiguration;
import com.unity3d.ads.datastore.WebviewConfigurationStore;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.ResultKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetLatestWebViewConfiguration.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005JD\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0086B¢\u0006\u0002\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/unity3d/ads/core/domain/GetLatestWebViewConfiguration;", "", "webviewConfigurationDataSource", "Lcom/unity3d/ads/core/data/datasource/WebviewConfigurationDataSource;", "<init>", "(Lcom/unity3d/ads/core/data/datasource/WebviewConfigurationDataSource;)V", "invoke", "Lcom/unity3d/ads/core/data/model/WebViewConfiguration;", "receivedEntryPoint", "", "receivedVersion", "", "receivedAdditionalFiles", "", "receivedType", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GetLatestWebViewConfiguration {
    private final WebviewConfigurationDataSource webviewConfigurationDataSource;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.GetLatestWebViewConfiguration$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: GetLatestWebViewConfiguration.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.GetLatestWebViewConfiguration", f = "GetLatestWebViewConfiguration.kt", i = {0, 0, 0, 0, 1}, l = {17, 33}, m = "invoke", n = {"receivedEntryPoint", "receivedVersion", "receivedAdditionalFiles", "receivedType", "result"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GetLatestWebViewConfiguration.this.invoke(null, null, null, null, this);
        }
    }

    public GetLatestWebViewConfiguration(WebviewConfigurationDataSource webviewConfigurationDataSource) {
        Intrinsics.checkNotNullParameter(webviewConfigurationDataSource, "webviewConfigurationDataSource");
        this.webviewConfigurationDataSource = webviewConfigurationDataSource;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object invoke$default(GetLatestWebViewConfiguration getLatestWebViewConfiguration, String str, Integer num, List list, String str2, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            num = null;
        }
        if ((i & 4) != 0) {
            list = null;
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        return getLatestWebViewConfiguration.invoke(str, num, list, str2, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object invoke(String str, Integer num, List<String> list, String str2, Continuation<? super WebViewConfiguration> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            WebviewConfigurationDataSource webviewConfigurationDataSource = this.webviewConfigurationDataSource;
            anonymousClass1.L$0 = str;
            anonymousClass1.L$1 = num;
            anonymousClass1.L$2 = list;
            anonymousClass1.L$3 = str2;
            anonymousClass1.label = 1;
            obj = webviewConfigurationDataSource.get(anonymousClass1);
            if (obj != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            WebViewConfiguration webViewConfiguration = (WebViewConfiguration) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            return webViewConfiguration;
        }
        str2 = (String) anonymousClass1.L$3;
        list = (List) anonymousClass1.L$2;
        num = (Integer) anonymousClass1.L$1;
        str = (String) anonymousClass1.L$0;
        ResultKt.throwOnFailure(obj);
        WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStore = (WebviewConfigurationStore.WebViewConfigurationStore) obj;
        int version = webViewConfigurationStore.getVersion();
        String entryPoint = webViewConfigurationStore.getEntryPoint();
        Intrinsics.checkNotNullExpressionValue(entryPoint, "getEntryPoint(...)");
        List<String> additionalFilesList = webViewConfigurationStore.getAdditionalFilesList();
        Intrinsics.checkNotNullExpressionValue(additionalFilesList, "getAdditionalFilesList(...)");
        String type = webViewConfigurationStore.getType();
        Intrinsics.checkNotNullExpressionValue(type, "getType(...)");
        WebViewConfiguration webViewConfiguration2 = new WebViewConfiguration(version, entryPoint, additionalFilesList, type);
        if (str == null && num == null && list == null && str2 == null) {
            return webViewConfiguration2;
        }
        int iIntValue = num != null ? num.intValue() : webViewConfiguration2.getVersion();
        if (str == null) {
            str = webViewConfiguration2.getEntryPoint();
        }
        if (list == null) {
            list = webViewConfiguration2.getAdditionalFiles();
        }
        if (str2 == null) {
            str2 = webViewConfiguration2.getType();
        }
        WebViewConfiguration webViewConfiguration3 = new WebViewConfiguration(iIntValue, str, list, str2);
        if (!Intrinsics.areEqual(webViewConfiguration3, webViewConfiguration2)) {
            WebviewConfigurationDataSource webviewConfigurationDataSource2 = this.webviewConfigurationDataSource;
            WebviewConfigurationStore.WebViewConfigurationStore.Builder builderNewBuilder = WebviewConfigurationStore.WebViewConfigurationStore.newBuilder();
            builderNewBuilder.setVersion(webViewConfiguration3.getVersion());
            builderNewBuilder.setEntryPoint(webViewConfiguration3.getEntryPoint());
            builderNewBuilder.addAllAdditionalFiles(webViewConfiguration3.getAdditionalFiles());
            builderNewBuilder.setType(webViewConfiguration3.getType());
            WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStoreBuild = builderNewBuilder.build();
            Intrinsics.checkNotNullExpressionValue(webViewConfigurationStoreBuild, "build(...)");
            anonymousClass1.L$0 = webViewConfiguration3;
            anonymousClass1.L$1 = null;
            anonymousClass1.L$2 = null;
            anonymousClass1.L$3 = null;
            anonymousClass1.label = 2;
            if (webviewConfigurationDataSource2.set(webViewConfigurationStoreBuild, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return webViewConfiguration3;
    }
}
