package kotlin;

import okhttp3.Call;
import p005kotlin.coroutines.CoroutineContext;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class v71 extends Lambda implements Function3 {
    public final /* synthetic */ Call a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v71(Call call) {
        super(3);
        this.a = call;
    }

    @Override // p005kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Intrinsics.checkNotNullParameter((Throwable) obj, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter((i01) obj2, "<anonymous parameter 1>");
        Intrinsics.checkNotNullParameter((CoroutineContext) obj3, "<anonymous parameter 2>");
        this.a.cancel();
        return p005kotlin.Unit.INSTANCE;
    }
}
