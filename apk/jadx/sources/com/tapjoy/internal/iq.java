package com.tapjoy.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class iq extends ImageView implements Runnable {
    private im a;
    private Bitmap b;
    private final Handler c;
    private boolean d;
    private boolean e;
    private boolean f;
    private Thread g;
    private b h;
    private long i;
    private a j;
    private final Runnable k;
    private final Runnable l;

    public interface a {
    }

    public interface b {
        Bitmap a();
    }

    public iq(Context context) {
        super(context);
        this.c = new Handler(Looper.getMainLooper());
        this.h = null;
        this.i = -1L;
        this.j = null;
        this.k = new Runnable() { // from class: com.tapjoy.internal.iq.1
            @Override // java.lang.Runnable
            public final void run() {
                if (iq.this.b == null || iq.this.b.isRecycled()) {
                    return;
                }
                iq iqVar = iq.this;
                iqVar.setImageBitmap(iqVar.b);
            }
        };
        this.l = new Runnable() { // from class: com.tapjoy.internal.iq.2
            @Override // java.lang.Runnable
            public final void run() {
                iq.b(iq.this);
                iq.c(iq.this);
                iq.d(iq.this);
                iq.e(iq.this);
            }
        };
    }

    static /* synthetic */ Bitmap b(iq iqVar) {
        iqVar.b = null;
        return null;
    }

    static /* synthetic */ im c(iq iqVar) {
        iqVar.a = null;
        return null;
    }

    static /* synthetic */ Thread d(iq iqVar) {
        iqVar.g = null;
        return null;
    }

    private void d() {
        if (this.a.a == 0 || !this.a.a() || this.d) {
            return;
        }
        this.e = true;
        f();
    }

    private boolean e() {
        return (this.d || this.e) && this.a != null && this.g == null;
    }

    static /* synthetic */ boolean e(iq iqVar) {
        iqVar.f = false;
        return false;
    }

    private void f() {
        if (e()) {
            Thread thread = new Thread(this);
            this.g = thread;
            thread.start();
        }
    }

    public final void a() {
        this.d = true;
        f();
    }

    public final void a(io ioVar, byte[] bArr) {
        try {
            this.a = new im(new ir(), ioVar, ByteBuffer.wrap(bArr));
            if (this.d) {
                f();
            } else {
                d();
            }
        } catch (Exception e) {
            this.a = null;
            new Object[]{e};
        }
    }

    public final void b() {
        this.d = false;
        Thread thread = this.g;
        if (thread != null) {
            thread.interrupt();
            this.g = null;
        }
    }

    public final void c() {
        this.d = false;
        this.e = false;
        this.f = true;
        b();
        this.c.post(this.l);
    }

    public final long getFramesDisplayDuration() {
        return this.i;
    }

    public final int getGifHeight() {
        return this.a.c.g;
    }

    public final int getGifWidth() {
        return this.a.c.f;
    }

    public final a getOnAnimationStop() {
        return this.j;
    }

    public final b getOnFrameAvailable() {
        return this.h;
    }

    @Override // android.widget.ImageView, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0012  */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        long jNanoTime;
        do {
            if (!this.d && !this.e) {
                break;
            }
            im imVar = this.a;
            int i = -1;
            int i2 = 0;
            if (imVar.c.c <= 0) {
                z = false;
            } else {
                z = true;
                if (imVar.a == imVar.c.c - 1) {
                    imVar.b++;
                }
                if (imVar.c.m == -1 || imVar.b <= imVar.c.m) {
                    imVar.a = (imVar.a + 1) % imVar.c.c;
                } else {
                    z = false;
                }
            }
            try {
                long jNanoTime2 = System.nanoTime();
                this.b = this.a.b();
                b bVar = this.h;
                if (bVar != null) {
                    this.b = bVar.a();
                }
                jNanoTime = (System.nanoTime() - jNanoTime2) / 1000000;
                try {
                    this.c.post(this.k);
                } catch (ArrayIndexOutOfBoundsException e) {
                    e = e;
                    new Object[]{e};
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    new Object[]{e};
                }
            } catch (ArrayIndexOutOfBoundsException e3) {
                e = e3;
                jNanoTime = 0;
            } catch (IllegalArgumentException e4) {
                e = e4;
                jNanoTime = 0;
            }
            this.e = false;
            if (!this.d || !z) {
                this.d = false;
                break;
            }
            try {
                im imVar2 = this.a;
                if (imVar2.c.c > 0 && imVar2.a >= 0) {
                    int i3 = imVar2.a;
                    if (i3 >= 0 && i3 < imVar2.c.c) {
                        i = imVar2.c.e.get(i3).i;
                    }
                    i2 = i;
                }
                int i4 = (int) (((long) i2) - jNanoTime);
                if (i4 > 0) {
                    long j = this.i;
                    if (j <= 0) {
                        j = i4;
                    }
                    Thread.sleep(j);
                }
            } catch (InterruptedException unused) {
            }
        } while (this.d);
        if (this.f) {
            this.c.post(this.l);
        }
        this.g = null;
    }

    public final void setBytes(byte[] bArr) {
        im imVar = new im();
        this.a = imVar;
        try {
            imVar.a(bArr);
            if (this.d) {
                f();
            } else {
                d();
            }
        } catch (Exception e) {
            this.a = null;
            new Object[]{e};
        }
    }

    public final void setFramesDisplayDuration(long j) {
        this.i = j;
    }

    public final void setOnAnimationStop(a aVar) {
        this.j = aVar;
    }

    public final void setOnFrameAvailable(b bVar) {
        this.h = bVar;
    }
}
