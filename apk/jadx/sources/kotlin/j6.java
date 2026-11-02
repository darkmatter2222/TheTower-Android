package kotlin;

import java.util.concurrent.ConcurrentHashMap;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class j6 extends Lambda implements Function1 {
    public static final j6 a = new j6();

    public j6() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String it = (String) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return ConcurrentHashMap.newKeySet();
    }
}
