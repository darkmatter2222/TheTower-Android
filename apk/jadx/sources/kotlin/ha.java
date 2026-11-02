package kotlin;

import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class ha implements jr0 {
    public final dw2 a;

    public ha(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // kotlin.cw2
    public final Object get() {
        return (ListeningExecutorService) kq2.b(MoreExecutors.listeningDecorator((ExecutorService) this.a.get()));
    }
}
