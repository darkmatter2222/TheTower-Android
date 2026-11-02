package com.google.android.libraries.ads.mobile.sdk.h5;

import kotlin.a01;
import kotlin.d51;
import kotlin.f51;
import kotlin.vf0;
import kotlin.zz0;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\n\u0010\t¨\u0006\u000f"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/h5/H5AdsRequestHandler;", "", "", "clearAdObjects", "()V", "", "url", "", "shouldInterceptRequest", "(Ljava/lang/String;)Z", "handleH5AdsRequest", "Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;", "onH5AdsEventListener", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/h5/OnH5AdsEventListener;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class H5AdsRequestHandler {
    private final f51 a;

    public H5AdsRequestHandler(OnH5AdsEventListener onH5AdsEventListener) {
        Intrinsics.checkNotNullParameter(onH5AdsEventListener, "onH5AdsEventListener");
        a01.a.getClass();
        this.a = ((vf0) zz0.a()).b().a(onH5AdsEventListener).a().a();
    }

    public final void clearAdObjects() {
        this.a.a();
    }

    public final boolean handleH5AdsRequest(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        f51 f51Var = this.a;
        f51Var.getClass();
        Intrinsics.checkNotNullParameter(url, "url");
        if (!f51Var.a(url)) {
            return false;
        }
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(f51Var.g, null, null, new d51(f51Var, url, null), 3, null);
        return true;
    }

    public final boolean shouldInterceptRequest(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return this.a.a(url);
    }
}
