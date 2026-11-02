package kotlin;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import java.util.concurrent.ExecutorService;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ow0 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ow0(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }

    @Override // kotlin.cw2
    public final Object get() {
        Context context = (Context) this.a.get();
        sz concurrencyObjects = (sz) this.b.get();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        return (DataStore) kq2.b(DataStoreFactory.create$default(DataStoreFactory.INSTANCE, rb0.a, null, null, CoroutineScopeKt.CoroutineScope(ExecutorsKt.from((ExecutorService) concurrencyObjects.d).plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(new rs3())), new lw0(context), 6, null));
    }
}
