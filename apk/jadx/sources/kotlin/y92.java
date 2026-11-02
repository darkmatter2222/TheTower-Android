package kotlin;

import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class y92 extends Lambda implements Function0 {
    public final /* synthetic */ long a;
    public final /* synthetic */ boolean b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y92(long j, boolean z) {
        super(0);
        this.a = j;
        this.b = z;
    }

    @Override // p005kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Previously online at " + Duration.m4407toStringimpl(this.a) + "?: " + this.b;
    }
}
