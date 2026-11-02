package com.facebook.ads.redexgen.X;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager$DecorView;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2553hp extends ViewGroup {
    public static byte[] A0s;
    public static String[] A0t = {"Pb5dMBpLoD8olSqqN3M1wt71s6WfJWWx", "mawes8eGWKEfT5kg0DwbKE", "yCX0UAcI", "nBGVAWTalDrx8Q3Q0HTp4hPpqgaJoZ5h", "", "", "gKpLqM1fc4CgqUT7jB7tIrf4xsKdVFyY", "wKHjR3FqXT8StRIGs0zAAfuJmbbhub4H"};
    public static final int[] A0u;
    public static final Interpolator A0v;
    public static final C2552ho A0w;
    public static final Comparator<C2545hh> A0x;
    public int A00;
    public AbstractC2525hM A01;
    public float A02;
    public float A03;
    public float A04;
    public float A05;
    public float A06;
    public float A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public int A0G;
    public int A0H;
    public int A0I;
    public int A0J;
    public int A0K;
    public int A0L;
    public int A0M;
    public int A0N;
    public int A0O;
    public int A0P;
    public int A0Q;
    public int A0R;
    public Drawable A0S;
    public Parcelable A0T;
    public VelocityTracker A0U;
    public EdgeEffect A0V;
    public EdgeEffect A0W;
    public Scroller A0X;
    public InterfaceC2548hk A0Y;
    public C2550hm A0Z;
    public ClassLoader A0a;
    public ArrayList<View> A0b;
    public List<ViewPager.OnAdapterChangeListener> A0c;
    public List<InterfaceC2548hk> A0d;
    public boolean A0e;
    public boolean A0f;
    public boolean A0g;
    public boolean A0h;
    public boolean A0i;
    public boolean A0j;
    public boolean A0k;
    public boolean A0l;
    public boolean A0m;
    public boolean A0n;
    public final Rect A0o;
    public final C2545hh A0p;
    public final Runnable A0q;
    public final ArrayList<C2545hh> A0r;

    static {
        A0E();
        A0u = new int[]{R.attr.layout_gravity};
        A0x = new C2542hd();
        A0v = new InterpolatorC2543he();
        A0w = new C2552ho();
    }

    public C2553hp(Context context) {
        super(context);
        this.A0r = new ArrayList<>();
        this.A0p = new C2545hh();
        this.A0o = new Rect();
        this.A0O = -1;
        this.A0T = null;
        this.A0a = null;
        this.A02 = -3.4028235E38f;
        this.A07 = Float.MAX_VALUE;
        this.A0L = 1;
        this.A08 = -1;
        this.A0g = true;
        this.A0l = false;
        this.A0q = new RunnableC2544hf(this);
        this.A0P = 0;
        A0F();
    }

    private final float A02(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    private int A03(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.A0H || Math.abs(i2) <= this.A0K) {
            i = ((int) (f + (i >= this.A00 ? 0.4f : 0.6f))) + i;
        } else if (i2 <= 0) {
            i++;
        }
        if (this.A0r.size() > 0) {
            return Math.max(this.A0r.get(0).A02, Math.min(i, this.A0r.get(this.A0r.size() - 1).A02));
        }
        return i;
    }

    private Rect A04(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    private C2545hh A05() {
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f = clientWidth > 0 ? this.A0M / clientWidth : 0.0f;
        int i = -1;
        float f2 = 0.0f;
        float f3 = 0.0f;
        boolean z = true;
        C2545hh c2545hh = null;
        int i2 = 0;
        while (i2 < this.A0r.size()) {
            C2545hh c2545hh2 = this.A0r.get(i2);
            if (!z && c2545hh2.A02 != i + 1) {
                c2545hh2 = this.A0p;
                c2545hh2.A00 = f2 + f3 + f;
                c2545hh2.A02 = i + 1;
                c2545hh2.A01 = this.A01.A00(c2545hh2.A02);
                i2--;
            }
            f2 = c2545hh2.A00;
            float f4 = c2545hh2.A01 + f2 + f;
            if (!z) {
                String[] strArr = A0t;
                if (strArr[4].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0t;
                strArr2[3] = "VrUwTTzuyHD2SkMMCenWDHvarMqbXCCI";
                strArr2[6] = "LX2NnyEsDXWEx3dFbPH8p7fzI1U1dTZ8";
                if (scrollX < f2) {
                    return c2545hh;
                }
            }
            if (scrollX >= f4) {
                int size = this.A0r.size() - 1;
                String[] strArr3 = A0t;
                if (strArr3[3].charAt(15) != strArr3[6].charAt(15)) {
                    A0t[2] = "sbP3P6ChvdnfvWI";
                    if (i2 != size) {
                        z = false;
                        i = c2545hh2.A02;
                        f3 = c2545hh2.A01;
                        c2545hh = c2545hh2;
                        i2++;
                    }
                } else {
                    A0t[1] = "kvGf4Zg53U8bz7GLeUNnCLzy4o";
                    if (i2 != size) {
                        z = false;
                        i = c2545hh2.A02;
                        f3 = c2545hh2.A01;
                        c2545hh = c2545hh2;
                        i2++;
                    }
                }
            }
            return c2545hh2;
        }
        return c2545hh;
    }

    private final C2545hh A06(int i) {
        for (int i2 = 0; i2 < this.A0r.size(); i2++) {
            C2545hh c2545hh = this.A0r.get(i2);
            if (c2545hh.A02 == i) {
                return c2545hh;
            }
        }
        return null;
    }

    private final C2545hh A07(int i, int i2) {
        C2545hh c2545hh = new C2545hh();
        c2545hh.A02 = i;
        c2545hh.A03 = this.A01.A04(this, i);
        c2545hh.A01 = this.A01.A00(i);
        if (i2 < 0 || i2 >= this.A0r.size()) {
            this.A0r.add(c2545hh);
        } else {
            this.A0r.add(i2, c2545hh);
        }
        return c2545hh;
    }

    private final C2545hh A08(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return A09(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    private final C2545hh A09(View view) {
        for (int i = 0; i < this.A0r.size(); i++) {
            C2545hh c2545hh = this.A0r.get(i);
            if (this.A01.A08(view, c2545hh.A03)) {
                return c2545hh;
            }
        }
        String[] strArr = A0t;
        if (strArr[4].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A0t[1] = "T6ty";
        return null;
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0s, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 104);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0B() {
        this.A0i = false;
        this.A0k = false;
        if (this.A0U != null) {
            this.A0U.recycle();
            String[] strArr = A0t;
            if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            A0t[1] = "yoRarqzFlsm2scdQtgnfRphmjo";
            this.A0U = null;
        }
    }

    private void A0C() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((C2546hi) getChildAt(i).getLayoutParams()).A05) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    private void A0D() {
        if (this.A0F != 0) {
            if (this.A0b == null) {
                this.A0b = new ArrayList<>();
            } else {
                this.A0b.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.A0b.add(getChildAt(i));
            }
            Collections.sort(this.A0b, A0w);
        }
    }

    public static void A0E() {
        A0s = new byte[]{-99, -70, -69, -99, -62, -14, 3, 9, 7, Ascii.DC4, -62, 5, Ascii.SO, 3, Ascii.NAK, Ascii.NAK, -36, -62, -48, 0, 17, Ascii.ETB, Ascii.NAK, 34, -48, Ascii.EM, Ascii.DC4, -22, -48, -34, Ascii.SO, 48, 45, 32, 42, 35, 43, Ascii.US, 50, 39, 33, -34, Ascii.US, 34, Ascii.US, 46, 50, 35, 48, -8, -34, -30, 54, 49, 49, -30, 53, 47, 35, 46, 46, -3, -30, 38, 39, 40, 35, 55, 46, 54, 43, 48, 41, -30, 54, 49, -30, -66, -78, -8, 1, 7, 0, -10, -52, -78, -69, -39, -26, -26, -25, -20, -104, -39, -36, -36, -104, -24, -39, -33, -35, -22, -104, -36, -35, -37, -25, -22, -104, -18, -31, -35, -17, -104, -36, -19, -22, -31, -26, -33, -104, -28, -39, -15, -25, -19, -20, -10, 9, Ascii.NAK, Ascii.EM, 9, Ascii.ETB, Ascii.CAN, 9, 8, -60, 19, 10, 10, Ascii.ETB, 7, Ascii.SYN, 9, 9, Ascii.DC2, -60, Ascii.DC4, 5, Ascii.VT, 9, -60, Ascii.DLE, Ascii.CR, 17, Ascii.CR, Ascii.CAN, -60, -10, 10, 7, -62, 3, Ascii.DC2, Ascii.DC2, Ascii.SO, Ascii.VT, 5, 3, Ascii.SYN, Ascii.VT, 17, Ascii.DLE, -55, Ascii.NAK, -62, -14, 3, 9, 7, Ascii.DC4, -29, 6, 3, Ascii.DC2, Ascii.SYN, 7, Ascii.DC4, -62, 5, 10, 3, Ascii.DLE, 9, 7, 6, -62, Ascii.SYN, 10, 7, -62, 3, 6, 3, Ascii.DC2, Ascii.SYN, 7, Ascii.DC4, -55, Ascii.NAK, -62, 5, 17, Ascii.DLE, Ascii.SYN, 7, Ascii.DLE, Ascii.SYN, Ascii.NAK, -62, Ascii.EM, Ascii.VT, Ascii.SYN, 10, 17, Ascii.ETB, Ascii.SYN, -62, 5, 3, Ascii.SO, Ascii.SO, Ascii.VT, Ascii.DLE, 9, -62, -14, 3, 9, 7, Ascii.DC4, -29, 6, 3, Ascii.DC2, Ascii.SYN, 7, Ascii.DC4, -59, Ascii.DLE, 17, Ascii.SYN, Ascii.VT, 8, Ascii.ESC, -26, 3, Ascii.SYN, 3, -11, 7, Ascii.SYN, -27, 10, 3, Ascii.DLE, 9, 7, 6, -61, -62, -25, Ascii.SUB, Ascii.DC2, 7, 5, Ascii.SYN, 7, 6, -62, 3, 6, 3, Ascii.DC2, Ascii.SYN, 7, Ascii.DC4, -62, Ascii.VT, Ascii.SYN, 7, Ascii.SI, -62, 5, 17, Ascii.ETB, Ascii.DLE, Ascii.SYN, -36, -62, -19, 0, -4, Ascii.SO, -25, -8, -2, -4, 9, Ascii.EM, 42, 42, 39, 47, Ascii.VT, Ascii.ESC, 42, 39, 36, 36, -40, 44, 42, 33, Ascii.GS, Ascii.FS, -40, 44, 39, -40, Ascii.RS, 33, 38, Ascii.FS, -40, Ascii.RS, 39, Ascii.ESC, 45, 43, -40, Ascii.SUB, Ascii.EM, 43, Ascii.GS, Ascii.FS, -40, 39, 38, -40, 38, 39, 38, -27, Ascii.ESC, 32, 33, 36, Ascii.FS, -40, Ascii.ESC, 45, 42, 42, Ascii.GS, 38, 44, -40, Ascii.RS, 39, Ascii.ESC, 45, 43, Ascii.GS, Ascii.FS, -40, 46, 33, Ascii.GS, 47, -40, 76, 75, Ascii.RS, 65, 62, 77, 81, 66, 79, 32, 69, 62, 75, 68, 66, 65, 19, Ascii.DC2, -12, 5, Ascii.VT, 9, -9, 7, Ascii.SYN, 19, Ascii.DLE, Ascii.DLE, 9, 8, -60, 8, Ascii.CR, 8, -60, Ascii.DC2, 19, Ascii.CAN, -60, 7, 5, Ascii.DLE, Ascii.DLE, -60, Ascii.ETB, Ascii.EM, Ascii.DC4, 9, Ascii.SYN, 7, Ascii.DLE, 5, Ascii.ETB, Ascii.ETB, -60, Ascii.CR, 17, Ascii.DC4, Ascii.DLE, 9, 17, 9, Ascii.DC2, Ascii.CAN, 5, Ascii.CAN, Ascii.CR, 19, Ascii.DC2, 85, 83, 66, 79, 84, 71, 80, 83, 78, 49, 66, 72, 70};
    }

    private final void A0F() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.A0X = new Scroller(context, A0v);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.A0R = viewConfiguration.getScaledPagingTouchSlop();
        this.A0K = (int) (400.0f * f);
        this.A0J = viewConfiguration.getScaledMaximumFlingVelocity();
        this.A0V = new EdgeEffect(context);
        this.A0W = new EdgeEffect(context);
        this.A0H = (int) (25.0f * f);
        this.A0C = (int) (2.0f * f);
        this.A0E = (int) (16.0f * f);
        AbstractC2540hb.A0B(this, new JK(this));
        if (AbstractC2540hb.A00(this) == 0) {
            AbstractC2540hb.A09(this, 1);
        }
        AbstractC2540hb.A0C(this, new JL(this));
    }

    private void A0G(int i) {
        if (this.A0d != null) {
            int size = this.A0d.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A0d.get(i2);
            }
        }
    }

    private void A0H(int i) {
        if (this.A0d != null) {
            int size = this.A0d.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A0d.get(i2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:71:0x013d  */
    private final void A0I(int i) {
        String hexString;
        C2545hh c2545hh;
        float f;
        C2545hh c2545hhA06 = null;
        if (this.A00 != i) {
            c2545hhA06 = A06(this.A00);
            this.A00 = i;
        }
        if (this.A01 == null) {
            A0D();
            return;
        }
        if (this.A0m) {
            A0D();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        int i2 = this.A0L;
        int iMax = Math.max(0, this.A00 - i2);
        int iA01 = this.A01.A01();
        int iMin = Math.min(iA01 - 1, this.A00 + i2);
        if (iA01 != this.A0G) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
                if (A0t[2].length() != 14) {
                    A0t[2] = "3cJ8G";
                }
                throw new RuntimeException();
            }
            throw new IllegalStateException(A0A(158, 142, 58) + this.A0G + A0A(77, 9, 42) + iA01 + A0A(18, 11, 72) + hexString + A0A(4, 14, 58) + getClass() + A0A(29, 22, 86) + this.A01.getClass());
        }
        C2545hh c2545hhA07 = null;
        if (A0t[2].length() != 14) {
            A0t[1] = "Tot0RAE";
            int i3 = 0;
            while (i3 < this.A0r.size()) {
                C2545hh c2545hh2 = this.A0r.get(i3);
                if (c2545hh2.A02 >= this.A00) {
                    if (c2545hh2.A02 != this.A00) {
                        break;
                    }
                    c2545hhA07 = c2545hh2;
                    break;
                }
                i3++;
            }
            if (c2545hhA07 == null && iA01 > 0) {
                int i4 = this.A00;
                if (A0t[1].length() != 12) {
                    A0t[2] = "0";
                    c2545hhA07 = A07(i4, i3);
                } else {
                    String[] strArr = A0t;
                    strArr[4] = "";
                    strArr[5] = "";
                    c2545hhA07 = A07(i4, i3);
                }
            }
            if (c2545hhA07 != null) {
                float f2 = 0.0f;
                int i5 = i3 - 1;
                if (i5 >= 0) {
                    C2545hh c2545hh3 = this.A0r.get(i5);
                    String[] strArr2 = A0t;
                    if (strArr2[3].charAt(15) != strArr2[6].charAt(15)) {
                        A0t[1] = "VNMCyWdkMCax4jTa2KYBa9F64T8dlp";
                        c2545hh = c2545hh3;
                    }
                } else {
                    c2545hh = null;
                }
                int clientWidth = getClientWidth();
                float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - c2545hhA07.A01) + (getPaddingLeft() / clientWidth);
                for (int i6 = this.A00 - 1; i6 >= 0; i6--) {
                    if (f2 >= paddingLeft && i6 < iMax) {
                        if (c2545hh == null) {
                            break;
                        }
                        if (i6 == c2545hh.A02 && !c2545hh.A04) {
                            this.A0r.remove(i5);
                            this.A01.A07(this, i6, c2545hh.A03);
                            i5--;
                            i3--;
                            c2545hh = i5 >= 0 ? this.A0r.get(i5) : null;
                        }
                    } else if (c2545hh == null || i6 != c2545hh.A02) {
                        f2 += A07(i6, i5 + 1).A01;
                        i3++;
                        c2545hh = i5 >= 0 ? this.A0r.get(i5) : null;
                    } else {
                        f2 += c2545hh.A01;
                        String[] strArr3 = A0t;
                        if (strArr3[7].charAt(10) == strArr3[0].charAt(10)) {
                            String[] strArr4 = A0t;
                            strArr4[4] = "";
                            strArr4[5] = "";
                            i5--;
                            c2545hh = i5 >= 0 ? this.A0r.get(i5) : null;
                        }
                    }
                }
                float f3 = c2545hhA07.A01;
                int i7 = i3 + 1;
                if (f3 < 2.0f) {
                    C2545hh c2545hh4 = i7 < this.A0r.size() ? this.A0r.get(i7) : null;
                    if (clientWidth <= 0) {
                        f = 0.0f;
                    } else {
                        float paddingRight = getPaddingRight();
                        float f4 = clientWidth;
                        String[] strArr5 = A0t;
                        if (strArr5[4].length() != strArr5[5].length()) {
                            throw new RuntimeException();
                        }
                        String[] strArr6 = A0t;
                        strArr6[4] = "";
                        strArr6[5] = "";
                        f = (paddingRight / f4) + 2.0f;
                    }
                    for (int i8 = this.A00 + 1; i8 < iA01; i8++) {
                        if (f3 >= f && i8 > iMin) {
                            if (c2545hh4 == null) {
                                break;
                            }
                            if (i8 == c2545hh4.A02 && !c2545hh4.A04) {
                                this.A0r.remove(i7);
                                this.A01.A07(this, i8, c2545hh4.A03);
                                c2545hh4 = i7 < this.A0r.size() ? this.A0r.get(i7) : null;
                            }
                        } else if (c2545hh4 == null || i8 != c2545hh4.A02) {
                            C2545hh c2545hhA08 = A07(i8, i7);
                            i7++;
                            f3 += c2545hhA08.A01;
                            c2545hh4 = i7 < this.A0r.size() ? this.A0r.get(i7) : null;
                        } else {
                            f3 += c2545hh4.A01;
                            i7++;
                            c2545hh4 = i7 < this.A0r.size() ? this.A0r.get(i7) : null;
                        }
                    }
                }
                A0S(c2545hhA07, i3, c2545hhA06);
            }
            int childCount = getChildCount();
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                C2546hi c2546hi = (C2546hi) childAt.getLayoutParams();
                c2546hi.A01 = i9;
                if (!c2546hi.A05 && c2546hi.A00 == 0.0f) {
                    C2545hh c2545hhA09 = A09(childAt);
                    String[] strArr7 = A0t;
                    if (strArr7[7].charAt(10) == strArr7[0].charAt(10)) {
                        A0t[1] = "EEa7ILjnbFiKaMBJBW0FEjvS9loAIL";
                        if (c2545hhA09 != null) {
                            c2546hi.A00 = c2545hhA09.A01;
                            c2546hi.A02 = c2545hhA09.A02;
                        }
                    } else if (c2545hhA09 != null) {
                        c2546hi.A00 = c2545hhA09.A01;
                        c2546hi.A02 = c2545hhA09.A02;
                    }
                }
            }
            A0D();
            String[] strArr8 = A0t;
            if (strArr8[4].length() != strArr8[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr9 = A0t;
            strArr9[7] = "fAvJTe45YQ8jwRLJzle6w88GhXZAW5fe";
            strArr9[0] = "XHTmtVqtTM8ykl9XiQ4ZuPNQzfhQsr72";
            if (hasFocus()) {
                View viewFindFocus = findFocus();
                String[] strArr10 = A0t;
                if (strArr10[3].charAt(15) == strArr10[6].charAt(15)) {
                    throw new RuntimeException();
                }
                String[] strArr11 = A0t;
                strArr11[3] = "98nQxxcA6vj5924MyChW7mkeiNJnWKv2";
                strArr11[6] = "ju5RZqhAYuaQhiOPGNIJcLOaoEeV3OP8";
                C2545hh c2545hhA010 = viewFindFocus != null ? A08(viewFindFocus) : null;
                if (c2545hhA010 == null || c2545hhA010.A02 != this.A00) {
                    for (int i10 = 0; i10 < getChildCount(); i10++) {
                        View childAt2 = getChildAt(i10);
                        C2545hh c2545hhA011 = A09(childAt2);
                        if (c2545hhA011 != null && c2545hhA011.A02 == this.A00 && childAt2.requestFocus(2)) {
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    private void A0J(int i, float f, int i2) {
        if (this.A0d != null) {
            int size = this.A0d.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.A0d.get(i3);
            }
        }
    }

    private final void A0K(int i, float f, int i2) {
        int iMax;
        if (this.A0D > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            if (A0t[1].length() == 12) {
                throw new RuntimeException();
            }
            String[] strArr = A0t;
            strArr[3] = "hSwONVQ9BwzgmNPK4tziO3X6uj4eQvsQ";
            strArr[6] = "gKhZoL4mhYlFRC9fFMXnjqdiW6EOuKfZ";
            int width = getWidth();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                C2546hi c2546hi = (C2546hi) childAt.getLayoutParams();
                if (c2546hi.A05) {
                    switch (c2546hi.A04 & 7) {
                        case 1:
                            iMax = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 2:
                        case 4:
                        default:
                            iMax = paddingLeft;
                            break;
                        case 3:
                            iMax = paddingLeft;
                            paddingLeft += childAt.getWidth();
                            break;
                        case 5:
                            iMax = (width - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            break;
                    }
                    int left = (iMax + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                }
            }
        }
        A0J(i, f, i2);
        if (0 != 0) {
            getScrollX();
            int childCount2 = getChildCount();
            for (int i4 = 0; i4 < childCount2; i4++) {
                View childAt2 = getChildAt(i4);
                if (!((C2546hi) childAt2.getLayoutParams()).A05) {
                    childAt2.getLeft();
                    getClientWidth();
                    throw new NullPointerException(A0A(450, 13, 121));
                }
            }
        }
        this.A0e = true;
    }

    private final void A0L(int i, int i2, int i3) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if ((this.A0X == null || this.A0X.isFinished()) ? false : true) {
            scrollX = this.A0j ? this.A0X.getCurrX() : this.A0X.getStartX();
            this.A0X.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            A0T(false);
            A0h();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i6 = clientWidth / 2;
        float fA02 = i6 + (i6 * A02(Math.min(1.0f, (Math.abs(i4) * 1.0f) / clientWidth)));
        int iAbs2 = Math.abs(i3);
        if (iAbs2 > 0) {
            float f = fA02 / iAbs2;
            if (A0t[1].length() == 12) {
                throw new RuntimeException();
            }
            String[] strArr = A0t;
            strArr[4] = "";
            strArr[5] = "";
            iAbs = Math.round(Math.abs(f) * 1000.0f) * 4;
        } else {
            iAbs = (int) ((1.0f + (Math.abs(i4) / (this.A0M + (clientWidth * this.A01.A00(this.A00))))) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.A0j = false;
        this.A0X.startScroll(scrollX, scrollY, i4, i5, iMin);
        AbstractC2540hb.A07(this);
    }

    private void A0M(int i, int i2, int i3, int i4) {
        if (i2 > 0) {
            ArrayList<C2545hh> arrayList = this.A0r;
            String[] strArr = A0t;
            if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            A0t[1] = "xS6wP2kv8Ukjp2mlI4OFB7EI";
            if (!arrayList.isEmpty()) {
                boolean zIsFinished = this.A0X.isFinished();
                if (A0t[1].length() == 12) {
                    throw new RuntimeException();
                }
                A0t[2] = "M3IvNYMGgF0qb538wmgDMK0nNkgqAt";
                if (!zIsFinished) {
                    this.A0X.setFinalX(getCurrentItem() * getClientWidth());
                    return;
                } else {
                    scrollTo((int) ((((i - getPaddingLeft()) - getPaddingRight()) + i3) * (getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))), getScrollY());
                    return;
                }
            }
        }
        C2545hh c2545hhA06 = A06(this.A00);
        int paddingLeft = (int) (((i - getPaddingLeft()) - getPaddingRight()) * (c2545hhA06 != null ? Math.min(c2545hhA06.A00, this.A07) : 0.0f));
        if (paddingLeft != getScrollX()) {
            A0T(false);
            scrollTo(paddingLeft, getScrollY());
        }
    }

    private final void A0N(int i, boolean z) {
        this.A0m = false;
        A0P(i, z, false);
    }

    private void A0O(int i, boolean z, int i2, boolean z2) {
        C2545hh c2545hhA06 = A06(i);
        int clientWidth = c2545hhA06 != null ? (int) (getClientWidth() * Math.max(this.A02, Math.min(c2545hhA06.A00, this.A07))) : 0;
        if (A0t[2].length() == 14) {
            throw new RuntimeException();
        }
        String[] strArr = A0t;
        strArr[3] = "qWyJthdIKprwmupmlWytZXkwKuTz6nwm";
        strArr[6] = "fDmSwMvEmt93O90vXMKXMmFP8biUMO95";
        if (z) {
            A0L(clientWidth, 0, i2);
            if (z2) {
                A0G(i);
                return;
            }
            return;
        }
        if (z2) {
            A0G(i);
        }
        A0T(false);
        scrollTo(clientWidth, 0);
        A0b(clientWidth);
    }

    private final void A0P(int i, boolean z, boolean z2) {
        A0Q(i, z, z2, 0);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x006a  */
    /* JADX WARN: Code duplicated, block: B:32:0x0073 A[LOOP:0: B:30:0x006b->B:32:0x0073, LOOP_END] */
    private final void A0Q(int i, boolean z, boolean z2, int i2) {
        int i3;
        if (this.A01 == null || this.A01.A01() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.A00 == i && this.A0r.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.A01.A01()) {
            i = this.A01.A01() - 1;
        }
        int i4 = this.A0L;
        if (i <= this.A00 + i4) {
            int i5 = this.A00;
            String[] strArr = A0t;
            if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0t;
            strArr2[3] = "HdD8kb8A1NTv0LjA3C8pNf8B8Uhf5Rjf";
            strArr2[6] = "hEPxY7plOgAB5ujpSYVhyDABeqG0KedF";
            if (i < i5 - i4) {
                for (i3 = 0; i3 < this.A0r.size(); i3++) {
                    this.A0r.get(i3).A04 = true;
                }
            }
        } else {
            while (i3 < this.A0r.size()) {
                this.A0r.get(i3).A04 = true;
            }
        }
        boolean z3 = this.A00 != i;
        if (!this.A0g) {
            A0I(i);
            A0O(i, z, i2, z3);
        } else {
            this.A00 = i;
            if (z3) {
                A0G(i);
            }
            requestLayout();
        }
    }

    private void A0R(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.A08) {
            int i = actionIndex == 0 ? 1 : 0;
            this.A05 = motionEvent.getX(i);
            String[] strArr = A0t;
            if (strArr[4].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0t;
            strArr2[4] = "";
            strArr2[5] = "";
            this.A08 = motionEvent.getPointerId(i);
            if (this.A0U != null) {
                this.A0U.clear();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:76:0x018b  */
    private void A0S(C2545hh c2545hh, int i, C2545hh c2545hh2) {
        C2545hh c2545hh3;
        C2545hh c2545hh4;
        int iA01 = this.A01.A01();
        int clientWidth = getClientWidth();
        float f = clientWidth > 0 ? this.A0M / clientWidth : 0.0f;
        if (c2545hh2 != null) {
            int i2 = c2545hh2.A02;
            if (i2 < c2545hh.A02) {
                int i3 = 0;
                float fA00 = c2545hh2.A00 + c2545hh2.A01 + f;
                int i4 = i2 + 1;
                while (i4 <= c2545hh.A02 && i3 < this.A0r.size()) {
                    C2545hh c2545hh5 = this.A0r.get(i3);
                    while (true) {
                        c2545hh4 = c2545hh5;
                        if (i4 <= c2545hh4.A02 || i3 >= this.A0r.size() - 1) {
                            break;
                        }
                        i3++;
                        c2545hh5 = this.A0r.get(i3);
                    }
                    while (i4 < c2545hh4.A02) {
                        AbstractC2525hM abstractC2525hM = this.A01;
                        if (A0t[2].length() == 14) {
                            throw new RuntimeException();
                        }
                        A0t[2] = "unjnr1JPHveRA3A";
                        fA00 += abstractC2525hM.A00(i4) + f;
                        i4++;
                    }
                    c2545hh4.A00 = fA00;
                    fA00 += c2545hh4.A01 + f;
                    i4++;
                }
            } else if (i2 > c2545hh.A02) {
                int size = this.A0r.size() - 1;
                float fA01 = c2545hh2.A00;
                int i5 = i2 - 1;
                while (i5 >= c2545hh.A02 && size >= 0) {
                    C2545hh c2545hh6 = this.A0r.get(size);
                    while (true) {
                        c2545hh3 = c2545hh6;
                        if (i5 >= c2545hh3.A02 || size <= 0) {
                            break;
                        }
                        size--;
                        c2545hh6 = this.A0r.get(size);
                    }
                    while (true) {
                        int i6 = c2545hh3.A02;
                        String[] strArr = A0t;
                        if (strArr[4].length() == strArr[5].length()) {
                            A0t[2] = "eK1wjFwqyv9CJUk";
                            if (i5 <= i6) {
                                break;
                            }
                            fA01 -= this.A01.A00(i5) + f;
                            i5--;
                        } else {
                            A0t[1] = "tUoZSKhLB59JJ";
                            if (i5 <= i6) {
                                break;
                            }
                            fA01 -= this.A01.A00(i5) + f;
                            i5--;
                        }
                    }
                    fA01 -= c2545hh3.A01 + f;
                    c2545hh3.A00 = fA01;
                    i5--;
                }
            }
        }
        int size2 = this.A0r.size();
        float fA02 = c2545hh.A00;
        int i7 = c2545hh.A02 - 1;
        this.A02 = c2545hh.A02 == 0 ? c2545hh.A00 : -3.4028235E38f;
        this.A07 = c2545hh.A02 == iA01 + (-1) ? (c2545hh.A00 + c2545hh.A01) - 1.0f : Float.MAX_VALUE;
        int i8 = i - 1;
        while (i8 >= 0) {
            C2545hh c2545hh7 = this.A0r.get(i8);
            while (i7 > c2545hh7.A02) {
                fA02 -= this.A01.A00(i7) + f;
                i7--;
            }
            fA02 -= c2545hh7.A01 + f;
            c2545hh7.A00 = fA02;
            if (c2545hh7.A02 == 0) {
                this.A02 = fA02;
            }
            i8--;
            i7--;
        }
        float fA03 = c2545hh.A00 + c2545hh.A01 + f;
        int i9 = c2545hh.A02 + 1;
        int i10 = i + 1;
        while (i10 < size2) {
            C2545hh c2545hh8 = this.A0r.get(i10);
            while (i9 < c2545hh8.A02) {
                fA03 += this.A01.A00(i9) + f;
                i9++;
            }
            int i11 = c2545hh8.A02;
            if (A0t[2].length() != 14) {
                String[] strArr2 = A0t;
                strArr2[3] = "LKMrFShf3NXE5XfaxsCGHUW3hns0S8Wh";
                strArr2[6] = "xptjAJKkekqR5TDnJjimQZvUd22mQJJ9";
                if (i11 == iA01 - 1) {
                    this.A07 = (c2545hh8.A01 + fA03) - 1.0f;
                }
            } else if (i11 == iA01 - 1) {
                this.A07 = (c2545hh8.A01 + fA03) - 1.0f;
            }
            c2545hh8.A00 = fA03;
            fA03 += c2545hh8.A01 + f;
            i10++;
            i9++;
        }
        this.A0l = false;
    }

    private void A0T(boolean z) {
        boolean z2 = this.A0P == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.A0X.isFinished()) {
                this.A0X.abortAnimation();
                if (A0t[1].length() == 12) {
                    throw new RuntimeException();
                }
                A0t[1] = "La7";
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.A0X.getCurrX();
                int currY = this.A0X.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        A0b(currX);
                    }
                }
            }
        }
        this.A0m = false;
        for (int i = 0; i < this.A0r.size(); i++) {
            C2545hh c2545hh = this.A0r.get(i);
            if (c2545hh.A04) {
                z2 = true;
                c2545hh.A04 = false;
            }
        }
        if (z2) {
            if (z) {
                AbstractC2540hb.A0D(this, this.A0q);
            } else {
                this.A0q.run();
            }
        }
    }

    private void A0U(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.A0N : 0, null);
        }
    }

    private void A0V(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean A0W() {
        this.A08 = -1;
        A0B();
        this.A0V.onRelease();
        this.A0W.onRelease();
        return this.A0V.isFinished() || this.A0W.isFinished();
    }

    private final boolean A0X() {
        if (this.A00 <= 0) {
            return false;
        }
        A0N(this.A00 - 1, true);
        return true;
    }

    private final boolean A0Y() {
        if (this.A01 != null && this.A00 < this.A01.A01() - 1) {
            A0N(this.A00 + 1, true);
            return true;
        }
        if (A0t[2].length() == 14) {
            throw new RuntimeException();
        }
        String[] strArr = A0t;
        strArr[7] = "AXA5EDUbYu85ntxkUdYhY3hIIlQIUQar";
        strArr[0] = "7HhQN1X94o8BEMOAnE9vO9t08zapWTmy";
        return false;
    }

    private boolean A0Z(float f) {
        boolean z = false;
        float f2 = this.A05 - f;
        this.A05 = f;
        float scrollX = getScrollX() + f2;
        int clientWidth = getClientWidth();
        float f3 = clientWidth * this.A02;
        float f4 = clientWidth * this.A07;
        boolean z2 = true;
        boolean z3 = true;
        C2545hh c2545hh = this.A0r.get(0);
        C2545hh c2545hh2 = this.A0r.get(this.A0r.size() - 1);
        if (c2545hh.A02 != 0) {
            z2 = false;
            float f5 = c2545hh.A00;
            if (A0t[1].length() == 12) {
                throw new RuntimeException();
            }
            A0t[1] = "a";
            f3 = f5 * clientWidth;
        }
        if (c2545hh2.A02 != this.A01.A01() - 1) {
            z3 = false;
            f4 = c2545hh2.A00 * clientWidth;
        }
        if (scrollX < f3) {
            if (z2) {
                this.A0V.onPull(Math.abs(f3 - scrollX) / clientWidth);
                z = true;
            }
            scrollX = f3;
        } else if (scrollX > f4) {
            if (z3) {
                EdgeEffect edgeEffect = this.A0W;
                float fAbs = Math.abs(scrollX - f4);
                float f6 = clientWidth;
                String[] strArr = A0t;
                if (strArr[4].length() != strArr[5].length()) {
                    edgeEffect.onPull(fAbs / f6);
                    z = true;
                } else {
                    A0t[1] = "TwKB2lBmR";
                    edgeEffect.onPull(fAbs / f6);
                    z = true;
                }
            }
            scrollX = f4;
        }
        this.A05 += scrollX - ((int) scrollX);
        scrollTo((int) scrollX, getScrollY());
        A0b((int) scrollX);
        return z;
    }

    private final boolean A0a(float f, float f2) {
        if (f >= this.A0I || f2 <= 0.0f) {
            if (f > getWidth() - this.A0I) {
                if (A0t[2].length() == 14) {
                    throw new RuntimeException();
                }
                String[] strArr = A0t;
                strArr[3] = "LoLbwLodEQ0RZhoADzk4YxqyeMxGbPNe";
                strArr[6] = "uXFtlpuRRgamX4n9Zkql1HjWorEkSQ7b";
                if (f2 < 0.0f) {
                }
            }
            return false;
        }
        return true;
    }

    private boolean A0b(int i) {
        int size = this.A0r.size();
        String strA0A = A0A(397, 53, 60);
        if (size != 0) {
            C2545hh c2545hhA05 = A05();
            int clientWidth = getClientWidth();
            int i2 = this.A0M + clientWidth;
            float f = this.A0M / clientWidth;
            int i3 = c2545hhA05.A02;
            float f2 = ((i / clientWidth) - c2545hhA05.A00) / (c2545hhA05.A01 + f);
            this.A0e = false;
            A0K(i3, f2, (int) (i2 * f2));
            if (this.A0e) {
                return true;
            }
            throw new IllegalStateException(strA0A);
        }
        if (this.A0g) {
            return false;
        }
        this.A0e = false;
        A0K(0, 0.0f, 0);
        String[] strArr = A0t;
        if (strArr[4].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A0t[2] = "c3ramapljB1reDSufYjA";
        if (this.A0e) {
            return false;
        }
        throw new IllegalStateException(strA0A);
    }

    private final boolean A0c(int i) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            boolean z = false;
            for (ViewParent parent = viewFindFocus.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                if (parent == this) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                StringBuilder sb = new StringBuilder();
                sb.append(viewFindFocus.getClass().getSimpleName());
                for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb.append(A0A(0, 4, 21)).append(parent2.getClass().getSimpleName());
                }
                Log.e(A0A(300, 9, 47), A0A(309, 72, 80) + sb.toString());
                viewFindFocus = null;
            }
        }
        boolean zA0X = false;
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i);
        if (viewFindNextFocus == null || viewFindNextFocus == viewFindFocus) {
            if (i == 17 || i == 1) {
                zA0X = A0X();
            } else if (i == 66 || i == 2) {
                zA0X = A0Y();
            }
        } else if (i == 17) {
            zA0X = (viewFindFocus == null || A04(this.A0o, viewFindNextFocus).left < A04(this.A0o, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : A0X();
        } else if (i == 66) {
            zA0X = (viewFindFocus == null || A04(this.A0o, viewFindNextFocus).left > A04(this.A0o, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : A0Y();
        }
        if (zA0X) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return zA0X;
    }

    private final boolean A0d(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 21:
                return keyEvent.hasModifiers(2) ? A0X() : A0c(17);
            case 22:
                boolean zHasModifiers = keyEvent.hasModifiers(2);
                String[] strArr = A0t;
                if (strArr[4].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                A0t[1] = "lC1XoLB2bpdljamdt6Vm";
                return zHasModifiers ? A0Y() : A0c(66);
            case 61:
                if (keyEvent.hasNoModifiers()) {
                    return A0c(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return A0c(1);
                }
                return false;
            default:
                return false;
        }
    }

    public static boolean A0e(View view) {
        return view.getClass().getAnnotation(ViewPager$DecorView.class) != null;
    }

    private final boolean A0f(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom()) {
                    int left = (i2 + scrollX) - childAt.getLeft();
                    int i4 = i3 + scrollY;
                    int top = childAt.getTop();
                    if (A0t[1].length() == 12) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0t;
                    strArr[4] = "";
                    strArr[5] = "";
                    if (A0f(childAt, true, i, left, i4 - top)) {
                        return true;
                    }
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.A0n != z) {
            this.A0n = z;
        }
    }

    public final void A0g() {
        int iA01 = this.A01.A01();
        this.A0G = iA01;
        boolean z = this.A0r.size() < (this.A0L * 2) + 1 && this.A0r.size() < iA01;
        int iMax = this.A00;
        boolean z2 = false;
        int i = 0;
        while (i < this.A0r.size()) {
            C2545hh c2545hh = this.A0r.get(i);
            int iA02 = this.A01.A02(c2545hh.A03);
            if (iA02 != -1) {
                if (iA02 == -2) {
                    this.A0r.remove(i);
                    i--;
                    if (!z2) {
                        z2 = true;
                    }
                    this.A01.A07(this, c2545hh.A02, c2545hh.A03);
                    z = true;
                    if (this.A00 == c2545hh.A02) {
                        iMax = Math.max(0, Math.min(this.A00, iA01 - 1));
                        z = true;
                    }
                } else if (c2545hh.A02 != iA02) {
                    if (c2545hh.A02 == this.A00) {
                        iMax = iA02;
                    }
                    c2545hh.A02 = iA02;
                    z = true;
                }
            }
            i++;
        }
        Collections.sort(this.A0r, A0x);
        if (z) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                C2546hi c2546hi = (C2546hi) getChildAt(i2).getLayoutParams();
                if (!c2546hi.A05) {
                    c2546hi.A00 = 0.0f;
                }
            }
            A0P(iMax, false, true);
            if (A0t[2].length() == 14) {
                throw new RuntimeException();
            }
            A0t[2] = "iBz2AIJ6C";
            requestLayout();
        }
    }

    public final void A0h() {
        A0I(this.A00);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C2545hh c2545hhA09;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (c2545hhA09 = A09(childAt)) != null && c2545hhA09.A02 == this.A00) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList<View> arrayList) {
        C2545hh c2545hhA09;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (c2545hhA09 = A09(childAt)) != null && c2545hhA09.A02 == this.A00) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        C2546hi c2546hi = (C2546hi) layoutParams;
        c2546hi.A05 |= A0e(view);
        if (!this.A0h) {
            super.addView(view, i, layoutParams);
            return;
        }
        if (c2546hi != null && c2546hi.A05) {
            throw new IllegalStateException(A0A(86, 41, 16));
        }
        c2546hi.A03 = true;
        if (A0t[2].length() == 14) {
            throw new RuntimeException();
        }
        A0t[1] = "XL6oa3uLuKs2IOpHyjfCXdHiJnTalh";
        addViewInLayout(view, i, layoutParams);
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        if (this.A01 == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.A02));
        }
        return i > 0 && scrollX < ((int) (((float) clientWidth) * this.A07));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C2546hi) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.A0j = true;
        if (this.A0X.isFinished() || !this.A0X.computeScrollOffset()) {
            A0T(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.A0X.getCurrX();
        int currY = this.A0X.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!A0b(currX)) {
                this.A0X.abortAnimation();
                scrollTo(0, currY);
            }
        }
        AbstractC2540hb.A07(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || A0d(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C2545hh c2545hhA09;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (c2545hhA09 = A09(childAt)) != null) {
                int i2 = c2545hhA09.A02;
                String[] strArr = A0t;
                if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0t;
                strArr2[4] = "";
                strArr2[5] = "";
                if (i2 == this.A00 && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003a  */
    /* JADX WARN: Code duplicated, block: B:16:0x004d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0056  */
    /* JADX WARN: Code duplicated, block: B:21:0x0096  */
    /* JADX WARN: Code duplicated, block: B:25:0x00d7  */
    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean zIsFinished;
        super.draw(canvas);
        boolean zDraw = false;
        int overScrollMode = getOverScrollMode();
        if (overScrollMode == 0) {
            zIsFinished = this.A0V.isFinished();
            if (A0t[1].length() != 12) {
                A0t[1] = "sR19g1oBfMrUqPxbyG4ArbsnA";
                if (!zIsFinished) {
                    int iSave = canvas.save();
                    int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                    int width = getWidth();
                    canvas.rotate(270.0f);
                    canvas.translate((-height) + getPaddingTop(), this.A02 * width);
                    this.A0V.setSize(height, width);
                    zDraw = false | this.A0V.draw(canvas);
                    canvas.restoreToCount(iSave);
                }
            } else {
                String[] strArr = A0t;
                strArr[4] = "";
                strArr[5] = "";
                if (!zIsFinished) {
                    int iSave2 = canvas.save();
                    int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                    int width2 = getWidth();
                    canvas.rotate(270.0f);
                    canvas.translate((-height2) + getPaddingTop(), this.A02 * width2);
                    this.A0V.setSize(height2, width2);
                    zDraw = false | this.A0V.draw(canvas);
                    canvas.restoreToCount(iSave2);
                }
            }
            if (!this.A0W.isFinished()) {
                int iSave3 = canvas.save();
                int width3 = getWidth();
                int height3 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.A07 + 1.0f)) * width3);
                this.A0W.setSize(height3, width3);
                zDraw |= this.A0W.draw(canvas);
                canvas.restoreToCount(iSave3);
            }
        } else {
            if (overScrollMode == 1) {
                AbstractC2525hM abstractC2525hM = this.A01;
                String[] strArr2 = A0t;
                if (strArr2[7].charAt(10) != strArr2[0].charAt(10)) {
                    throw new RuntimeException();
                }
                A0t[1] = "uCo1AgFx4bPu4bwpitwpleYcuNfeFds";
                if (abstractC2525hM != null && this.A01.A01() > 1) {
                    zIsFinished = this.A0V.isFinished();
                    if (A0t[1].length() != 12) {
                        A0t[1] = "sR19g1oBfMrUqPxbyG4ArbsnA";
                        if (!zIsFinished) {
                            int iSave4 = canvas.save();
                            int height4 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                            int width4 = getWidth();
                            canvas.rotate(270.0f);
                            canvas.translate((-height4) + getPaddingTop(), this.A02 * width4);
                            this.A0V.setSize(height4, width4);
                            zDraw = false | this.A0V.draw(canvas);
                            canvas.restoreToCount(iSave4);
                        }
                    } else {
                        String[] strArr3 = A0t;
                        strArr3[4] = "";
                        strArr3[5] = "";
                        if (!zIsFinished) {
                            int iSave5 = canvas.save();
                            int height5 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                            int width5 = getWidth();
                            canvas.rotate(270.0f);
                            canvas.translate((-height5) + getPaddingTop(), this.A02 * width5);
                            this.A0V.setSize(height5, width5);
                            zDraw = false | this.A0V.draw(canvas);
                            canvas.restoreToCount(iSave5);
                        }
                    }
                    if (!this.A0W.isFinished()) {
                        int iSave6 = canvas.save();
                        int width6 = getWidth();
                        int height6 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                        canvas.rotate(90.0f);
                        canvas.translate(-getPaddingTop(), (-(this.A07 + 1.0f)) * width6);
                        this.A0W.setSize(height6, width6);
                        zDraw |= this.A0W.draw(canvas);
                        canvas.restoreToCount(iSave6);
                    }
                }
            }
            this.A0V.finish();
            this.A0W.finish();
        }
        if (zDraw) {
            AbstractC2540hb.A07(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.A0S;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C2546hi();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C2546hi(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC2525hM getAdapter() {
        return this.A01;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return ((C2546hi) this.A0b.get(this.A0F == 2 ? (i - 1) - i2 : i2).getLayoutParams()).A01;
    }

    public int getCurrentItem() {
        return this.A00;
    }

    public int getOffscreenPageLimit() {
        return this.A0L;
    }

    public int getPageMargin() {
        return this.A0M;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A0g = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.A0q);
        if (this.A0X != null && !this.A0X.isFinished()) {
            this.A0X.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        if (this.A0M <= 0 || this.A0S == null || this.A0r.size() <= 0 || this.A01 == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f2 = this.A0M / width;
        int i = 0;
        C2545hh c2545hh = this.A0r.get(0);
        float f3 = c2545hh.A00;
        int size = this.A0r.size();
        int i2 = this.A0r.get(size - 1).A02;
        for (int i3 = c2545hh.A02; i3 < i2; i3++) {
            while (i3 > c2545hh.A02 && i < size) {
                i++;
                C2545hh c2545hh2 = this.A0r.get(i);
                String[] strArr = A0t;
                if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                    throw new RuntimeException();
                }
                A0t[2] = "Qpfq";
                c2545hh = c2545hh2;
            }
            if (i3 == c2545hh.A02) {
                f = (c2545hh.A00 + c2545hh.A01) * width;
                f3 = c2545hh.A00 + c2545hh.A01 + f2;
            } else {
                float fA00 = this.A01.A00(i3);
                f = (f3 + fA00) * width;
                f3 += fA00 + f2;
            }
            if (this.A0M + f > scrollX) {
                this.A0S.setBounds(Math.round(f), this.A0Q, Math.round(this.A0M + f), this.A09);
                Drawable drawable = this.A0S;
                String[] strArr2 = A0t;
                if (strArr2[7].charAt(10) != strArr2[0].charAt(10)) {
                    A0t[1] = "";
                    drawable.draw(canvas);
                } else {
                    String[] strArr3 = A0t;
                    strArr3[4] = "";
                    strArr3[5] = "";
                    drawable.draw(canvas);
                }
            }
            int i4 = scrollX + width;
            if (A0t[1].length() == 12) {
                throw new RuntimeException();
            }
            A0t[1] = "DrXdt";
            if (f > i4) {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float f;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            A0W();
            String[] strArr = A0t;
            if (strArr[4].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A0t[2] = "iW5W";
            return false;
        }
        if (action != 0) {
            if (this.A0i) {
                return true;
            }
            if (this.A0k) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x = motionEvent.getX();
                this.A03 = x;
                this.A05 = x;
                float y = motionEvent.getY();
                this.A04 = y;
                this.A06 = y;
                this.A08 = motionEvent.getPointerId(0);
                this.A0k = false;
                this.A0j = true;
                this.A0X.computeScrollOffset();
                if (this.A0P == 2 && Math.abs(this.A0X.getFinalX() - this.A0X.getCurrX()) > this.A0C) {
                    this.A0X.abortAnimation();
                    this.A0m = false;
                    A0h();
                    this.A0i = true;
                    A0V(true);
                    setScrollState(1);
                } else {
                    A0T(false);
                    this.A0i = false;
                }
                break;
            case 2:
                int i = this.A08;
                if (i != -1) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i);
                    float x2 = motionEvent.getX(iFindPointerIndex);
                    float f2 = x2 - this.A05;
                    float fAbs = Math.abs(f2);
                    float y2 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y2 - this.A04);
                    if (f2 != 0.0f && !A0a(this.A05, f2) && A0f(this, false, (int) f2, (int) x2, (int) y2)) {
                        this.A05 = x2;
                        this.A06 = y2;
                        this.A0k = true;
                        return false;
                    }
                    if (fAbs > this.A0R && 0.5f * fAbs > fAbs2) {
                        this.A0i = true;
                        A0V(true);
                        setScrollState(1);
                        if (f2 > 0.0f) {
                            float f3 = this.A03;
                            int i2 = this.A0R;
                            String[] strArr2 = A0t;
                            if (strArr2[7].charAt(10) != strArr2[0].charAt(10)) {
                                f = f3 + i2;
                            } else {
                                String[] strArr3 = A0t;
                                strArr3[7] = "WpQimEPBWZ8vG05HKhTxshBMY3NNEur0";
                                strArr3[0] = "BEtp4ufX6D8x3OZlDxdpMoFh1oKQqP0t";
                                f = f3 + i2;
                            }
                        } else {
                            f = this.A03 - this.A0R;
                        }
                        this.A05 = f;
                        this.A06 = y2;
                        setScrollingCacheEnabled(true);
                    } else if (fAbs2 > this.A0R) {
                        this.A0k = true;
                    }
                    if (this.A0i && A0Z(x2)) {
                        AbstractC2540hb.A07(this);
                    }
                }
                break;
            case 6:
                A0R(motionEvent);
                break;
        }
        VelocityTracker velocityTracker = this.A0U;
        if (A0t[2].length() == 14) {
            throw new RuntimeException();
        }
        String[] strArr4 = A0t;
        strArr4[3] = "qZEBvpK5WM51NnTYZj9Wv9V85vPNkfCF";
        strArr4[6] = "8DoAZte0LwUXg2aXlHvSBWFBy3vUeqDy";
        if (velocityTracker == null) {
            this.A0U = VelocityTracker.obtain();
        }
        this.A0U.addMovement(motionEvent);
        return this.A0i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        C2545hh c2545hhA09;
        int iMax;
        int iMax2;
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = 8;
            String[] strArr = A0t;
            if (strArr[4].length() == strArr[5].length()) {
                A0t[1] = "";
                if (i8 >= childCount) {
                    int i10 = (i5 - paddingLeft) - paddingRight;
                    int i11 = 0;
                    while (i11 < childCount) {
                        View childAt = getChildAt(i11);
                        if (childAt.getVisibility() != i9) {
                            C2546hi c2546hi = (C2546hi) childAt.getLayoutParams();
                            if (!c2546hi.A05 && (c2545hhA09 = A09(childAt)) != null) {
                                int i12 = paddingLeft + ((int) (i10 * c2545hhA09.A00));
                                if (c2546hi.A03) {
                                    c2546hi.A03 = false;
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec((int) (i10 * c2546hi.A00), 1073741824), View.MeasureSpec.makeMeasureSpec((i6 - paddingTop) - paddingBottom, 1073741824));
                                }
                                int i13 = paddingTop;
                                childAt.layout(i12, i13, childAt.getMeasuredWidth() + i12, childAt.getMeasuredHeight() + i13);
                            }
                        }
                        i11++;
                        i9 = 8;
                    }
                    this.A0Q = paddingTop;
                    this.A09 = i6 - paddingBottom;
                    this.A0D = i7;
                    if (this.A0g) {
                        int i14 = this.A00;
                        z2 = false;
                        String[] strArr2 = A0t;
                        if (strArr2[4].length() != strArr2[5].length()) {
                            throw new RuntimeException();
                        }
                        String[] strArr3 = A0t;
                        strArr3[4] = "";
                        strArr3[5] = "";
                        A0O(i14, false, 0, false);
                    } else {
                        z2 = false;
                    }
                    this.A0g = z2;
                    return;
                }
                View childAt2 = getChildAt(i8);
                if (childAt2.getVisibility() != 8) {
                    C2546hi c2546hi2 = (C2546hi) childAt2.getLayoutParams();
                    if (c2546hi2.A05) {
                        int i15 = c2546hi2.A04 & 7;
                        int i16 = c2546hi2.A04 & InterfaceC3669k1.d.b.j;
                        switch (i15) {
                            case 1:
                                iMax = Math.max((i5 - childAt2.getMeasuredWidth()) / 2, paddingLeft);
                                break;
                            case 2:
                            case 4:
                            default:
                                iMax = paddingLeft;
                                break;
                            case 3:
                                iMax = paddingLeft;
                                paddingLeft += childAt2.getMeasuredWidth();
                                break;
                            case 5:
                                int i17 = i5 - paddingRight;
                                int measuredWidth = childAt2.getMeasuredWidth();
                                String[] strArr4 = A0t;
                                if (strArr4[7].charAt(10) == strArr4[0].charAt(10)) {
                                    A0t[1] = "51Hkg";
                                    iMax = i17 - measuredWidth;
                                    paddingRight += childAt2.getMeasuredWidth();
                                }
                                break;
                        }
                        switch (i16) {
                            case 16:
                                iMax2 = Math.max((i6 - childAt2.getMeasuredHeight()) / 2, paddingTop);
                                break;
                            case 48:
                                iMax2 = paddingTop;
                                paddingTop += childAt2.getMeasuredHeight();
                                break;
                            case 80:
                                iMax2 = (i6 - paddingBottom) - childAt2.getMeasuredHeight();
                                paddingBottom += childAt2.getMeasuredHeight();
                                break;
                            default:
                                iMax2 = paddingTop;
                                break;
                        }
                        int i18 = iMax + scrollX;
                        childAt2.layout(i18, iMax2, i18 + childAt2.getMeasuredWidth(), childAt2.getMeasuredHeight() + iMax2);
                        i7++;
                    } else {
                        continue;
                    }
                }
                i8++;
            }
        }
        throw new RuntimeException();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        C2546hi c2546hi;
        int i3;
        int i4;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.A0I = Math.min(measuredWidth / 10, this.A0E);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C2546hi c2546hi2 = (C2546hi) childAt.getLayoutParams();
                if (A0t[1].length() == 12) {
                    throw new RuntimeException();
                }
                String[] strArr = A0t;
                strArr[4] = "";
                strArr[5] = "";
                if (c2546hi2 != null && c2546hi2.A05) {
                    int i6 = c2546hi2.A04 & 7;
                    int i7 = c2546hi2.A04 & InterfaceC3669k1.d.b.j;
                    int i8 = Integer.MIN_VALUE;
                    int i9 = Integer.MIN_VALUE;
                    boolean z = i7 == 48 || i7 == 80;
                    boolean z2 = i6 == 3 || i6 == 5;
                    if (z) {
                        i8 = 1073741824;
                    } else if (z2) {
                        i9 = 1073741824;
                    }
                    if (c2546hi2.width != -2) {
                        i8 = 1073741824;
                        i3 = c2546hi2.width != -1 ? c2546hi2.width : paddingLeft;
                    } else {
                        i3 = paddingLeft;
                    }
                    if (c2546hi2.height != -2) {
                        i9 = 1073741824;
                        if (c2546hi2.height != -1) {
                            i4 = c2546hi2.height;
                            if (A0t[1].length() != 12) {
                                A0t[1] = "VKsSzAx6pk9J5wmYrW5ACp";
                            }
                        } else {
                            i4 = measuredHeight;
                        }
                    } else {
                        i4 = measuredHeight;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i3, i8), View.MeasureSpec.makeMeasureSpec(i4, i9));
                    if (z) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (z2) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
            }
        }
        this.A0B = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.A0A = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.A0h = true;
        A0h();
        this.A0h = false;
        int childCount2 = getChildCount();
        for (int i10 = 0; i10 < childCount2; i10++) {
            View childAt2 = getChildAt(i10);
            if (childAt2.getVisibility() != 8 && ((c2546hi = (C2546hi) childAt2.getLayoutParams()) == null || !c2546hi.A05)) {
                float f = paddingLeft;
                String[] strArr2 = A0t;
                if (strArr2[4].length() != strArr2[5].length()) {
                    throw new RuntimeException();
                }
                A0t[1] = "11cm9STM7FlxGR3";
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f * c2546hi.A00), 1073741824), this.A0A);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C2545hh c2545hhA09;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i2 = 0;
            i3 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            childCount = -1;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (A0t[2].length() == 14) {
                throw new RuntimeException();
            }
            String[] strArr = A0t;
            strArr[3] = "wvs0VrXDMEHK1ZrgMliCmQkmYIqFRPYZ";
            strArr[6] = "yeuyy9yC0QSIfk9tyj8D1No5khczL5F7";
            if (childAt.getVisibility() == 0 && (c2545hhA09 = A09(childAt)) != null && c2545hhA09.A02 == this.A00 && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i3;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof WrappedParcelable)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            Context context = getContext();
            String[] strArr = A0t;
            if (strArr[3].charAt(15) == strArr[6].charAt(15)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0t;
            strArr2[7] = "Ly8LvMv3iU8o2fiJAVqvd6K7Aqz3gZKY";
            strArr2[0] = "HcNmsPXina8Ul250FP3kUGj1pgK53N1r";
            classLoader = context.getClassLoader();
        }
        Parcelable parcelableUnwrap = ((WrappedParcelable) parcelable).unwrap(classLoader);
        if (!(parcelableUnwrap instanceof ViewPager$SavedState)) {
            super.onRestoreInstanceState(parcelableUnwrap);
            return;
        }
        ViewPager$SavedState viewPager$SavedState = (ViewPager$SavedState) parcelableUnwrap;
        super.onRestoreInstanceState(viewPager$SavedState.A04());
        if (this.A01 != null) {
            A0P(viewPager$SavedState.A00, false, true);
            return;
        }
        this.A0O = viewPager$SavedState.A00;
        this.A0T = viewPager$SavedState.A01;
        this.A0a = viewPager$SavedState.A02;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ViewPager$SavedState viewPager$SavedState = new ViewPager$SavedState(super.onSaveInstanceState());
        viewPager$SavedState.A00 = this.A00;
        if (this.A01 != null) {
            viewPager$SavedState.A01 = this.A01.A03();
        }
        return new WrappedParcelable(viewPager$SavedState);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            A0M(i, i3, this.A0M, this.A0M);
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00cf  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.A0f) {
            return true;
        }
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || this.A01 == null || this.A01.A01() == 0) {
            return false;
        }
        if (this.A0U == null) {
            this.A0U = VelocityTracker.obtain();
        }
        this.A0U.addMovement(motionEvent);
        boolean zA0W = false;
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.A0X.abortAnimation();
                this.A0m = false;
                A0h();
                float x = motionEvent.getX();
                this.A03 = x;
                this.A05 = x;
                float y = motionEvent.getY();
                this.A04 = y;
                this.A06 = y;
                this.A08 = motionEvent.getPointerId(0);
                break;
            case 1:
                if (this.A0i) {
                    VelocityTracker velocityTracker = this.A0U;
                    velocityTracker.computeCurrentVelocity(1000, this.A0J);
                    int xVelocity = (int) velocityTracker.getXVelocity(this.A08);
                    this.A0m = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    C2545hh c2545hhA05 = A05();
                    A0Q(A03(c2545hhA05.A02, ((scrollX / clientWidth) - c2545hhA05.A00) / (c2545hhA05.A01 + (this.A0M / clientWidth)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.A08)) - this.A03)), true, true, xVelocity);
                    zA0W = A0W();
                }
                break;
            case 2:
                if (!this.A0i) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.A08);
                    if (iFindPointerIndex != -1) {
                        float x2 = motionEvent.getX(iFindPointerIndex);
                        float fAbs = Math.abs(x2 - this.A05);
                        float y2 = motionEvent.getY(iFindPointerIndex);
                        float fAbs2 = Math.abs(y2 - this.A06);
                        if (fAbs > this.A0R && fAbs > fAbs2) {
                            this.A0i = true;
                            A0V(true);
                            this.A05 = x2 - this.A03 > 0.0f ? this.A03 + this.A0R : this.A03 - this.A0R;
                            this.A06 = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                        if (this.A0i) {
                            zA0W = false | A0Z(motionEvent.getX(motionEvent.findPointerIndex(this.A08)));
                        }
                    } else {
                        zA0W = A0W();
                    }
                } else if (this.A0i) {
                    zA0W = false | A0Z(motionEvent.getX(motionEvent.findPointerIndex(this.A08)));
                }
                break;
            case 3:
                if (this.A0i) {
                    A0O(this.A00, true, 0, false);
                    zA0W = A0W();
                }
                break;
            case 5:
                int actionIndex = motionEvent.getActionIndex();
                this.A05 = motionEvent.getX(actionIndex);
                this.A08 = motionEvent.getPointerId(actionIndex);
                break;
            case 6:
                A0R(motionEvent);
                this.A05 = motionEvent.getX(motionEvent.findPointerIndex(this.A08));
                break;
        }
        if (zA0W) {
            AbstractC2540hb.A07(this);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.A0h) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(AbstractC2525hM abstractC2525hM) {
        if (this.A01 != null) {
            this.A01.A06(null);
            for (int i = 0; i < this.A0r.size(); i++) {
                C2545hh c2545hh = this.A0r.get(i);
                this.A01.A07(this, c2545hh.A02, c2545hh.A03);
            }
            this.A0r.clear();
            A0C();
            this.A00 = 0;
            scrollTo(0, 0);
        }
        this.A01 = abstractC2525hM;
        this.A0G = 0;
        if (this.A01 != null) {
            if (this.A0Z == null) {
                this.A0Z = new C2550hm(this);
            }
            this.A01.A06(this.A0Z);
            this.A0m = false;
            boolean z = this.A0g;
            this.A0g = true;
            this.A0G = this.A01.A01();
            if (this.A0O >= 0) {
                A0P(this.A0O, false, true);
                this.A0O = -1;
                this.A0T = null;
                this.A0a = null;
            } else if (z) {
                requestLayout();
            } else {
                A0h();
            }
        }
        if (this.A0c == null || this.A0c.isEmpty() || 0 >= this.A0c.size()) {
            return;
        }
        this.A0c.get(0);
        throw new NullPointerException(A0A(381, 16, 117));
    }

    public void setCurrentItem(int i) {
        this.A0m = false;
        A0P(i, !this.A0g, false);
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w(A0A(300, 9, 47), A0A(127, 31, 60) + i + A0A(51, 26, 90) + 1);
            i = 1;
        }
        if (i != this.A0L) {
            this.A0L = i;
            A0h();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(InterfaceC2548hk interfaceC2548hk) {
        this.A0Y = interfaceC2548hk;
    }

    public void setPageMargin(int i) {
        int i2 = this.A0M;
        this.A0M = i;
        int width = getWidth();
        A0M(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(AbstractC2496gs.A00(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.A0S = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i) {
        if (this.A0P == i) {
            return;
        }
        this.A0P = i;
        if (0 != 0) {
            A0U(i != 0);
        }
        A0H(i);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.A0S;
    }
}
