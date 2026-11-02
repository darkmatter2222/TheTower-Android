package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.common.base.Ascii;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class MS<T> {
    public static byte[] A09;
    public boolean A00;
    public boolean A01;
    public final InterfaceC1729Lu A02;
    public final MM A03;
    public final MQ<T> A04;
    public final Object A05;
    public final ArrayDeque<Runnable> A06;
    public final ArrayDeque<Runnable> A07;
    public final CopyOnWriteArraySet<MR<T>> A08;

    static {
        A03();
    }

    public MS(Looper looper, InterfaceC1729Lu interfaceC1729Lu, MQ<T> mq) {
        this(new CopyOnWriteArraySet(), looper, interfaceC1729Lu, mq);
    }

    public MS(CopyOnWriteArraySet<MR<T>> copyOnWriteArraySet, Looper looper, InterfaceC1729Lu interfaceC1729Lu, MQ<T> mq) {
        this.A02 = interfaceC1729Lu;
        this.A08 = copyOnWriteArraySet;
        this.A04 = mq;
        this.A05 = new Object();
        this.A06 = new ArrayDeque<>();
        this.A07 = new ArrayDeque<>();
        this.A03 = interfaceC1729Lu.A5y(looper, new Handler.Callback() { // from class: com.facebook.ads.redexgen.X.MO
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.A00.A05(message);
            }
        });
        this.A01 = true;
        this.A00 = XL.A03(XQ.A0E);
    }

    private final MS<T> A00(Looper looper, InterfaceC1729Lu interfaceC1729Lu, MQ<T> mq) {
        return new MS<>(this.A08, looper, interfaceC1729Lu, mq);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        if (this.A01) {
            AbstractC1722Ln.A08(Thread.currentThread() == this.A03.A93().getThread());
        }
    }

    public static void A03() {
        A09 = new byte[]{-91, -86, -78, -85, -89, -95, 2, Ascii.CR, -2, Ascii.VT, -6, Ascii.CR, 2, 8, 7, -33, 2, 7, 2, Ascii.FF, 1, -2, -3};
    }

    public static /* synthetic */ void A04(CopyOnWriteArraySet copyOnWriteArraySet, int i, MP mp) {
        Iterator it = copyOnWriteArraySet.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NullPointerException(A01(0, 6, 8));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A05(Message message) {
        Iterator<MR<T>> it = this.A08.iterator();
        if (!it.hasNext()) {
            return true;
        }
        it.next();
        throw new NullPointerException(A01(6, 17, 101));
    }

    public final MS<T> A07(Looper looper, MQ<T> mq) {
        return A00(looper, this.A02, mq);
    }

    public final void A08() {
        A02();
        if (this.A07.isEmpty()) {
            return;
        }
        if (!this.A03.AAR(0)) {
            this.A03.AKV(this.A03.ADX(0));
        }
        boolean z = !this.A06.isEmpty();
        this.A06.addAll(this.A07);
        this.A07.clear();
        if (z) {
            return;
        }
        while (!this.A06.isEmpty()) {
            this.A06.peekFirst().run();
            this.A06.removeFirst();
        }
    }

    public final void A09(final int i, final MP<T> mp) {
        A02();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.A08);
        if (!this.A00) {
            this.A07.add(new Runnable() { // from class: com.facebook.ads.redexgen.X.MN
                @Override // java.lang.Runnable
                public final void run() {
                    MS.A04(copyOnWriteArraySet, i, mp);
                }
            });
            return;
        }
        Iterator it = copyOnWriteArraySet.iterator();
        if (it.hasNext()) {
            it.next();
            throw new NullPointerException(A01(0, 6, 8));
        }
    }

    public final void A0A(int i, MP<T> mp) {
        A09(i, mp);
        A08();
    }
}
