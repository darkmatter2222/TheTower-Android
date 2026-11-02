package kotlin;

import java.util.Optional;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gp3 implements no3 {
    public final CoroutineScope a;
    public final i2 b;
    public final v3 c;
    public final f73 d;
    public final rq3 e;
    public final Optional f;
    public volatile Job g;

    public gp3(CoroutineScope backgroundScope, i2 adConfiguration, v3 adEventEmitter, f73 rewardedEventEmitter, rq3 thirdPartyVideoEventEmitter, Optional nativeAdMapper) {
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(rewardedEventEmitter, "rewardedEventEmitter");
        Intrinsics.checkNotNullParameter(thirdPartyVideoEventEmitter, "thirdPartyVideoEventEmitter");
        Intrinsics.checkNotNullParameter(nativeAdMapper, "nativeAdMapper");
        this.a = backgroundScope;
        this.b = adConfiguration;
        this.c = adEventEmitter;
        this.d = rewardedEventEmitter;
        this.e = thirdPartyVideoEventEmitter;
        this.f = nativeAdMapper;
    }

    public final void a() {
        if (this.f.isPresent()) {
            if (((p12) this.f.get()).b() && this.b.q0 == h2.THIRD_PARTY_SDK_CALLBACK) {
                CoroutineScope coroutineScope = this.a;
                to3 block = new to3(this, null);
                EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
                Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
                Intrinsics.checkNotNullParameter(context, "context");
                Intrinsics.checkNotNullParameter(block, "block");
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            }
        } else if (this.b.q0 != h2.ON_AD_SHOW || this.g != null) {
            CoroutineScope coroutineScope2 = this.a;
            uo3 block2 = new uo3(this, null);
            EmptyCoroutineContext context2 = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope2, "<this>");
            Intrinsics.checkNotNullParameter(context2, "context");
            Intrinsics.checkNotNullParameter(block2, "block");
            BuildersKt__Builders_commonKt.launch$default(coroutineScope2, context2, null, new ws3(block2, null), 2, null);
        }
        Job job = this.g;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
    }
}
