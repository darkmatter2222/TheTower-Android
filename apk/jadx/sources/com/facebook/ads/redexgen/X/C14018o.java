package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8o, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C14018o {
    public static byte[] A07;
    public InterfaceC1951Uy A02;
    public String A05;
    public final NN A06;
    public InterfaceC1872Ru A01 = AbstractC1869Rr.A01();
    public X1 A03 = new C1845Qt();
    public int A00 = 1048576;

    @MetaExoPlayerCustomization
    public InterfaceC1977Wb<XN> A04 = new InterfaceC1977Wb() { // from class: com.facebook.ads.redexgen.X.Rf
        @Override // com.facebook.ads.redexgen.X.InterfaceC1977Wb
        public final Object get() {
            return C14018o.A01();
        }
    };

    static {
        A03();
    }

    public C14018o(NN nn) {
        this.A06 = nn;
    }

    public static /* synthetic */ C1870Rs A00(InterfaceC2047Yz interfaceC2047Yz, QD qd) {
        return new C1870Rs(interfaceC2047Yz);
    }

    public static /* synthetic */ XN A01() {
        return null;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 47);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A07 = new byte[]{-118, -73, -73, -76, -73, 101, -82, -77, -72, -71, -90, -77, -71, -82, -90, -71, -82, -77, -84, 101, -119, -86, -85, -90, -70, -79, -71, -118, -67, -71, -73, -90, -88, -71, -76, -73, -72, -117, -90, -88, -71, -76, -73, -66, -86, -74, -76, 117, -83, -88, -86, -84, -87, -74, -74, -78, 117, -88, -85, -70, 117, -88, -75, -85, -71, -74, -80, -85, -65, 117, -76, -84, -85, -80, -88, 122, 117, -84, -65, -69, -71, -88, -86, -69, -74, -71, 117, -117, -84, -83, -88, -68, -77, -69, -116, -65, -69, -71, -88, -86, -69, -74, -71, -70, -115, -88, -86, -69, -74, -71, -64};
    }

    @MetaExoPlayerCustomization
    public final C8n A04(Uri uri) {
        String strA02 = A02(0, 44, 22);
        if (this.A02 == null) {
            try {
                final InterfaceC2047Yz interfaceC2047Yz = (InterfaceC2047Yz) Class.forName(A02(44, 67, 24)).asSubclass(InterfaceC2047Yz.class).getConstructor(new Class[0]).newInstance(new Object[0]);
                this.A02 = new InterfaceC1951Uy() { // from class: com.facebook.ads.redexgen.X.Rh
                    @Override // com.facebook.ads.redexgen.X.InterfaceC1951Uy
                    public final InterfaceC1952Uz A66(QD qd) {
                        return C14018o.A00(interfaceC2047Yz, qd);
                    }
                };
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(strA02, e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(strA02, e2);
            } catch (InstantiationException e3) {
                throw new RuntimeException(strA02, e3);
            } catch (NoSuchMethodException e4) {
                throw new RuntimeException(strA02, e4);
            } catch (InvocationTargetException e5) {
                throw new RuntimeException(strA02, e5);
            }
        }
        return new C8n(new C1694Kj().A00(uri).A02(this.A05).A01(null).A05(), this.A06, this.A02, this.A01, this.A03, this.A00, null);
    }
}
