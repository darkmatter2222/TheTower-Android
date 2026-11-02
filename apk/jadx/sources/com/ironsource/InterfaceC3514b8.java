package com.ironsource;

import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.demandOnly.ISDemandOnlyRewardedVideoListener;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.b8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public interface InterfaceC3514b8<T> {

    /* JADX INFO: renamed from: com.ironsource.b8$a */
    public static final class a implements InterfaceC3514b8<ISDemandOnlyInterstitialListener> {
        private C3453a8 a = new C3453a8();
        private final Map<String, C3453a8> b = new HashMap();

        @Override // com.ironsource.InterfaceC3514b8
        public void a(ISDemandOnlyInterstitialListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.a.a(listener);
            Iterator<String> it = this.b.keySet().iterator();
            while (it.hasNext()) {
                C3453a8 c3453a8 = this.b.get(it.next());
                if (c3453a8 != null) {
                    c3453a8.a(listener);
                }
            }
        }

        @Override // com.ironsource.InterfaceC3514b8
        public void a(String instanceId, ISDemandOnlyInterstitialListener listener) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(listener, "listener");
            if (!this.b.containsKey(instanceId)) {
                this.b.put(instanceId, new C3453a8(listener));
                return;
            }
            C3453a8 c3453a8 = this.b.get(instanceId);
            if (c3453a8 != null) {
                c3453a8.a(listener);
            }
        }

        @Override // com.ironsource.InterfaceC3514b8
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ISDemandOnlyInterstitialListener a(String instanceId) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            C3453a8 c3453a8 = this.b.get(instanceId);
            return c3453a8 != null ? c3453a8 : this.a;
        }
    }

    /* JADX INFO: renamed from: com.ironsource.b8$b */
    public static final class b implements InterfaceC3514b8<ISDemandOnlyRewardedVideoListener> {
        private C3550d8 a = new C3550d8();
        private final Map<String, C3550d8> b = new HashMap();

        @Override // com.ironsource.InterfaceC3514b8
        public void a(ISDemandOnlyRewardedVideoListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.a.a(listener);
            Iterator<String> it = this.b.keySet().iterator();
            while (it.hasNext()) {
                C3550d8 c3550d8 = this.b.get(it.next());
                if (c3550d8 != null) {
                    c3550d8.a(listener);
                }
            }
        }

        @Override // com.ironsource.InterfaceC3514b8
        public void a(String instanceId, ISDemandOnlyRewardedVideoListener listener) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            Intrinsics.checkNotNullParameter(listener, "listener");
            if (!this.b.containsKey(instanceId)) {
                this.b.put(instanceId, new C3550d8(listener));
                return;
            }
            C3550d8 c3550d8 = this.b.get(instanceId);
            if (c3550d8 != null) {
                c3550d8.a(listener);
            }
        }

        @Override // com.ironsource.InterfaceC3514b8
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ISDemandOnlyRewardedVideoListener a(String instanceId) {
            Intrinsics.checkNotNullParameter(instanceId, "instanceId");
            C3550d8 c3550d8 = this.b.get(instanceId);
            return c3550d8 != null ? c3550d8 : this.a;
        }
    }

    T a(String str);

    void a(T t);

    void a(String str, T t);
}
