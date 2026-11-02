package kotlin;

import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class vd3 extends Lambda implements Function1 {
    public final /* synthetic */ boolean a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vd3(boolean z) {
        super(1);
        this.a = z;
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        be3 update = (be3) obj;
        Intrinsics.checkNotNullParameter(update, "$this$update");
        update.a.a(this.a);
        return p005kotlin.Unit.INSTANCE;
    }
}
