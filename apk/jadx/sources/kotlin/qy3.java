package kotlin;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import android.view.View;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class qy3 implements bt3, pc1 {
    public static final String[] h = {"android:establish_vpn_service", "android:establish_vpn_manager"};
    public final tx a;
    public final Context b;
    public final ExecutorService c;
    public long d = 0;
    public long e = 0;
    public long f = -1;
    public boolean g = false;

    public qy3(Context context, tx txVar, ExecutorService executorService, String[] strArr) {
        this.a = txVar;
        this.b = context;
        this.c = executorService;
    }

    @Override // kotlin.pc1
    public final ListenableFuture a() {
        return Build.VERSION.SDK_INT < 30 ? Futures.immediateVoidFuture() : Futures.submit(new Runnable() { // from class: ads_mobile_sdk.qy3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.d();
            }
        }, this.c);
    }

    @Override // kotlin.bt3
    public final void a(HashMap map) {
        long j;
        c();
        synchronized (this) {
            j = this.g ? this.e - this.d : -1L;
        }
        map.put("vs", Long.valueOf(j));
        map.put("vf", Long.valueOf(b()));
    }

    @Override // kotlin.bt3
    public final void a(HashMap map, Context context, View view) {
        c();
    }

    public final long b() {
        long j;
        synchronized (this) {
            j = this.f;
            this.f = -1L;
        }
        return j;
    }

    @Override // kotlin.bt3
    public final void b(HashMap map) {
        c();
    }

    public final void c() {
        synchronized (this) {
            if (this.g) {
                this.a.getClass();
                this.e = System.currentTimeMillis();
            }
        }
    }

    public final void d() {
        try {
            ((AppOpsManager) Preconditions.checkNotNull(this.b.getSystemService("appops"))).startWatchingActive(h, this.c, new py3(this));
        } catch (Throwable unused) {
        }
    }
}
