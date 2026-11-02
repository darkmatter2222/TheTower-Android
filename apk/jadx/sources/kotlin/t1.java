package kotlin;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import kotlinx.coroutines.CoroutineScope;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class t1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public t1(vh1 vh1Var, ol0 ol0Var) {
        this.a = vh1Var;
        this.b = ol0Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        Context context = (Context) this.a.get();
        CoroutineScope backgroundScope = (CoroutineScope) this.b.get();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        return (DataStore) kq2.b(DataStoreFactory.create$default(DataStoreFactory.INSTANCE, v1.a, null, null, backgroundScope, new s1(context), 6, null));
    }
}
