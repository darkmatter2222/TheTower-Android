package com.ironsource;

import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes4.dex */
public class F2 extends C3818s3 {
    private static final F2 d = new F2();
    private Ia b = null;
    private Ia c = null;

    class a implements Runnable {
        final /* synthetic */ AdInfo a;

        a(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.g(f2.a(this.a));
                IronLog.CALLBACK.info("onAdLeftApplication() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ AdInfo a;

        b(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.d(f2.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ AdInfo a;

        c(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.d(f2.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ AdInfo a;

        d(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.e(f2.a(this.a));
                IronLog.CALLBACK.info("onAdLoaded() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    class e implements Runnable {
        final /* synthetic */ AdInfo a;

        e(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.e(f2.a(this.a));
                IronLog.CALLBACK.info("onAdLoaded() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ IronSourceError a;

        f(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            Ia ia = F2.this.c;
            if (ia != null) {
                ia.a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ IronSourceError a;

        g(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            Ia ia = F2.this.b;
            if (ia != null) {
                ia.a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class h implements Runnable {
        final /* synthetic */ AdInfo a;

        h(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.h(f2.a(this.a));
                IronLog.CALLBACK.info("onAdScreenPresented() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    class i implements Runnable {
        final /* synthetic */ AdInfo a;

        i(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.h(f2.a(this.a));
                IronLog.CALLBACK.info("onAdScreenPresented() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    class j implements Runnable {
        final /* synthetic */ AdInfo a;

        j(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.f(f2.a(this.a));
                IronLog.CALLBACK.info("onAdScreenDismissed() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    class k implements Runnable {
        final /* synthetic */ AdInfo a;

        k(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.b;
            if (ia != null) {
                ia.f(f2.a(this.a));
                IronLog.CALLBACK.info("onAdScreenDismissed() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    class l implements Runnable {
        final /* synthetic */ AdInfo a;

        l(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            F2 f2 = F2.this;
            Ia ia = f2.c;
            if (ia != null) {
                ia.g(f2.a(this.a));
                IronLog.CALLBACK.info("onAdLeftApplication() adInfo = " + F2.this.a(this.a));
            }
        }
    }

    private F2() {
    }

    public static F2 a() {
        return d;
    }

    public void a(Ia ia) {
        this.b = ia;
    }

    public void a(IronSourceError ironSourceError) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(ironSourceError));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(ironSourceError));
        }
    }

    public Ia b() {
        return this.b;
    }

    public void b(Ia ia) {
        this.c = ia;
    }

    public void b(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(adInfo));
        }
    }

    public void c(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new l(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(adInfo));
        }
    }

    public void d(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(adInfo));
        }
    }

    public void e(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(adInfo));
        }
    }

    public void f(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(adInfo));
        }
    }
}
