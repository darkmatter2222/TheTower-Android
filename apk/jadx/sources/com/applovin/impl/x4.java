package com.applovin.impl;

import androidx.credentials.CredentialManager$$ExternalSyntheticLambda0;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class x4 {
    public static final Executor i = new Executor() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda3
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            AppLovinSdkUtils.runOnUiThread(runnable);
        }
    };
    public static final Executor j = new CredentialManager$$ExternalSyntheticLambda0();
    private final String b;
    private volatile Object g;
    private volatile Object h;
    private final Object a = new Object();
    private final List c = new ArrayList();
    private volatile boolean d = false;
    private volatile boolean e = false;
    private volatile boolean f = false;

    public interface a {
        void a(Object obj);
    }

    public interface b {
        void a(boolean z, Object obj, Object obj2);
    }

    public x4(String str) {
        this.b = str;
    }

    public static x4 a(String str, Object obj) {
        return new x4(str).b(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(a aVar, boolean z, Object obj, Object obj2) {
        if (z) {
            return;
        }
        aVar.a(obj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b bVar) {
        try {
            bVar.a(this.e, this.g, this.h);
        } catch (Throwable th) {
            a(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Runnable runnable, boolean z, Object obj, Object obj2) {
        if (z) {
            runnable.run();
        }
    }

    private void a(Throwable th) {
        m1.a(th);
        com.applovin.impl.sdk.l lVar = com.applovin.impl.sdk.l.F0;
        if (lVar != null) {
            lVar.E().a("Promise", "PromiseCallback: " + c(), th);
        }
    }

    private void a(boolean z, Object obj, Object obj2, boolean z2) {
        synchronized (this.a) {
            if (this.d) {
                return;
            }
            this.g = obj;
            this.h = obj2;
            this.e = z;
            this.f = z2;
            this.d = true;
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
            this.c.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Executor executor, final b bVar) {
        try {
            executor.execute(new Runnable() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(bVar);
                }
            });
        } catch (Throwable th) {
            a(th);
        }
    }

    private Runnable c(final Executor executor, final b bVar) {
        return new Runnable() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.b(executor, bVar);
            }
        };
    }

    public x4 a(Object obj) {
        a(false, (Object) null, obj, false);
        return this;
    }

    public void a(Executor executor, final a aVar) {
        a(executor, new b() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda4
            @Override // com.applovin.impl.x4.b
            public final void a(boolean z, Object obj, Object obj2) {
                x4.a(aVar, z, obj, obj2);
            }
        });
    }

    public void a(Executor executor, b bVar) {
        Runnable runnableC = c(executor, bVar);
        synchronized (this.a) {
            if (this.d) {
                runnableC.run();
            } else {
                this.c.add(runnableC);
            }
        }
    }

    public void a(Executor executor, final Runnable runnable) {
        a(executor, new b() { // from class: com.applovin.impl.x4$$ExternalSyntheticLambda2
            @Override // com.applovin.impl.x4.b
            public final void a(boolean z, Object obj, Object obj2) {
                x4.a(runnable, z, obj, obj2);
            }
        });
    }

    public boolean a() {
        return this.d && this.f;
    }

    public x4 b(Object obj) {
        a(true, obj, (Object) null, false);
        return this;
    }

    public Object b() {
        m1.a(e());
        return this.h;
    }

    public x4 c(Object obj) {
        a(false, (Object) null, obj, true);
        return this;
    }

    public String c() {
        String str = this.b;
        return str != null ? str : super.toString();
    }

    public boolean d() {
        return this.d;
    }

    public boolean e() {
        return this.d && !this.e;
    }

    public String toString() {
        String str;
        if (this.d) {
            str = this.e ? "Success -> " + this.g : "Failed -> " + this.h;
        } else {
            str = "Waiting";
        }
        return "Promise(" + c() + ": " + str + ")";
    }
}
