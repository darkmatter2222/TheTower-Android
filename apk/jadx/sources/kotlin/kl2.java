package kotlin;

import java.util.Map;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class kl2 extends Lambda implements Function1 {
    public static final kl2 a = new kl2();

    public kl2() {
        super(1);
    }

    public static String a(Map.Entry entry) {
        return entry.getKey() + ":" + entry.getValue();
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        return a((Map.Entry) obj);
    }
}
