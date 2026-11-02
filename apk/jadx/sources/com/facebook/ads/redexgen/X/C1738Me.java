package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import com.google.common.base.Ascii;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Me, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1738Me {
    public static C1738Me A04;
    public static byte[] A05;
    public static String[] A06 = {"mEW5y6tQgBlLQ4rgt2QB4HCAS2fxpgIG", "VqsbgZy2p0xuXF5umQ0gfrrN6x0Eekbd", "Bmw3Pw1335RLcrMFg2TWNb", "Zc4HXKGIskG3eSFiCTd6JF8MaUB3EDcr", "RGO9LS9P9", "l3mBAuRIeGoa9nGSP", "H9mL1Oixp6iNXbcIo6bTfZcsXpGSRa61", "5gSQxk5eg7uxcM6fRavmPv9iIicoQHPY"};
    public final Handler A01 = new Handler(Looper.getMainLooper());
    public final CopyOnWriteArrayList<WeakReference<InterfaceC1736Mc>> A03 = new CopyOnWriteArrayList<>();
    public final Object A02 = new Object();
    public int A00 = 0;

    static {
        A06();
    }

    public C1738Me(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(A04(0, 36, 46));
        context.registerReceiver(new C1737Md(this), intentFilter);
    }

    public static int A00(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(A04(36, 12, 119));
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return 1;
            }
            switch (activeNetworkInfo.getType()) {
                case 0:
                case 4:
                case 5:
                    return A02(activeNetworkInfo);
                case 1:
                    return 2;
                case 2:
                case 3:
                case 7:
                case 8:
                default:
                    return 8;
                case 6:
                    return 5;
                case 9:
                    return 7;
            }
        } catch (SecurityException unused) {
            return 0;
        }
    }

    public static int A02(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                if (A06[2].length() == 8) {
                    throw new RuntimeException();
                }
                A06[4] = "Ggw1XDwp8UJkd4yqvlov9Xxjbjv";
                return 2;
            case 20:
                return N1.A02 >= 29 ? 9 : 0;
        }
    }

    public static synchronized C1738Me A03(Context context) {
        if (A04 == null) {
            A04 = new C1738Me(context);
        }
        return A04;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A06[5].length() == 7) {
                throw new RuntimeException();
            }
            A06[2] = "Bluvv0UDsBk";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
            i4++;
        }
    }

    private void A05() {
        for (WeakReference<InterfaceC1736Mc> weakReference : this.A03) {
            if (A06[2].length() == 8) {
                throw new RuntimeException();
            }
            A06[2] = "er9H7aBTxsQtRZ08fxnu9fkRyO3";
            WeakReference<InterfaceC1736Mc> weakReference2 = weakReference;
            if (weakReference2.get() == null) {
                this.A03.remove(weakReference2);
            }
        }
    }

    public static void A06() {
        A05 = new byte[]{76, 67, 73, 95, 66, 68, 73, 3, 67, 72, 89, 3, 78, 66, 67, 67, 3, 110, 98, 99, 99, 104, 110, 121, 100, 123, 100, 121, 116, 114, 110, 101, 108, 99, 106, 104, Ascii.ETB, Ascii.ESC, Ascii.SUB, Ascii.SUB, 17, Ascii.ETB, 0, Ascii.GS, 2, Ascii.GS, 0, Ascii.CR};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(int i) {
        synchronized (this.A02) {
            if (this.A00 == i) {
                return;
            }
            this.A00 = i;
            for (WeakReference<InterfaceC1736Mc> weakReference : this.A03) {
                InterfaceC1736Mc interfaceC1736Mc = weakReference.get();
                if (interfaceC1736Mc != null) {
                    interfaceC1736Mc.AG6(i);
                } else {
                    this.A03.remove(weakReference);
                }
            }
        }
    }

    public final int A09() {
        int i;
        synchronized (this.A02) {
            i = this.A00;
        }
        return i;
    }

    public final void A0A(final InterfaceC1736Mc interfaceC1736Mc) {
        A05();
        this.A03.add(new WeakReference<>(interfaceC1736Mc));
        this.A01.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.MY
            @Override // java.lang.Runnable
            public final void run() {
                this.A01.A0B(interfaceC1736Mc);
            }
        });
    }

    public final /* synthetic */ void A0B(InterfaceC1736Mc interfaceC1736Mc) {
        interfaceC1736Mc.AG6(A09());
    }
}
