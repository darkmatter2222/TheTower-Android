package kotlin;

import java.lang.ref.WeakReference;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class t extends Lambda implements Function1 {
    public static final t a = new t();

    public t() {
        super(1);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        WeakReference it = (WeakReference) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it.get() == null);
    }
}
