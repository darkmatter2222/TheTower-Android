package com.tapjoy.internal;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.tapjoy.TJConnectListener;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ge {
    private final ReentrantLock a;
    volatile int b;
    b c;
    long d;
    a e;
    private final Condition f;
    private final LinkedList<TJConnectListener> g;
    private a h;

    /* JADX INFO: renamed from: com.tapjoy.internal.ge$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c.a().length];
            a = iArr;
            try {
                iArr[c.e - 1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[c.a - 1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[c.b - 1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[c.c - 1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[c.d - 1] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    class a {
        public final Context a;
        public final String b;
        public final Hashtable<String, ?> c;

        public a(Context context, String str, Hashtable<String, ?> hashtable) {
            Context applicationContext;
            if (context != null) {
                applicationContext = context instanceof Application ? context : context.getApplicationContext();
            } else {
                applicationContext = null;
            }
            this.a = applicationContext != null ? applicationContext : context;
            this.b = str;
            this.c = hashtable;
        }
    }

    class b implements Runnable {
        private boolean b;
        private boolean c;
        private Context d;
        private BroadcastReceiver e;

        private b() {
            this.e = new BroadcastReceiver() { // from class: com.tapjoy.internal.ge.b.2
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent) {
                    ge.this.b();
                }
            };
        }

        /* synthetic */ b(ge geVar, byte b) {
            this();
        }

        private void a() {
            if (ge.this.c == this) {
                ge.this.c = null;
            }
            if (ge.this.b == c.c) {
                ge geVar = ge.this;
                int i = c.a;
                int i2 = c.c;
                geVar.a(i);
            }
        }

        private void b() {
            this.d.unregisterReceiver(this.e);
        }

        @Override // java.lang.Runnable
        public final void run() {
            ge geVar = ge.this;
            int i = c.c;
            int i2 = c.b;
            geVar.a(i);
            this.d = ge.this.a().a;
            this.d.registerReceiver(this.e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            while (!this.b) {
                try {
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    fu.b.addObserver(new Observer() { // from class: com.tapjoy.internal.ge.b.1
                        @Override // java.util.Observer
                        public final void update(Observable observable, Object obj) {
                            fu.b.deleteObserver(this);
                            b.this.c = Boolean.TRUE.equals(obj);
                            countDownLatch.countDown();
                        }
                    });
                    a aVarA = ge.this.a();
                    if (!ge.this.a(aVarA.a, aVarA.b, aVarA.c, null)) {
                        ge.this.a(false);
                        break;
                    }
                    try {
                        countDownLatch.await();
                    } catch (InterruptedException unused) {
                    }
                    if (this.c) {
                        ge geVar2 = ge.this;
                        int i3 = c.e;
                        int i4 = c.c;
                        geVar2.a(i3);
                        ge.this.a(true);
                        break;
                    }
                    ge.this.a(false);
                    long jMax = Math.max(ge.this.d, 1000L);
                    ge.this.d = Math.min(jMax << 2, 3600000L);
                    ge.this.a(jMax);
                } finally {
                    b();
                    a();
                }
            }
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class c {
        public static final int a = 1;
        public static final int b = 2;
        public static final int c = 3;
        public static final int d = 4;
        public static final int e = 5;
        private static final /* synthetic */ int[] f = {1, 2, 3, 4, 5};

        public static int[] a() {
            return (int[]) f.clone();
        }
    }

    public ge() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.a = reentrantLock;
        this.f = reentrantLock.newCondition();
        this.b = c.a;
        this.g = new LinkedList<>();
        this.d = 1000L;
    }

    final a a() {
        this.a.lock();
        try {
            a aVar = this.h;
            if (aVar != null) {
                this.e = aVar;
                this.h = null;
            }
            return this.e;
        } finally {
            this.a.unlock();
        }
    }

    final void a(int i) {
        this.a.lock();
        try {
            this.b = i;
        } finally {
            this.a.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        this.a.lock();
        try {
            if (this.g.size() == 0) {
                this.a.unlock();
                return;
            }
            ArrayList<TJConnectListener> arrayList = new ArrayList(this.g);
            this.g.clear();
            this.a.unlock();
            for (TJConnectListener tJConnectListener : arrayList) {
                if (z) {
                    tJConnectListener.onConnectSuccess();
                } else {
                    tJConnectListener.onConnectFailure();
                }
            }
        } catch (Throwable th) {
            this.a.unlock();
            throw th;
        }
    }

    final boolean a(long j) {
        this.a.lock();
        try {
            int i = c.d;
            int i2 = c.c;
            a(i);
            if (this.f.await(j, TimeUnit.MILLISECONDS)) {
                this.d = 1000L;
            }
        } catch (InterruptedException unused) {
        } finally {
            int i3 = c.c;
            int i4 = c.d;
            a(i3);
            this.a.unlock();
        }
        return false;
    }

    protected abstract boolean a(Context context, String str, Hashtable<String, ?> hashtable, TJConnectListener tJConnectListener);

    final void b() {
        this.a.lock();
        try {
            this.d = 1000L;
            this.f.signal();
        } finally {
            this.a.unlock();
        }
    }

    public final boolean b(Context context, String str, Hashtable<String, ?> hashtable, TJConnectListener tJConnectListener) {
        this.a.lock();
        if (tJConnectListener != null) {
            try {
                this.g.addLast((TJConnectListener) fp.a(tJConnectListener, TJConnectListener.class));
            } finally {
                this.a.unlock();
            }
        }
        a aVar = new a(context, str, hashtable);
        int i = AnonymousClass3.a[this.b - 1];
        if (i == 1) {
            a(true);
        } else if (i == 2) {
            this.e = aVar;
            fu.b.addObserver(new Observer() { // from class: com.tapjoy.internal.ge.1
                @Override // java.util.Observer
                public final void update(Observable observable, Object obj) {
                    fu.b.deleteObserver(this);
                    if (Boolean.TRUE.equals(obj) || ge.this.e == null || ge.this.e.a == null) {
                        return;
                    }
                    ge.this.c = new b(ge.this, (byte) 0);
                    new Thread(ge.this.c).start();
                }
            });
            if (!a(aVar.a, aVar.b, aVar.c, new TJConnectListener() { // from class: com.tapjoy.internal.ge.2
                @Override // com.tapjoy.TJConnectListener
                public final void onConnectFailure() {
                    ge.this.a(false);
                }

                @Override // com.tapjoy.TJConnectListener
                public final void onConnectSuccess() {
                    ge geVar = ge.this;
                    int i2 = c.e;
                    int i3 = c.b;
                    geVar.a(i2);
                    ge.this.a(true);
                }
            })) {
                this.g.clear();
                return false;
            }
            int i2 = c.b;
            int i3 = c.a;
            a(i2);
        } else if (i == 3 || i == 4) {
            this.h = aVar;
        } else {
            if (i != 5) {
                a(c.a);
                return false;
            }
            this.h = aVar;
            b();
        }
        return true;
    }
}
