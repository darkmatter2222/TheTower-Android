package kotlin;

import org.chromium.net.CronetProvider;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class s60 extends Lambda implements Function1 {
    public static final s60 a = new s60();

    public s60() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(Intrinsics.areEqual(((CronetProvider) obj).getName(), "Google-Play-Services-Cronet-Provider"));
    }
}
