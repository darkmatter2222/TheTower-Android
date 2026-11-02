package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.gson.JsonObject;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class q41 implements VideoController {
    public final CoroutineScope a;
    public final r31 b;
    public float c;
    public final boolean d;
    public final CompletableDeferred e;
    public final Object f;
    public float g;
    public float h;
    public k41 i;
    public boolean j;
    public boolean k;
    public VideoController.VideoLifecycleCallbacks l;
    public boolean m;

    public q41(CoroutineScope uiScope, r31 webView, float f, boolean z) {
        Intrinsics.checkNotNullParameter(uiScope, "uiScope");
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.a = uiScope;
        this.b = webView;
        this.c = f;
        this.d = z;
        this.e = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        this.f = new Object();
        this.i = k41.UNKNOWN;
        this.m = true;
    }

    public final float a() {
        float f;
        synchronized (this.f) {
            f = this.h;
        }
        return f;
    }

    public final Object a(VideoOptions videoOptions, ContinuationImpl continuationImpl) {
        p005kotlin.Unit unit;
        synchronized (this.f) {
            this.j = videoOptions.getCustomControlsRequested();
            videoOptions.getClickToExpandRequested();
            unit = p005kotlin.Unit.INSTANCE;
        }
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("muteStart", videoOptions.getStartMuted() ? "1" : "0");
        jsonObject.addProperty("customControlsRequested", videoOptions.getCustomControlsRequested() ? "1" : "0");
        jsonObject.addProperty("clickToExpandRequested", videoOptions.getClickToExpandRequested() ? "1" : "0");
        Object objA = a(jsonObject, "initialState", continuationImpl);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : unit;
    }

    public final Object a(JsonObject jsonObject, String str, Continuation continuation) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        jsonObject.addProperty("action", str);
        Object objA = this.b.a(jsonObject, "pubVideoCmd", continuation);
        return objA == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : p005kotlin.Unit.INSTANCE;
    }

    public final void a(float f) {
        synchronized (this.f) {
            this.g = f;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    public final void a(float f, k41 playbackState, boolean z, float f2) {
        Intrinsics.checkNotNullParameter(playbackState, "playbackState");
        synchronized (this.f) {
            this.c = f;
            boolean zIsMuted = isMuted();
            a(z);
            k41 k41Var = this.i;
            this.i = playbackState;
            float f3 = this.h;
            this.h = f2;
            if (Math.abs(f2 - f3) > 1.0E-4f) {
                this.b.invalidate();
            }
            BuildersKt__Builders_commonKt.launch$default(this.a, null, null, new l41(this, k41Var, playbackState, zIsMuted, z, null), 3, null);
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    public final void a(String str) {
        this.e.complete(str);
    }

    public final void a(boolean z) {
        synchronized (this.f) {
            this.m = z;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final VideoController.VideoLifecycleCallbacks getVideoLifecycleCallbacks() {
        VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks;
        synchronized (this.f) {
            videoLifecycleCallbacks = this.l;
        }
        return videoLifecycleCallbacks;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final boolean isCustomControlsEnabled() {
        boolean z;
        synchronized (this.f) {
            z = this.d && this.j;
        }
        return z;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final boolean isMuted() {
        boolean z;
        synchronized (this.f) {
            z = this.m;
        }
        return z;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void mute(boolean z) {
        CoroutineScope coroutineScope = this.a;
        m41 block = new m41(this, z, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void pause() {
        CoroutineScope coroutineScope = this.a;
        n41 block = new n41(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void play() {
        CoroutineScope coroutineScope = this.a;
        o41 block = new o41(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void setVideoLifecycleCallbacks(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        synchronized (this.f) {
            this.l = videoLifecycleCallbacks;
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
        }
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.VideoController
    public final void stop() {
        CoroutineScope coroutineScope = this.a;
        p41 block = new p41(this, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }
}
