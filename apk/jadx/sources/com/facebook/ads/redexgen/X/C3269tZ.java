package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3269tZ {
    public static String[] A07 = {"FOFLIt4izaDLaQDOMIXk8qYNT283z5pM", "oiToeohcscvINDKXEsytRf9HFldaqPXB", "4ipPd9h88IiL3d99rWL92oIsRR1k6HBA", "hPx", "0GhefH5NzI2ypbPnqUG75Cq8VmhNX1", "2b6", "snO0JYp8WiAdMwbOevXppfTs6iFhTSIS", "awSLBYFe7Md8cHgboMT9P3Pgh1wlsZGE"};
    public final String A00 = C3269tZ.class.getSimpleName();
    public final WeakReference<AtomicBoolean> A01;
    public final WeakReference<AtomicBoolean> A02;
    public final WeakReference<InterfaceC2300df> A03;
    public final WeakReference<InterfaceC3270ta> A04;
    public final WeakReference<C2199c2> A05;
    public final WeakReference<C1554Ev> A06;

    public C3269tZ(C1554Ev c1554Ev, InterfaceC3270ta interfaceC3270ta, C2199c2 c2199c2, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, C1618Hi c1618Hi) {
        this.A06 = new WeakReference<>(c1554Ev);
        this.A04 = new WeakReference<>(interfaceC3270ta);
        this.A05 = new WeakReference<>(c2199c2);
        this.A01 = new WeakReference<>(atomicBoolean);
        this.A02 = new WeakReference<>(atomicBoolean2);
        this.A03 = new WeakReference<>(c1618Hi.A0F());
    }

    private InterfaceC2300df A00() {
        InterfaceC2300df interfaceC2300df = this.A03.get();
        return interfaceC2300df == null ? new C1757Mx() : interfaceC2300df;
    }

    @JavascriptInterface
    public void alert(String str) {
        Log.e(this.A00, str);
    }

    @JavascriptInterface
    public String getAnalogInfo() {
        return AbstractC3052q4.A01(C2796lp.A02());
    }

    @JavascriptInterface
    public void logFunnel(int i, String str) {
        A00().AMB(i, str);
    }

    @JavascriptInterface
    public void onMainAssetLoaded() {
        A00().AMC();
        if (this.A06.get() == null || this.A01.get() == null || this.A02.get() == null) {
            return;
        }
        boolean z = this.A02.get().get();
        String[] strArr = A07;
        if (strArr[4].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A07[1] = "xXjDpbk5Vvc7CvrBd08NYXaJ46SIZN7q";
        if (z) {
            this.A01.get().set(true);
            A00().AMD();
            if (this.A06.get().isShown()) {
                A00().AME();
                new Handler(Looper.getMainLooper()).post(new C1556Ex(this.A05));
            }
            InterfaceC3270ta interfaceC3270ta = this.A04.get();
            if (interfaceC3270ta != null) {
                new Handler(Looper.getMainLooper()).post(new RunnableC3268tY(this, interfaceC3270ta));
            }
        }
    }

    @JavascriptInterface
    public void onPageInitialized() {
        C1554Ev c1554Ev = this.A06.get();
        if (c1554Ev == null || c1554Ev.A0J()) {
            A00().AMF(true);
            return;
        }
        InterfaceC3270ta interfaceC3270ta = this.A04.get();
        if (interfaceC3270ta == null) {
            A00().AMF(true);
        } else {
            A00().AMF(false);
            interfaceC3270ta.AGD();
        }
    }
}
