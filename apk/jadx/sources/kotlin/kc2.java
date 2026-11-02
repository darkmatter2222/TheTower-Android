package kotlin;

import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class kc2 extends Lambda implements Function0 {
    public final /* synthetic */ Exception a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kc2(Exception exc) {
        super(0);
        this.a = exc;
    }

    @Override // p005kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke() {
        return "Call to initialize WorkManager failed: " + this.a;
    }
}
