package kotlin;

import okhttp3.Call;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class u71 extends Lambda implements Function1 {
    public final /* synthetic */ Call a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u71(Call call) {
        super(1);
        this.a = call;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        try {
            this.a.cancel();
        } catch (Throwable unused) {
        }
        return p005kotlin.Unit.INSTANCE;
    }
}
