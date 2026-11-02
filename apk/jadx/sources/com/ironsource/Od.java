package com.ironsource;

import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;

/* JADX INFO: loaded from: classes4.dex */
public class Od extends C3818s3 {
    private static final Od d = new Od();
    private InterfaceC3846tb b = null;
    private InterfaceC3846tb c = null;

    class a implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ AdInfo b;

        a(boolean z, AdInfo adInfo) {
            this.a = z;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.b;
            if (interfaceC3846tb != null) {
                if (this.a) {
                    ((InterfaceC3864ub) interfaceC3846tb).d(od.a(this.b));
                    IronLog.CALLBACK.info("onAdAvailable() adInfo = " + Od.this.a(this.b));
                } else {
                    ((InterfaceC3864ub) interfaceC3846tb).a();
                    IronLog.CALLBACK.info("onAdUnavailable()");
                }
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ C3717md a;
        final /* synthetic */ AdInfo b;

        b(C3717md c3717md, AdInfo adInfo) {
            this.a = c3717md;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.c;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.b(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdRewarded() placement = " + this.a + ", adInfo = " + Od.this.a(this.b));
            }
        }
    }

    class c implements Runnable {
        final /* synthetic */ C3717md a;
        final /* synthetic */ AdInfo b;

        c(C3717md c3717md, AdInfo adInfo) {
            this.a = c3717md;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.b;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.b(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdRewarded() placement = " + this.a + ", adInfo = " + Od.this.a(this.b));
            }
        }
    }

    class d implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        d(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.c;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.a(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + Od.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    class e implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        e(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.b;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.a(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + Od.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    class f implements Runnable {
        final /* synthetic */ C3717md a;
        final /* synthetic */ AdInfo b;

        f(C3717md c3717md, AdInfo adInfo) {
            this.a = c3717md;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.c;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.a(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdClicked() placement = " + this.a + ", adInfo = " + Od.this.a(this.b));
            }
        }
    }

    class g implements Runnable {
        final /* synthetic */ C3717md a;
        final /* synthetic */ AdInfo b;

        g(C3717md c3717md, AdInfo adInfo) {
            this.a = c3717md;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.b;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.a(this.a, od.a(this.b));
                IronLog.CALLBACK.info("onAdClicked() placement = " + this.a + ", adInfo = " + Od.this.a(this.b));
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
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.c;
            if (interfaceC3846tb != null) {
                ((InterfaceC3882vb) interfaceC3846tb).a(od.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + Od.this.a(this.a));
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
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.b;
            if (interfaceC3846tb != null) {
                ((InterfaceC3882vb) interfaceC3846tb).a(od.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    class j implements Runnable {
        final /* synthetic */ IronSourceError a;

        j(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC3846tb interfaceC3846tb = Od.this.c;
            if (interfaceC3846tb != null) {
                ((InterfaceC3882vb) interfaceC3846tb).a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    class k implements Runnable {
        final /* synthetic */ IronSourceError a;

        k(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC3846tb interfaceC3846tb = Od.this.b;
            if (interfaceC3846tb != null) {
                ((InterfaceC3882vb) interfaceC3846tb).a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
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
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.c;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.c(od.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    class m implements Runnable {
        final /* synthetic */ AdInfo a;

        m(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.b;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.c(od.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    class n implements Runnable {
        final /* synthetic */ AdInfo a;

        n(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.c;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.b(od.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    class o implements Runnable {
        final /* synthetic */ AdInfo a;

        o(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.b;
            if (interfaceC3846tb != null) {
                interfaceC3846tb.b(od.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + Od.this.a(this.a));
            }
        }
    }

    class p implements Runnable {
        final /* synthetic */ boolean a;
        final /* synthetic */ AdInfo b;

        p(boolean z, AdInfo adInfo) {
            this.a = z;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            Od od = Od.this;
            InterfaceC3846tb interfaceC3846tb = od.c;
            if (interfaceC3846tb != null) {
                if (this.a) {
                    ((InterfaceC3864ub) interfaceC3846tb).d(od.a(this.b));
                    IronLog.CALLBACK.info("onAdAvailable() adInfo = " + Od.this.a(this.b));
                } else {
                    ((InterfaceC3864ub) interfaceC3846tb).a();
                    IronLog.CALLBACK.info("onAdUnavailable()");
                }
            }
        }
    }

    private Od() {
    }

    public static Od a() {
        return d;
    }

    private void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public void a(C3717md c3717md, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(c3717md, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(c3717md, adInfo));
        }
    }

    public void a(IronSourceError ironSourceError) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(ironSourceError));
            return;
        }
        InterfaceC3846tb interfaceC3846tb = this.b;
        if (interfaceC3846tb == null || !(interfaceC3846tb instanceof InterfaceC3882vb)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(ironSourceError));
    }

    public void a(IronSourceError ironSourceError, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(ironSourceError, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(ironSourceError, adInfo));
        }
    }

    public void a(InterfaceC3846tb interfaceC3846tb) {
        this.b = interfaceC3846tb;
    }

    public void a(boolean z, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new p(z, adInfo));
            return;
        }
        InterfaceC3846tb interfaceC3846tb = this.b;
        if (interfaceC3846tb == null || !(interfaceC3846tb instanceof InterfaceC3864ub)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(z, adInfo));
    }

    public void b() {
    }

    public void b(C3717md c3717md, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(c3717md, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(c3717md, adInfo));
        }
    }

    public void b(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new n(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new o(adInfo));
        }
    }

    public void b(InterfaceC3846tb interfaceC3846tb) {
        this.c = interfaceC3846tb;
    }

    public void c() {
    }

    public void c(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new l(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new m(adInfo));
        }
    }

    public void d(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(adInfo));
            return;
        }
        InterfaceC3846tb interfaceC3846tb = this.b;
        if (interfaceC3846tb == null || !(interfaceC3846tb instanceof InterfaceC3882vb)) {
            return;
        }
        IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(adInfo));
    }
}
