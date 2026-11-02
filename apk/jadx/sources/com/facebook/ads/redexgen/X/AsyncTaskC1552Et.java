package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Et, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AsyncTaskC1552Et extends AsyncTask<String, Void, Bitmap[]> implements InterfaceC2751l6 {
    public static byte[] A0A;
    public static String[] A0B = {"Y", "r8ye64eLoQHeOJVpmB1uxWw1zCCHhuzX", "pvZIfONmKv3cVbimQPa9", "RLgA2SApOIsDDawooMs2KL5D8ZiCWoW1", "kM6akDIqkvY", "0vJdyNO9qrz2JF8Kt31GcmRDql8haFQB", "b8N1ZLVb0I2QrMIKflin5UtA7D7V4D", "X"};
    public int A00;
    public int A01;
    public InterfaceC3277th A02;
    public boolean A03;
    public final int A04;
    public final int A05;
    public final WeakReference<C3274te> A06;
    public final WeakReference<C1618Hi> A07;
    public final WeakReference<ImageView> A08;
    public final WeakReference<ViewGroup> A09;

    static {
        A01();
    }

    public AsyncTaskC1552Et(ViewGroup viewGroup, int i, int i2, C1618Hi c1618Hi) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c1618Hi);
        this.A06 = null;
        this.A08 = null;
        this.A09 = new WeakReference<>(viewGroup);
        this.A04 = i;
        this.A05 = i2;
    }

    public AsyncTaskC1552Et(ViewGroup viewGroup, C1618Hi c1618Hi) {
        this(viewGroup, 12, 16, c1618Hi);
    }

    public AsyncTaskC1552Et(ImageView imageView, C1618Hi c1618Hi) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c1618Hi);
        this.A06 = null;
        this.A08 = new WeakReference<>(imageView);
        this.A09 = null;
        this.A04 = 0;
        this.A05 = 1;
    }

    public AsyncTaskC1552Et(C3274te c3274te, C1618Hi c1618Hi) {
        this.A03 = false;
        this.A00 = -1;
        this.A01 = -1;
        this.A07 = new WeakReference<>(c1618Hi);
        this.A06 = new WeakReference<>(c3274te);
        this.A08 = null;
        this.A09 = null;
        this.A04 = 12;
        this.A05 = 16;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0A = new byte[]{-89, -91, -82, -91, -78, -87, -93};
    }

    private final void A02(Bitmap[] bitmapArr) throws Throwable {
        C1618Hi c1618Hi;
        C3274te c3274te;
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (this.A08 != null) {
                ImageView imageView = this.A08.get();
                if (bitmapArr[1] != null && !this.A03 && this.A04 != 0 && imageView != null) {
                    imageView.setImageBitmap(bitmapArr[1]);
                    return;
                } else if (imageView != null) {
                    imageView.setImageBitmap(bitmapArr[0]);
                }
            }
            if (this.A06 != null && (c3274te = this.A06.get()) != null) {
                c3274te.setImage(bitmapArr[0], bitmapArr[1]);
            }
            if (this.A09 != null && this.A09.get() != null && bitmapArr[1] != null && (c1618Hi = this.A07.get()) != null) {
                AbstractC3086qc.A0W(this.A09.get(), new BitmapDrawable(c1618Hi.getResources(), bitmapArr[1]));
            }
            if (this.A02 != null) {
                this.A02.AFA(new C3276tg(bitmapArr[0]));
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }

    private final Bitmap[] A03(String... strArr) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return null;
        }
        try {
            String str = strArr[0];
            Bitmap bitmapA0O = null;
            Bitmap bitmapA01 = null;
            C1618Hi c1618Hi = this.A07.get();
            if (c1618Hi == null) {
                return new Bitmap[]{null, null};
            }
            try {
                bitmapA0O = new C2746kz(c1618Hi).A0O(str, this.A00, this.A01);
                if (bitmapA0O != null && !this.A03) {
                    bitmapA01 = AbstractC3096qm.A01(c1618Hi, bitmapA0O, this.A04, this.A05);
                }
            } catch (Throwable th) {
                c1618Hi.A08().ABz(A00(0, 7, 16), AbstractC2786lf.A1V, new C2787lg(th));
            }
            return new Bitmap[]{bitmapA0O, bitmapA01};
        } catch (Throwable th2) {
            AbstractC2971oi.A00(th2, this);
            return null;
        }
    }

    public final AsyncTaskC1552Et A04() {
        this.A00 = -1;
        this.A01 = -1;
        return this;
    }

    public final AsyncTaskC1552Et A05(int i, int i2) {
        this.A00 = i;
        this.A01 = i2;
        return this;
    }

    public final AsyncTaskC1552Et A06(InterfaceC3277th interfaceC3277th) {
        this.A02 = interfaceC3277th;
        return this;
    }

    public final void A07(String str) {
        if (!TextUtils.isEmpty(str)) {
            executeOnExecutor(ExecutorC3091qh.A06, str);
        } else if (this.A02 != null) {
            this.A02.AFA(new C3276tg(null));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2751l6
    public final C1618Hi A7M() {
        return this.A07.get();
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Bitmap[] doInBackground(String[] strArr) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return null;
        }
        try {
            return A03(strArr);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ void onPostExecute(Bitmap[] bitmapArr) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            A02(bitmapArr);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
            String[] strArr = A0B;
            if (strArr[0].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[0] = "X";
            strArr2[7] = "y";
        }
    }
}
