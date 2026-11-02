package kotlin;

import android.net.Network;
import android.net.NetworkCapabilities;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class s92 extends Lambda implements Function0 {
    public final /* synthetic */ long a;
    public final /* synthetic */ Network b;
    public final /* synthetic */ NetworkCapabilities c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s92(long j, Network network, NetworkCapabilities networkCapabilities) {
        super(0);
        this.a = j;
        this.b = network;
        this.c = networkCapabilities;
    }

    @Override // p005kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Network capabilities changed at " + Duration.m4407toStringimpl(this.a) + ": " + this.b + " " + this.c;
    }
}
