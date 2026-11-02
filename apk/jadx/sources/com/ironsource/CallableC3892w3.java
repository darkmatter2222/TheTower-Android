package com.ironsource;

import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;

/* JADX INFO: renamed from: com.ironsource.w3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class CallableC3892w3 implements Callable<A3> {
    private final int a;
    private final String b;
    private final AdData c;
    private final InterfaceC3928y3 d;
    private final InterfaceC3910x3 e;
    private final NetworkSettings f;

    /* JADX INFO: renamed from: com.ironsource.w3$a */
    class a implements BiddingDataCallback {
        final /* synthetic */ C3691l5 a;
        final /* synthetic */ BlockingQueue b;

        a(C3691l5 c3691l5, BlockingQueue blockingQueue) {
            this.a = c3691l5;
            this.b = blockingQueue;
        }

        @Override // com.ironsource.mediationsdk.bidding.BiddingDataCallback
        public void onFailure(String str) {
            this.b.add(new A3(CallableC3892w3.this.d(), CallableC3892w3.this.c(), null, C3691l5.a(this.a), str));
        }

        @Override // com.ironsource.mediationsdk.bidding.BiddingDataCallback
        public void onSuccess(Map<String, Object> map) {
            this.b.add(new A3(CallableC3892w3.this.d(), CallableC3892w3.this.c(), map, C3691l5.a(this.a), null));
        }
    }

    public CallableC3892w3(int i, String str, AdData adData, InterfaceC3928y3 interfaceC3928y3, InterfaceC3910x3 interfaceC3910x3, NetworkSettings networkSettings) {
        this.a = i;
        this.b = str;
        this.c = adData;
        this.d = interfaceC3928y3;
        this.e = interfaceC3910x3;
        this.f = networkSettings;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public A3 call() throws Exception {
        C3691l5 c3691l5 = new C3691l5();
        IronLog.INTERNAL.verbose(c() + " fetching bidding data");
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(1);
        try {
            b().collectBiddingData(this.c, ContextProvider.getInstance().getActiveContext(), new a(c3691l5, arrayBlockingQueue));
        } catch (Exception e) {
            C3801r4.d().a(e);
            String str = "Exception while calling collectBiddingData - " + e.getMessage();
            IronLog.INTERNAL.error(str);
            InterfaceC3910x3 interfaceC3910x3 = this.e;
            if (interfaceC3910x3 != null) {
                interfaceC3910x3.a(str);
            }
        } catch (NoClassDefFoundError e2) {
            C3801r4.d().a(e2);
            String str2 = "Error while calling collectBiddingData - " + e2.getMessage();
            IronLog.INTERNAL.error(str2);
            InterfaceC3910x3 interfaceC3910x4 = this.e;
            if (interfaceC3910x4 != null) {
                interfaceC3910x4.a(str2);
            }
        }
        InterfaceC3910x3 interfaceC3910x5 = this.e;
        if (interfaceC3910x5 != null) {
            interfaceC3910x5.a(this.f);
        }
        return (A3) arrayBlockingQueue.take();
    }

    public InterfaceC3928y3 b() {
        return this.d;
    }

    public String c() {
        return this.b;
    }

    public int d() {
        return this.a;
    }
}
