package kotlin;

import android.content.Context;
import android.os.Build;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class j13 extends jj3 {
    public final Context f;
    public final Map g;

    public j13(xf xfVar, yw1 yw1Var, Map map, Context context, ts3 ts3Var) {
        super("MK5HB0RzJr0QfmWzjZukeoRT6jTHxeECoyJyQ7EtPglrcuX6klE2FaowKKUZ16Uv", "iUEJvxPqNpsH5KEgFbTXuwnVvg/2CWGGR6SvekIk2ms=", xfVar, yw1Var, ts3Var.a(lq0.EVENT_ID_RECENT_FOREGROUND_TIME_SIGNALS_TASK));
        this.f = context;
        this.g = map;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jj3
    public final void a(Method method, xf xfVar) {
        fh fhVar;
        Long lValueOf;
        Long l = -1L;
        try {
            if (Build.VERSION.SDK_INT < 30) {
                ListenableFuture listenableFuture = (ListenableFuture) this.g.get("gs");
                if (listenableFuture != null && listenableFuture.isDone() && (fhVar = (fh) listenableFuture.get()) != null) {
                    lValueOf = Long.valueOf(fhVar.z());
                }
                synchronized (xfVar) {
                    xfVar.u(l.longValue());
                }
            }
            lValueOf = (Long) Preconditions.checkNotNull((Long) method.invoke("", this.f));
            l = lValueOf;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (ExecutionException unused2) {
        }
        synchronized (xfVar) {
            xfVar.u(l.longValue());
        }
    }
}
