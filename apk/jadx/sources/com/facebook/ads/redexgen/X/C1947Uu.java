package com.facebook.ads.redexgen.X;

import android.os.Handler;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Uu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1947Uu {
    public static String[] A04 = {"0vX", "6NY9hrINV0Z5FlYuF4FI3UvdvbDoQp5r", "EDbrjiPnPeOJCpHUSCdz4kDKdyaM7EAX", "SRvChzoAelcCw1", "1EOpazjw38zi", "4Y8ngmqa57FSPe", "1cMpp1AjuI7QRMLTBGOGdi01Kt1oNo6X", "RzlHtD1JWpQymBpZHQSfPfdlRM"};
    public final int A00;
    public final C1862Rk A01;
    public final long A02;
    public final CopyOnWriteArrayList<C1946Ut> A03;

    public C1947Uu() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    public C1947Uu(CopyOnWriteArrayList<C1946Ut> copyOnWriteArrayList, int i, C1862Rk c1862Rk, long j) {
        this.A03 = copyOnWriteArrayList;
        this.A00 = i;
        this.A01 = c1862Rk;
        this.A02 = j;
    }

    private long A00(long j) {
        long jA0P = N1.A0P(j);
        if (jA0P == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return this.A02 + jA0P;
    }

    @MetaExoPlayerCustomization
    private final void A01(final Uc uc, final C1931Ue c1931Ue, final int i) {
        for (C1946Ut c1946Ut : this.A03) {
            final InterfaceC1948Uv interfaceC1948Uv = c1946Ut.A01;
            N1.A1B(c1946Ut.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Uq
                @Override // java.lang.Runnable
                public final void run() {
                }
            });
        }
    }

    public final C1947Uu A02(int i, C1862Rk c1862Rk, long j) {
        return new C1947Uu(this.A03, i, c1862Rk, j);
    }

    public final void A03(int i, VC vc, int i2, Object obj, long j) {
        A0C(new C1931Ue(1, i, vc, i2, obj, A00(j), -9223372036854775807L));
    }

    public final void A04(Handler handler, InterfaceC1948Uv interfaceC1948Uv) {
        AbstractC1722Ln.A01(handler);
        AbstractC1722Ln.A01(interfaceC1948Uv);
        this.A03.add(new C1946Ut(handler, interfaceC1948Uv));
    }

    public final void A05(Uc uc, int i, int i2, VC vc, int i3, Object obj, long j, long j2) {
        A09(uc, new C1931Ue(i, i2, vc, i3, obj, A00(j), A00(j2)));
    }

    @MetaExoPlayerCustomization
    public final void A06(Uc uc, int i, int i2, VC vc, int i3, Object obj, long j, long j2, int i4) {
        A01(uc, new C1931Ue(i, i2, vc, i3, obj, A00(j), A00(j2)), i4);
    }

    public final void A07(Uc uc, int i, int i2, VC vc, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
        A0A(uc, new C1931Ue(i, i2, vc, i3, obj, A00(j), A00(j2)), iOException, z);
    }

    public final void A08(@MetaExoPlayerCustomization Uc uc, @MetaExoPlayerCustomization int i, int i2, VC vc, int i3, Object obj, long j, long j2, Object obj2, Object obj3) {
        A0B(uc, new C1931Ue(i, i2, vc, i3, obj, A00(j), A00(j2)), obj2, obj3);
    }

    public final void A09(final Uc uc, final C1931Ue c1931Ue) {
        for (C1946Ut c1946Ut : this.A03) {
            final InterfaceC1948Uv interfaceC1948Uv = c1946Ut.A01;
            N1.A1B(c1946Ut.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Ur
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A0E(interfaceC1948Uv, uc, c1931Ue);
                }
            });
        }
    }

    public final void A0A(final Uc uc, final C1931Ue c1931Ue, final IOException iOException, final boolean z) {
        Iterator<C1946Ut> it = this.A03.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A04[7].length() == 31) {
                throw new RuntimeException();
            }
            A04[2] = "oz6jN72mrVEJ84jwVsa80JdmUq2TtNhX";
            if (!zHasNext) {
                return;
            }
            C1946Ut next = it.next();
            final InterfaceC1948Uv interfaceC1948Uv = next.A01;
            N1.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Um
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A0F(interfaceC1948Uv, uc, c1931Ue, iOException, z);
                }
            });
        }
    }

    public final void A0B(@MetaExoPlayerCustomization final Uc uc, @MetaExoPlayerCustomization final C1931Ue c1931Ue, final Object obj, final Object obj2) {
        for (C1946Ut c1946Ut : this.A03) {
            final InterfaceC1948Uv interfaceC1948Uv = c1946Ut.A01;
            N1.A1B(c1946Ut.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Un
                @Override // java.lang.Runnable
                public final void run() {
                    this.A02.A0G(interfaceC1948Uv, uc, c1931Ue, obj, obj2);
                }
            });
        }
    }

    public final void A0C(final C1931Ue c1931Ue) {
        Iterator<C1946Ut> it = this.A03.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A04[4].length() == 10) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[5] = "BPCliZ27Ak36vG";
            strArr[3] = "8XLyG4rB5BmC3z";
            if (!zHasNext) {
                return;
            }
            C1946Ut next = it.next();
            final InterfaceC1948Uv interfaceC1948Uv = next.A01;
            N1.A1B(next.A00, new Runnable() { // from class: com.facebook.ads.redexgen.X.Uo
                @Override // java.lang.Runnable
                public final void run() {
                    this.A01.A0H(interfaceC1948Uv, c1931Ue);
                }
            });
        }
    }

    public final void A0D(InterfaceC1948Uv interfaceC1948Uv) {
        for (C1946Ut c1946Ut : this.A03) {
            if (c1946Ut.A01 == interfaceC1948Uv) {
                this.A03.remove(c1946Ut);
            }
        }
    }

    public final /* synthetic */ void A0E(InterfaceC1948Uv interfaceC1948Uv, Uc uc, C1931Ue c1931Ue) {
        interfaceC1948Uv.AFe(this.A00, this.A01, uc, c1931Ue);
    }

    public final /* synthetic */ void A0F(InterfaceC1948Uv interfaceC1948Uv, Uc uc, C1931Ue c1931Ue, IOException iOException, boolean z) {
        interfaceC1948Uv.AFj(this.A00, this.A01, uc, c1931Ue, iOException, z);
    }

    public final /* synthetic */ void A0G(InterfaceC1948Uv interfaceC1948Uv, Uc uc, C1931Ue c1931Ue, Object obj, Object obj2) {
        interfaceC1948Uv.AFg(this.A00, this.A01, uc, c1931Ue, obj, obj2);
    }

    public final /* synthetic */ void A0H(InterfaceC1948Uv interfaceC1948Uv, C1931Ue c1931Ue) {
        interfaceC1948Uv.AEm(this.A00, this.A01, c1931Ue);
    }
}
