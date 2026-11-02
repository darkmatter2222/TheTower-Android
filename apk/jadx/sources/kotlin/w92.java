package kotlin;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.SystemClock;
import com.google.common.base.Splitter;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class w92 extends ConnectivityManager.NetworkCallback {
    public final /* synthetic */ ca2 a;

    public w92(ca2 ca2Var) {
        this.a = ca2Var;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        Duration.Companion companion = Duration.INSTANCE;
        this.a.c.getClass();
        long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
        Splitter splitter = f01.a;
        f01.a(new q92(duration, network));
        CoroutineScope coroutineScope = this.a.b;
        r92 block = new r92(this.a, duration, network, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(networkCapabilities, "networkCapabilities");
        Duration.Companion companion = Duration.INSTANCE;
        this.a.c.getClass();
        long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
        Splitter splitter = f01.a;
        f01.a(new s92(duration, network, networkCapabilities));
        CoroutineScope coroutineScope = this.a.b;
        t92 block = new t92(this.a, duration, network, networkCapabilities, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        Intrinsics.checkNotNullParameter(network, "network");
        Duration.Companion companion = Duration.INSTANCE;
        this.a.c.getClass();
        long duration = DurationKt.toDuration(SystemClock.elapsedRealtime(), DurationUnit.MILLISECONDS);
        Splitter splitter = f01.a;
        f01.a(new u92(duration, network));
        CoroutineScope coroutineScope = this.a.b;
        v92 block = new v92(this.a, duration, null);
        EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
        Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(block, "block");
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
    }
}
