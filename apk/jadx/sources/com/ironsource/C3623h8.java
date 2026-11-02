package com.ironsource;

import com.ironsource.environment.thread.IronSourceThreadManager;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;

/* JADX INFO: renamed from: com.ironsource.h8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3623h8 extends C3818s3 {
    private static final C3623h8 d = new C3623h8();
    private InterfaceC3626hb b = null;
    private InterfaceC3626hb c = null;

    /* JADX INFO: renamed from: com.ironsource.h8$a */
    class a implements Runnable {
        final /* synthetic */ AdInfo a;

        a(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.b;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.e(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdShowSucceeded() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$b */
    class b implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        b(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.c;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.a(this.a, c3623h8.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + C3623h8.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$c */
    class c implements Runnable {
        final /* synthetic */ IronSourceError a;
        final /* synthetic */ AdInfo b;

        c(IronSourceError ironSourceError, AdInfo adInfo) {
            this.a = ironSourceError;
            this.b = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.b;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.a(this.a, c3623h8.a(this.b));
                IronLog.CALLBACK.info("onAdShowFailed() adInfo = " + C3623h8.this.a(this.b) + ", error = " + this.a.getErrorMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$d */
    class d implements Runnable {
        final /* synthetic */ AdInfo a;

        d(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.c;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.d(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$e */
    class e implements Runnable {
        final /* synthetic */ AdInfo a;

        e(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.b;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.d(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdClicked() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$f */
    class f implements Runnable {
        final /* synthetic */ AdInfo a;

        f(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.c;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.a(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$g */
    class g implements Runnable {
        final /* synthetic */ AdInfo a;

        g(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.b;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.a(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdReady() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$h */
    class h implements Runnable {
        final /* synthetic */ IronSourceError a;

        h(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC3626hb interfaceC3626hb = C3623h8.this.c;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$i */
    class i implements Runnable {
        final /* synthetic */ IronSourceError a;

        i(IronSourceError ironSourceError) {
            this.a = ironSourceError;
        }

        @Override // java.lang.Runnable
        public void run() {
            InterfaceC3626hb interfaceC3626hb = C3623h8.this.b;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.a(this.a);
                IronLog.CALLBACK.info("onAdLoadFailed() error = " + this.a.getErrorMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$j */
    class j implements Runnable {
        final /* synthetic */ AdInfo a;

        j(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.c;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.c(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$k */
    class k implements Runnable {
        final /* synthetic */ AdInfo a;

        k(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.b;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.c(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdOpened() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$l */
    class l implements Runnable {
        final /* synthetic */ AdInfo a;

        l(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.c;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.b(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$m */
    class m implements Runnable {
        final /* synthetic */ AdInfo a;

        m(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.b;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.b(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdClosed() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    /* JADX INFO: renamed from: com.ironsource.h8$n */
    class n implements Runnable {
        final /* synthetic */ AdInfo a;

        n(AdInfo adInfo) {
            this.a = adInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3623h8 c3623h8 = C3623h8.this;
            InterfaceC3626hb interfaceC3626hb = c3623h8.c;
            if (interfaceC3626hb != null) {
                interfaceC3626hb.e(c3623h8.a(this.a));
                IronLog.CALLBACK.info("onAdShowSucceeded() adInfo = " + C3623h8.this.a(this.a));
            }
        }
    }

    private C3623h8() {
    }

    public static synchronized C3623h8 a() {
        return d;
    }

    private void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, str, 1);
    }

    public synchronized void a(InterfaceC3626hb interfaceC3626hb) {
        this.b = interfaceC3626hb;
    }

    public void a(IronSourceError ironSourceError) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new h(ironSourceError));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new i(ironSourceError));
        }
    }

    public void a(IronSourceError ironSourceError, AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new b(ironSourceError, adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new c(ironSourceError, adInfo));
        }
    }

    public synchronized void b(InterfaceC3626hb interfaceC3626hb) {
        this.c = interfaceC3626hb;
    }

    public void b(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new d(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new e(adInfo));
        }
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
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new j(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new k(adInfo));
        }
    }

    public void e(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new f(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new g(adInfo));
        }
    }

    public void f(AdInfo adInfo) {
        if (this.c != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new n(adInfo));
        } else if (this.b != null) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(new a(adInfo));
        }
    }
}
