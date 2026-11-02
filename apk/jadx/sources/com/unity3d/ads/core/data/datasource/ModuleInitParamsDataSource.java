package com.unity3d.ads.core.data.datasource;

import gatewayprotocol.v1.ModuleInitParamsOuterClass;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: ModuleInitParamsDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H¦B¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/ModuleInitParamsDataSource;", "", "invoke", "", "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ModuleInitParamsDataSource {
    Object invoke(Continuation<? super List<ModuleInitParamsOuterClass.ModuleInitParams>> continuation);
}
