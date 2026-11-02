package com.google.android.libraries.ads.mobile.sdk.common;

import com.tapjoy.TJAdUnitConstants;
import java.util.Map;
import kotlin.a01;
import kotlin.er2;
import kotlin.fr2;
import kotlin.j53;
import kotlin.jr2;
import kotlin.lr2;
import kotlin.lt2;
import kotlin.mt2;
import kotlin.pt2;
import kotlin.rs3;
import kotlin.ur2;
import kotlin.vf0;
import kotlin.xs2;
import kotlin.zz0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J)\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\n\u0010\fJ\u0019\u0010\r\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0004\u001a\u00020\u0003H&¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001c\u0010\u0018J\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006$"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdPreloader;", "AdT", "", "", "preloadId", "Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;", "preloadConfiguration", "Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;", "preloadCallback", "", TJAdUnitConstants.String.VIDEO_START, "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;)Z", "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;)Z", "pollAd", "(Ljava/lang/String;)Ljava/lang/Object;", "Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "peekAdResponseInfo", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "getConfiguration", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;", "", "getConfigurations", "()Ljava/util/Map;", "destroy", "(Ljava/lang/String;)Z", "", "destroyAll", "()V", "isAdAvailable", "", "getNumAdsAvailable", "(Ljava/lang/String;)I", "Lads_mobile_sdk/j53;", "requestType", "<init>", "(Lads_mobile_sdk/j53;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public abstract class AdPreloader<AdT> {
    private final j53 a;

    public AdPreloader(j53 requestType) {
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        this.a = requestType;
    }

    public boolean destroy(String preloadId) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        a01.a.getClass();
        pt2 pt2Var = (pt2) ((vf0) zz0.a()).x1.get();
        j53 requestType = this.a;
        pt2Var.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(preloadId, "configurationId");
        return ((Boolean) BuildersKt.runBlocking(new rs3(), new mt2(requestType, pt2Var, preloadId, null))).booleanValue();
    }

    public void destroyAll() throws InterruptedException {
        a01.a.getClass();
        pt2 pt2Var = (pt2) ((vf0) zz0.a()).x1.get();
        j53 requestType = this.a;
        pt2Var.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        BuildersKt.runBlocking(new rs3(), new lt2(pt2Var, requestType, null));
    }

    public PreloadConfiguration getConfiguration(String preloadId) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        a01.a.getClass();
        pt2 pt2Var = (pt2) ((vf0) zz0.a()).x1.get();
        j53 requestType = this.a;
        pt2Var.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        return (PreloadConfiguration) BuildersKt.runBlocking(new rs3(), new er2(requestType, pt2Var, preloadId, null));
    }

    public Map<String, PreloadConfiguration> getConfigurations() {
        a01.a.getClass();
        pt2 pt2Var = (pt2) ((vf0) zz0.a()).x1.get();
        j53 requestType = this.a;
        pt2Var.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        return (Map) BuildersKt.runBlocking(new rs3(), new fr2(pt2Var, requestType, null));
    }

    public int getNumAdsAvailable(String preloadId) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        a01.a.getClass();
        pt2 pt2Var = (pt2) ((vf0) zz0.a()).x1.get();
        j53 requestType = this.a;
        pt2Var.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(preloadId, "configurationId");
        return ((Number) BuildersKt.runBlocking(new rs3(), new lr2(requestType, pt2Var, preloadId, null))).intValue();
    }

    public boolean isAdAvailable(String preloadId) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        a01.a.getClass();
        pt2 pt2Var = (pt2) ((vf0) zz0.a()).x1.get();
        j53 requestType = this.a;
        pt2Var.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(preloadId, "configurationId");
        return ((Boolean) BuildersKt.runBlocking(new rs3(), new jr2(requestType, pt2Var, preloadId, null))).booleanValue();
    }

    public ResponseInfo peekAdResponseInfo(String preloadId) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        a01.a.getClass();
        pt2 pt2Var = (pt2) ((vf0) zz0.a()).x1.get();
        j53 requestType = this.a;
        pt2Var.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        return (ResponseInfo) BuildersKt__BuildersKt.runBlocking$default(null, new ur2(requestType, pt2Var, preloadId, null), 1, null);
    }

    public abstract AdT pollAd(String preloadId);

    public abstract boolean start(String preloadId, PreloadConfiguration preloadConfiguration);

    public boolean start(String preloadId, PreloadConfiguration preloadConfiguration, PreloadCallback preloadCallback) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(preloadConfiguration, "preloadConfiguration");
        a01.a.getClass();
        pt2 pt2Var = (pt2) ((vf0) zz0.a()).x1.get();
        j53 requestType = this.a;
        pt2Var.getClass();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(preloadConfiguration, "preloadConfiguration");
        return ((Boolean) BuildersKt.runBlocking(new rs3(), new xs2(pt2Var, preloadId, requestType, preloadConfiguration, preloadCallback, null))).booleanValue();
    }
}
