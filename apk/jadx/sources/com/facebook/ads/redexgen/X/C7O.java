package com.facebook.ads.redexgen.X;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView;
import com.facebook.ads.internal.androidx.support.v7.widget.RecyclerView$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.mediationsdk.demandOnly.e;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7O, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C7O extends ViewGroup {
    public static byte[] A18;
    public static String[] A19 = {"EzQ8zede2M", "Jhjgeach8ubRdn89CHbftPIFCkhy8Cmz", "AI0RoC", "LwFgY3t3Qwi2PJUU36Pvm2", "gOCwMU1oDfpLVyXTNaTi7eQdHjis00sx", "GZYggCcl1OWg4VOzBYKk2kBvqjxmktta", "Te26Sy6xLG0KtVPzJaOHws0Kts3F9NRb", "K773CdyIAwEU"};
    public static final Interpolator A1A;
    public static final boolean A1B;
    public static final boolean A1C;
    public static final boolean A1D;
    public static final boolean A1E;
    public static final boolean A1F;
    public static final boolean A1G;
    public static final int[] A1H;
    public static final int[] A1I;
    public static final Class<?>[] A1J;
    public JB A00;
    public C2584iK A01;
    public JA A02;
    public RunnableC2597iX A03;
    public AbstractC2608ik A04;
    public AbstractC2616is A05;
    public AbstractC2620iw A06;
    public InterfaceC2629j5 A07;
    public RunnableC2637jD A08;
    public C1638Ic A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public float A0L;
    public float A0M;
    public int A0N;
    public int A0O;
    public int A0P;
    public int A0Q;
    public int A0R;
    public int A0S;
    public int A0T;
    public int A0U;
    public int A0V;
    public int A0W;
    public int A0X;
    public VelocityTracker A0Y;
    public EdgeEffect A0Z;
    public EdgeEffect A0a;
    public EdgeEffect A0b;
    public EdgeEffect A0c;
    public C2522hJ A0d;
    public InterfaceC2611in A0e;
    public InterfaceC2614iq A0f;
    public AbstractC2623iz A0g;
    public InterfaceC2624j0 A0h;
    public AbstractC2625j1 A0i;
    public RecyclerView$SavedState A0j;
    public Runnable A0k;
    public List<RecyclerView.OnChildAttachStateChangeListener> A0l;
    public List<AbstractC2625j1> A0m;
    public boolean A0n;
    public boolean A0o;
    public final Rect A0p;
    public final RectF A0q;
    public final C2628j4 A0r;
    public final C2635jB A0s;
    public final C2646jM A0t;
    public final Runnable A0u;
    public final ArrayList<AbstractC2617it> A0v;
    public final List<AbstractC2638jE> A0w;
    public final int A0x;
    public final int A0y;
    public final Rect A0z;
    public final AccessibilityManager A10;
    public final C1652Ir A11;
    public final InterfaceC2645jL A12;
    public final ArrayList<InterfaceC2624j0> A13;
    public final int[] A14;
    public final int[] A15;
    public final int[] A16;
    public final int[] A17;

    static {
        A0W();
        A1I = new int[]{R.attr.nestedScrollingEnabled};
        A1H = new int[]{R.attr.clipToPadding};
        A1C = false;
        A1B = Build.VERSION.SDK_INT >= 23;
        A1D = true;
        A1E = true;
        A1F = false;
        A1G = false;
        Class<?> cls = Integer.TYPE;
        A1J = new Class[]{Context.class, AttributeSet.class, cls, cls};
        A1A = new InterpolatorC2607ij();
    }

    public C7O(Context context) {
        this(context, null);
    }

    public C7O(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C7O(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A11 = new C1652Ir(this);
        this.A0r = new C2628j4(this);
        this.A0t = new C2646jM();
        this.A0u = new RunnableC2605ih(this);
        this.A0p = new Rect();
        this.A0z = new Rect();
        this.A0q = new RectF();
        this.A0v = new ArrayList<>();
        this.A13 = new ArrayList<>();
        this.A0O = 0;
        this.A0C = false;
        this.A0U = 0;
        this.A0N = 0;
        this.A05 = new C7S();
        this.A0W = 0;
        this.A0V = -1;
        this.A0L = Float.MIN_VALUE;
        this.A0M = Float.MIN_VALUE;
        this.A0o = true;
        this.A08 = new RunnableC2637jD(this);
        this.A02 = A1E ? new JA() : null;
        this.A0s = new C2635jB();
        this.A0G = false;
        this.A0H = false;
        this.A0f = new C1655Iu(this);
        this.A0K = false;
        this.A14 = new int[2];
        this.A17 = new int[2];
        this.A16 = new int[2];
        this.A15 = new int[2];
        this.A0w = new ArrayList();
        this.A0k = new RunnableC2606ii(this);
        this.A12 = new J2(this);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A1H, i, 0);
            this.A0B = typedArrayObtainStyledAttributes.getBoolean(0, true);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.A0B = true;
        }
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.A0X = viewConfiguration.getScaledTouchSlop();
        this.A0L = AbstractC2541hc.A00(viewConfiguration, context);
        this.A0M = AbstractC2541hc.A01(viewConfiguration, context);
        this.A0y = viewConfiguration.getScaledMinimumFlingVelocity();
        this.A0x = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.A05.A0J(this.A0f);
        A0e();
        A0O();
        if (AbstractC2540hb.A00(this) == 0) {
            AbstractC2540hb.A09(this, 1);
        }
        this.A10 = (AccessibilityManager) getContext().getSystemService(A0I(1884, 13, 102));
        setAccessibilityDelegateCompat(new C1638Ic(this));
        setDescendantFocusability(262144);
        setNestedScrollingEnabled(true);
    }

    private int A0B(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private final long A0C(AbstractC2638jE abstractC2638jE) {
        return this.A04.A0O() ? abstractC2638jE.A0V() : abstractC2638jE.A03;
    }

    private View A0D() {
        AbstractC2638jE abstractC2638jEA1H;
        int i = this.A0s.A01 != -1 ? this.A0s.A01 : 0;
        int iA03 = this.A0s.A03();
        for (int i2 = i; i2 < iA03; i2++) {
            AbstractC2638jE abstractC2638jEA1H2 = A1H(i2);
            if (abstractC2638jEA1H2 == null) {
                break;
            }
            if (abstractC2638jEA1H2.A0H.hasFocusable()) {
                return abstractC2638jEA1H2.A0H;
            }
        }
        for (int iMin = Math.min(iA03, i) - 1; iMin >= 0 && (abstractC2638jEA1H = A1H(iMin)) != null; iMin--) {
            if (abstractC2638jEA1H.A0H.hasFocusable()) {
                return abstractC2638jEA1H.A0H;
            }
        }
        return null;
    }

    private final AbstractC2638jE A0E(long j) {
        if (this.A04 == null || !this.A04.A0O()) {
            return null;
        }
        int iA06 = this.A01.A06();
        AbstractC2638jE abstractC2638jE = null;
        for (int i = 0; i < iA06; i++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A0A(i));
            if (abstractC2638jEA0F != null && !abstractC2638jEA0F.A0n()) {
                long jA0V = abstractC2638jEA0F.A0V();
                String[] strArr = A19;
                if (strArr[3].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A19;
                strArr2[2] = "zZZE93";
                strArr2[7] = "VhF552wVYFMR";
                if (jA0V != j) {
                    continue;
                } else {
                    if (!this.A01.A0K(abstractC2638jEA0F.A0H)) {
                        return abstractC2638jEA0F;
                    }
                    abstractC2638jE = abstractC2638jEA0F;
                }
            }
        }
        return abstractC2638jE;
    }

    public static AbstractC2638jE A0F(View view) {
        if (view == null) {
            return null;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[6] = "BAOGG7B6SgQWpjs0haC4kmkQlPV7A4k9";
        strArr[4] = "PAhaNRNZ3VZ1U75Bha3wwWQKZTmx8jYI";
        return ((C2621ix) layoutParams).A00;
    }

    private final AbstractC2638jE A0G(View view) {
        View viewA1G = A1G(view);
        if (viewA1G == null) {
            return null;
        }
        return A1K(viewA1G);
    }

    public static C7O A0H(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        boolean z = view instanceof C7O;
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        A19[1] = "St3OXKQiThZ0lO5vTnfaG6NXMltPJG5W";
        if (z) {
            return (C7O) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            C7O c7oA0H = A0H(viewGroup.getChildAt(i));
            if (c7oA0H != null) {
                return c7oA0H;
            }
        }
        return null;
    }

    public static String A0I(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A18, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0J() {
        A0T();
        setScrollState(0);
    }

    private void A0K() {
        int i = this.A0P;
        this.A0P = 0;
        if (i != 0) {
            boolean zA1x = A1x();
            String[] strArr = A19;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[3] = "eU2cwXbbXfV7oR8qPBCYPw";
            strArr2[0] = "cj1lHsGs8Y";
            if (zA1x) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(2048);
                AbstractC2558hu.A01(accessibilityEventObtain, i);
                sendAccessibilityEventUnchecked(accessibilityEventObtain);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:28:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:55:0x01a1 A[PHI: r1
  0x01a1: PHI (r1v9 com.facebook.ads.redexgen.X.jE) = (r1v8 com.facebook.ads.redexgen.X.jE), (r1v12 com.facebook.ads.redexgen.X.jE) binds: [B:53:0x019e, B:50:0x0186] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:57:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:59:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:62:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:63:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c3 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:0x0188 A[SYNTHETIC] */
    private void A0L() {
        AbstractC2638jE abstractC2638jEA0F;
        int iA06;
        boolean zA0v;
        C2615ir c2615irA0F;
        this.A0s.A04(1);
        A1q(this.A0s);
        this.A0s.A0A = false;
        A1N();
        this.A0t.A06();
        A1O();
        A0P();
        A0U();
        this.A0s.A0E = this.A0s.A0C && this.A0H;
        this.A0H = false;
        this.A0G = false;
        this.A0s.A09 = this.A0s.A0B;
        this.A0s.A03 = this.A04.A0B();
        A0y(this.A14);
        if (this.A0s.A0C) {
            int iA05 = this.A01.A05();
            for (int i = 0; i < iA05; i++) {
                AbstractC2638jE abstractC2638jEA0F2 = A0F(this.A01.A09(i));
                boolean zA0s = abstractC2638jEA0F2.A0s();
                String[] strArr = A19;
                if (strArr[2].length() != strArr[7].length()) {
                    A19[5] = "UNYHKTM9Pgc2Q8zoabZHHBhpghLQMYt4";
                    if (!zA0s) {
                        boolean zA0m = abstractC2638jEA0F2.A0m();
                        String[] strArr2 = A19;
                        if (strArr2[2].length() != strArr2[7].length()) {
                            A19[5] = "yAYMfY7gQPsOXL0bw1Y8FO5LYSWRNpHN";
                            if (zA0m) {
                                AbstractC2608ik abstractC2608ik = this.A04;
                                if (A19[5].charAt(2) != 'Y') {
                                    String[] strArr3 = A19;
                                    strArr3[2] = "S1msfb";
                                    strArr3[7] = "DqMDNTpz3t0S";
                                    if (abstractC2608ik.A0O()) {
                                        this.A0t.A0F(abstractC2638jEA0F2, this.A05.A0F(this.A0s, abstractC2638jEA0F2, AbstractC2616is.A06(abstractC2638jEA0F2), abstractC2638jEA0F2.A0W()));
                                        if (!this.A0s.A0E && abstractC2638jEA0F2.A0q() && !abstractC2638jEA0F2.A0n() && !abstractC2638jEA0F2.A0s() && !abstractC2638jEA0F2.A0m()) {
                                            long jA0C = A0C(abstractC2638jEA0F2);
                                            C2646jM c2646jM = this.A0t;
                                            if (A19[1].length() == 32) {
                                                String[] strArr4 = A19;
                                                strArr4[3] = "VKmUie50Iu1ZqeQWLORu5w";
                                                strArr4[0] = "PYciOOvrvR";
                                                c2646jM.A08(jA0C, abstractC2638jEA0F2);
                                            }
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    String[] strArr5 = A19;
                                    strArr5[6] = "3GcQR0gwPdJ7qG9NsafqkCoBzG49WZbm";
                                    strArr5[4] = "xwZbJMHEvrrw2fWE8anB3sW9hLiJiwUw";
                                    if (abstractC2608ik.A0O()) {
                                        this.A0t.A0F(abstractC2638jEA0F2, this.A05.A0F(this.A0s, abstractC2638jEA0F2, AbstractC2616is.A06(abstractC2638jEA0F2), abstractC2638jEA0F2.A0W()));
                                        if (!this.A0s.A0E) {
                                            continue;
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            } else {
                                this.A0t.A0F(abstractC2638jEA0F2, this.A05.A0F(this.A0s, abstractC2638jEA0F2, AbstractC2616is.A06(abstractC2638jEA0F2), abstractC2638jEA0F2.A0W()));
                                if (!this.A0s.A0E) {
                                    continue;
                                }
                            }
                        }
                    }
                }
                throw new RuntimeException();
            }
        }
        if (this.A0s.A0B) {
            A0i();
            boolean z = this.A0s.A0D;
            this.A0s.A0D = false;
            this.A06.A2Z(this.A0r, this.A0s);
            this.A0s.A0D = z;
            for (int i2 = 0; i2 < this.A01.A05(); i2++) {
                C2584iK c2584iK = this.A01;
                if (A19[1].length() != 32) {
                    String[] strArr6 = A19;
                    strArr6[2] = "4lQmW8";
                    strArr6[7] = "2Uq8uzi7rIEU";
                    abstractC2638jEA0F = A0F(c2584iK.A09(i2));
                    if (!abstractC2638jEA0F.A0s()) {
                        if (!this.A0t.A0I(abstractC2638jEA0F)) {
                            iA06 = AbstractC2616is.A06(abstractC2638jEA0F);
                            zA0v = abstractC2638jEA0F.A0v(8192);
                            if (!zA0v) {
                                iA06 |= 4096;
                            }
                            c2615irA0F = this.A05.A0F(this.A0s, abstractC2638jEA0F, iA06, abstractC2638jEA0F.A0W());
                            if (zA0v) {
                                A1r(abstractC2638jEA0F, c2615irA0F);
                            } else {
                                this.A0t.A0D(abstractC2638jEA0F, c2615irA0F);
                            }
                        }
                    }
                } else {
                    A19[1] = "EzPEwBDGhSnYyJadD6vqsk9WPl8azgQD";
                    abstractC2638jEA0F = A0F(c2584iK.A09(i2));
                    if (!abstractC2638jEA0F.A0s()) {
                        if (!this.A0t.A0I(abstractC2638jEA0F)) {
                            iA06 = AbstractC2616is.A06(abstractC2638jEA0F);
                            zA0v = abstractC2638jEA0F.A0v(8192);
                            if (!zA0v) {
                                iA06 |= 4096;
                            }
                            c2615irA0F = this.A05.A0F(this.A0s, abstractC2638jEA0F, iA06, abstractC2638jEA0F.A0W());
                            if (zA0v) {
                                A1r(abstractC2638jEA0F, c2615irA0F);
                            } else {
                                this.A0t.A0D(abstractC2638jEA0F, c2615irA0F);
                            }
                        }
                    }
                }
            }
            A0X();
        } else {
            A0X();
        }
        A1P();
        A1w(false);
        this.A0s.A04 = 2;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x007a  */
    private void A0M() {
        boolean z;
        A1N();
        A1O();
        this.A0s.A04(6);
        this.A00.A0G();
        this.A0s.A03 = this.A04.A0B();
        this.A0s.A00 = 0;
        this.A0s.A09 = false;
        this.A06.A2Z(this.A0r, this.A0s);
        this.A0s.A0D = false;
        this.A0j = null;
        C2635jB c2635jB = this.A0s;
        if (this.A0s.A0C) {
            AbstractC2616is abstractC2616is = this.A05;
            String[] strArr = A19;
            if (strArr[3].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[6] = "QyMu0uKDVMcIUQ2WaaKkjpUJvINNzfF4";
            strArr2[4] = "jnZHkwnP1Z9tC9uQsacmbdRp3FaoK01F";
            if (abstractC2616is != null) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        c2635jB.A0C = z;
        C2635jB c2635jB2 = this.A0s;
        if (A19[1].length() != 32) {
            c2635jB2.A04 = 4;
            A1P();
            A1w(false);
        } else {
            A19[1] = "3IsVIAoReRfPbfS1EeUcjIwVgXkj1JVv";
            c2635jB2.A04 = 4;
            A1P();
            A1w(false);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0060  */
    /* JADX WARN: Code duplicated, block: B:14:0x0076  */
    /* JADX WARN: Code duplicated, block: B:17:0x0086  */
    /* JADX WARN: Code duplicated, block: B:20:0x00b3  */
    private void A0N() {
        ArrayList<AbstractC2638jE> arrayList;
        String[] strArr;
        this.A0s.A04(4);
        A1N();
        A1O();
        this.A0s.A04 = 1;
        if (!this.A0s.A0C) {
            this.A06.A2W(this.A0r);
            this.A0s.A05 = this.A0s.A03;
            this.A0C = false;
            this.A0s.A0C = false;
            this.A0s.A0B = false;
            this.A06.A09 = false;
            if (this.A0r.A02 != null) {
                arrayList = this.A0r.A02;
                strArr = A19;
                if (strArr[3].length() != strArr[0].length()) {
                    A19[1] = "DxhhwSm2KO29M0snTVs4N8QFyNW6c8YZ";
                    arrayList.clear();
                }
            }
            if (this.A06.A08) {
                this.A06.A00 = 0;
                this.A06.A08 = false;
                this.A0r.A0P();
            }
            this.A06.A2d(this.A0s);
            A1P();
            A1w(false);
            this.A0t.A06();
            if (A12(this.A14[0], this.A14[1])) {
                A1f(0, 0);
            }
            A0Q();
            A0S();
            return;
        }
        for (int iA05 = this.A01.A05() - 1; iA05 >= 0; iA05--) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A09(iA05));
            if (!abstractC2638jEA0F.A0s()) {
                long jA0C = A0C(abstractC2638jEA0F);
                C2615ir c2615irA0E = this.A05.A0E(this.A0s, abstractC2638jEA0F);
                AbstractC2638jE abstractC2638jEA05 = this.A0t.A05(jA0C);
                if (abstractC2638jEA05 == null || abstractC2638jEA05.A0s()) {
                    this.A0t.A0E(abstractC2638jEA0F, c2615irA0E);
                } else {
                    boolean zA0H = this.A0t.A0H(abstractC2638jEA05);
                    C2646jM c2646jM = this.A0t;
                    if (A19[5].charAt(2) == 'Y') {
                        A19[1] = "oIS3LUWJBkP0D1bim3OID749wsN9UxnV";
                        boolean zA0H2 = c2646jM.A0H(abstractC2638jEA0F);
                        if (zA0H && abstractC2638jEA05 == abstractC2638jEA0F) {
                            this.A0t.A0E(abstractC2638jEA0F, c2615irA0E);
                        } else {
                            C2615ir c2615irA04 = this.A0t.A04(abstractC2638jEA05);
                            this.A0t.A0E(abstractC2638jEA0F, c2615irA0E);
                            C2615ir c2615irA03 = this.A0t.A03(abstractC2638jEA0F);
                            if (c2615irA04 == null) {
                                A0m(jA0C, abstractC2638jEA0F, abstractC2638jEA05);
                            } else {
                                A0u(abstractC2638jEA05, abstractC2638jEA0F, c2615irA04, c2615irA03, zA0H, zA0H2);
                            }
                        }
                    }
                }
            }
        }
        this.A0t.A0G(this.A12);
        this.A06.A2W(this.A0r);
        this.A0s.A05 = this.A0s.A03;
        this.A0C = false;
        this.A0s.A0C = false;
        this.A0s.A0B = false;
        this.A06.A09 = false;
        if (this.A0r.A02 != null) {
            arrayList = this.A0r.A02;
            strArr = A19;
            if (strArr[3].length() != strArr[0].length()) {
                A19[1] = "DxhhwSm2KO29M0snTVs4N8QFyNW6c8YZ";
                arrayList.clear();
            }
        }
        if (this.A06.A08) {
            this.A06.A00 = 0;
            this.A06.A08 = false;
            this.A0r.A0P();
        }
        this.A06.A2d(this.A0s);
        A1P();
        A1w(false);
        this.A0t.A06();
        if (A12(this.A14[0], this.A14[1])) {
            A1f(0, 0);
        }
        A0Q();
        A0S();
        return;
        throw new RuntimeException();
    }

    private void A0O() {
        this.A01 = new C2584iK(new J1(this));
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0057  */
    private void A0P() {
        boolean z;
        if (this.A0C) {
            this.A00.A0I();
            this.A06.A2e(this);
        }
        if (A10()) {
            this.A00.A0H();
        } else {
            this.A00.A0G();
        }
        boolean z2 = false;
        boolean z3 = this.A0G || this.A0H;
        C2635jB c2635jB = this.A0s;
        if (this.A0D && this.A05 != null && (this.A0C || z3 || this.A06.A09)) {
            boolean z4 = this.A0C;
            if (A19[5].charAt(2) != 'Y') {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[6] = "q3lLGfTGOOnJqHZydaTklLew08TAvgTY";
            strArr[4] = "cayAc0YyiA2wrQyaXaOul4VyYlz5tKdZ";
            if (!z4 || this.A04.A0O()) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        c2635jB.A0C = z;
        C2635jB c2635jB2 = this.A0s;
        if (this.A0s.A0C && z3 && !this.A0C && A10()) {
            z2 = true;
        }
        c2635jB2.A0B = z2;
        if (A19[1].length() == 32) {
            A19[5] = "vAY5NMbknnGVxibfJ54Fdf4KbFDo9MxQ";
            return;
        }
        String[] strArr2 = A19;
        strArr2[2] = "gWU7AH";
        strArr2[7] = "O2IXTNL1mXfE";
    }

    private void A0Q() {
        View viewFindViewById;
        if (!this.A0o || this.A04 == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        boolean zIsFocused = isFocused();
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        A19[5] = "GSYhD7ljhsNq0QcPBhSV8ATJlhol3xt1";
        if (!zIsFocused) {
            View focusedChild = getFocusedChild();
            if (!A1G || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.A01.A0K(focusedChild)) {
                    return;
                }
            } else if (this.A01.A05() == 0) {
                requestFocus();
                return;
            }
        }
        AbstractC2638jE abstractC2638jEA0E = null;
        if (this.A0s.A08 != -1 && this.A04.A0O()) {
            abstractC2638jEA0E = A0E(this.A0s.A08);
        }
        View viewA0D = null;
        if (abstractC2638jEA0E != null && !this.A01.A0K(abstractC2638jEA0E.A0H) && abstractC2638jEA0E.A0H.hasFocusable()) {
            viewA0D = abstractC2638jEA0E.A0H;
        } else if (this.A01.A05() > 0) {
            viewA0D = A0D();
        }
        if (viewA0D != null) {
            if (this.A0s.A02 != -1 && (viewFindViewById = viewA0D.findViewById(this.A0s.A02)) != null && viewFindViewById.isFocusable()) {
                viewA0D = viewFindViewById;
            }
            viewA0D.requestFocus();
        }
    }

    private void A0R() {
        boolean zIsFinished = false;
        if (this.A0a != null) {
            this.A0a.onRelease();
            zIsFinished = this.A0a.isFinished();
        }
        if (this.A0c != null) {
            this.A0c.onRelease();
            zIsFinished |= this.A0c.isFinished();
        }
        if (this.A0b != null) {
            this.A0b.onRelease();
            zIsFinished |= this.A0b.isFinished();
        }
        if (this.A0Z != null) {
            this.A0Z.onRelease();
            zIsFinished |= this.A0Z.isFinished();
        }
        if (zIsFinished) {
            AbstractC2540hb.A07(this);
        }
    }

    private void A0S() {
        this.A0s.A08 = -1L;
        this.A0s.A01 = -1;
        this.A0s.A02 = -1;
    }

    private void A0T() {
        if (this.A0Y != null) {
            this.A0Y.clear();
        }
        A1b(0);
        A0R();
    }

    private void A0U() {
        int iA0R;
        View focusedChild = null;
        if (this.A0o && hasFocus() && this.A04 != null) {
            focusedChild = getFocusedChild();
        }
        AbstractC2638jE abstractC2638jEA0G = focusedChild == null ? null : A0G(focusedChild);
        if (abstractC2638jEA0G == null) {
            A0S();
            return;
        }
        this.A0s.A08 = this.A04.A0O() ? abstractC2638jEA0G.A0V() : -1L;
        C2635jB c2635jB = this.A0s;
        if (this.A0C) {
            iA0R = -1;
        } else {
            iA0R = abstractC2638jEA0G.A0n() ? abstractC2638jEA0G.A01 : abstractC2638jEA0G.A0R();
        }
        c2635jB.A01 = iA0R;
        this.A0s.A02 = A0B(abstractC2638jEA0G.A0H);
    }

    private void A0V() {
        this.A08.A08();
        if (this.A06 != null) {
            this.A06.A27();
        }
    }

    public static void A0W() {
        A18 = new byte[]{-74, -74, -96, -74, -20, -1, -5, Ascii.CR, -74, -34, 5, 2, -6, -5, 8, -74, -56, -48, -100, -33, -35, -22, -22, -21, -16, -100, -34, -31, -100, -30, -21, -15, -22, -32, -100, -34, -15, -16, -100, -27, -16, -100, -27, -17, -100, -22, -31, -33, -31, -17, -17, -35, -18, -11, -100, -30, -21, -18, -100, 126, -57, -47, 126, -65, -54, -48, -61, -65, -62, -41, 126, -65, -46, -46, -65, -63, -58, -61, -62, 126, -46, -51, 126, -65, 126, -80, -61, -63, -41, -63, -54, -61, -48, -76, -57, -61, -43, -104, -12, Base64.padSymbol, 71, -12, 66, 67, 72, -12, 53, -12, 56, Base64.padSymbol, 70, 57, 55, 72, -12, 55, 60, Base64.padSymbol, SignedBytes.MAX_POWER_OF_TWO, 56, -12, 67, 58, -12, -93, -15, -14, -9, -93, -23, -14, -8, -15, -25, -79, -93, -57, -20, -25, -93, -28, -15, -4, -93, -48, -14, -9, -20, -14, -15, -56, -7, -24, -15, -9, -10, -93, -22, -24, -9, -93, -10, -18, -20, -13, -13, -24, -25, -62, -45, -57, 8, Ascii.VT, 8, Ascii.ETB, Ascii.ESC, Ascii.FF, Ascii.EM, -31, -117, 127, -62, -50, -51, -45, -60, -41, -45, -103, -56, -68, 8, -3, Ascii.NAK, Ascii.VT, 17, Ascii.DLE, -42, 9, -18, 67, 65, 55, 60, 53, -18, 50, 51, 52, 47, 67, 58, 66, -18, 68, 47, 58, 67, 51, -67, -37, -26, -26, -33, -34, -102, -20, -33, -25, -23, -16, -33, -66, -33, -18, -37, -35, -30, -33, -34, -48, -29, -33, -15, -102, -15, -29, -18, -30, -102, -37, -102, -16, -29, -33, -15, -102, -15, -30, -29, -35, -30, -102, -29, -19, -102, -24, -23, -18, -102, -32, -26, -37, -31, -31, -33, -34, -102, -37, -19, -102, -18, -25, -22, -102, -34, -33, -18, -37, -35, -30, -33, -34, -88, -80, -50, -37, -37, -36, -31, -115, -50, -47, -47, -115, -42, -31, -46, -38, -115, -47, -46, -48, -36, -33, -50, -31, -42, -36, -37, -115, -47, -30, -33, -42, -37, -44, -115, -50, -115, -32, -48, -33, -36, -39, -39, -115, -115, -36, -33, -115, -39, -50, -26, -36, -30, -31, -55, -25, -12, -12, -11, -6, -90, -23, -25, -14, -14, -90, -6, -18, -17, -7, -90, -13, -21, -6, -18, -11, -22, -90, -17, -12, -90, -25, -90, -7, -23, -8, -11, -14, -14, -90, -23, -25, -14, -14, -24, -25, -23, -15, -76, -90, -39, -23, -8, -11, -14, -14, -90, -23, -25, -14, -14, -24, -25, -23, -15, -7, -90, -13, -17, -19, -18, -6, -24, -21, -90, -8, -5, -12, -90, -22, -5, -8, -17, -12, -19, -90, -25, -90, -13, -21, -25, -7, -5, -8, -21, -90, -84, -90, -14, -25, -1, -11, -5, -6, -90, -10, -25, -7, -7, -90, -3, -18, -21, -8, -21, -90, -1, -11, -5, -90, -23, -25, -12, -12, -11, -6, -90, -23, -18, -25, -12, -19, -21, -90, -6, -18, -21, -40, -21, -23, -1, -23, -14, -21, -8, -36, -17, -21, -3, -90, -22, -25, -6, -25, -76, -90, -57, -12, -1, -90, -13, -21, -6, -18, -11, -22, -90, -23, -25, -14, -14, -90, -6, -18, -25, -6, -90, -13, -17, -19, -18, -6, -90, -23, -18, -25, -12, -19, -21, -90, -6, -18, -21, -90, -7, -6, -8, -5, -23, -6, -5, -8, -21, -11, -20, -90, -6, -18, -21, -90, -40, -21, -23, -1, -23, -14, -21, -8, -36, -17, -21, -3, -90, -11, -8, -90, -6, -18, -21, -90, -25, -22, -25, -10, -6, -21, -8, -90, -23, -11, -12, -6, -21, -12, -6, -7, -90, -7, -18, -11, -5, -14, -22, -90, -24, -21, -90, -10, -11, -7, -6, -10, -11, -12, -21, -22, -90, -6, -11, -6, -18, -21, -90, -12, -21, -2, -6, -90, -20, -8, -25, -13, -21, -76, -28, 2, Ascii.SI, Ascii.SI, Ascii.DLE, Ascii.NAK, -63, 4, 2, Ascii.CR, Ascii.CR, -63, Ascii.NAK, 9, 10, Ascii.DC4, -63, Ascii.SO, 6, Ascii.NAK, 9, Ascii.DLE, 5, -63, Ascii.CAN, 9, 10, Ascii.CR, 6, -63, -13, 6, 4, Ascii.SUB, 4, Ascii.CR, 6, 19, -9, 10, 6, Ascii.CAN, -63, 10, Ascii.DC4, -63, 4, Ascii.DLE, Ascii.SO, 17, Ascii.SYN, Ascii.NAK, 10, Ascii.SI, 8, -63, 2, -63, Ascii.CR, 2, Ascii.SUB, Ascii.DLE, Ascii.SYN, Ascii.NAK, -63, Ascii.DLE, 19, -63, Ascii.DC4, 4, 19, Ascii.DLE, Ascii.CR, Ascii.CR, 10, Ascii.SI, 8, -35, -5, 8, 8, 9, Ascii.SO, -70, 0, 6, 3, 8, 1, -70, 17, 3, Ascii.SO, 2, 9, Ascii.SI, Ascii.SO, -70, -5, -70, -26, -5, 19, 9, Ascii.SI, Ascii.SO, -25, -5, 8, -5, 1, -1, Ascii.FF, -70, Ascii.CR, -1, Ascii.SO, -56, -70, -35, -5, 6, 6, -70, Ascii.CR, -1, Ascii.SO, -26, -5, 19, 9, Ascii.SI, Ascii.SO, -25, -5, 8, -5, 1, -1, Ascii.FF, -70, 17, 3, Ascii.SO, 2, -70, -5, -70, 8, 9, 8, -57, 8, Ascii.SI, 6, 6, -70, -5, Ascii.FF, 1, Ascii.SI, 7, -1, 8, Ascii.SO, -56, -33, -3, 10, 10, Ascii.VT, Ascii.DLE, -68, Ascii.SI, -1, Ascii.SO, Ascii.VT, 8, 8, -68, Ascii.DLE, Ascii.VT, -68, Ascii.FF, Ascii.VT, Ascii.SI, 5, Ascii.DLE, 5, Ascii.VT, 10, -68, -3, -68, -24, -3, Ascii.NAK, Ascii.VT, 17, Ascii.DLE, -23, -3, 10, -3, 3, 1, Ascii.SO, -68, Ascii.SI, 1, Ascii.DLE, -54, -68, -33, -3, 8, 8, -68, Ascii.SI, 1, Ascii.DLE, -24, -3, Ascii.NAK, Ascii.VT, 17, Ascii.DLE, -23, -3, 10, -3, 3, 1, Ascii.SO, -68, 19, 5, Ascii.DLE, 4, -68, -3, -68, 10, Ascii.VT, 10, -55, 10, 17, 8, 8, -68, -3, Ascii.SO, 3, 17, 9, 1, 10, Ascii.DLE, -54, -29, 1, Ascii.SO, Ascii.SO, Ascii.SI, Ascii.DC4, -64, 19, 3, Ascii.DC2, Ascii.SI, Ascii.FF, Ascii.FF, -64, Ascii.ETB, 9, Ascii.DC4, 8, Ascii.SI, Ascii.NAK, Ascii.DC4, -64, 1, -64, -20, 1, Ascii.EM, Ascii.SI, Ascii.NAK, Ascii.DC4, -19, 1, Ascii.SO, 1, 7, 5, Ascii.DC2, -64, 19, 5, Ascii.DC4, -50, -64, -29, 1, Ascii.FF, Ascii.FF, -64, 19, 5, Ascii.DC4, -20, 1, Ascii.EM, Ascii.SI, Ascii.NAK, Ascii.DC4, -19, 1, Ascii.SO, 1, 7, 5, Ascii.DC2, -64, Ascii.ETB, 9, Ascii.DC4, 8, -64, 1, -64, Ascii.SO, Ascii.SI, Ascii.SO, -51, Ascii.SO, Ascii.NAK, Ascii.FF, Ascii.FF, -64, 1, Ascii.DC2, 7, Ascii.NAK, Ascii.CR, 5, Ascii.SO, Ascii.DC4, -50, -19, Ascii.VT, Ascii.CAN, Ascii.CAN, Ascii.EM, Ascii.RS, -54, Ascii.GS, Ascii.ETB, Ascii.EM, Ascii.EM, Ascii.RS, Ascii.DC2, -54, Ascii.GS, Ascii.CR, Ascii.FS, Ascii.EM, Ascii.SYN, Ascii.SYN, -54, 33, 19, 
        Ascii.RS, Ascii.DC2, Ascii.EM, Ascii.US, Ascii.RS, -54, Ascii.VT, -54, -10, Ascii.VT, 35, Ascii.EM, Ascii.US, Ascii.RS, -9, Ascii.VT, Ascii.CAN, Ascii.VT, 17, Ascii.SI, Ascii.FS, -54, Ascii.GS, Ascii.SI, Ascii.RS, -40, -54, -19, Ascii.VT, Ascii.SYN, Ascii.SYN, -54, Ascii.GS, Ascii.SI, Ascii.RS, -10, Ascii.VT, 35, Ascii.EM, Ascii.US, Ascii.RS, -9, Ascii.VT, Ascii.CAN, Ascii.VT, 17, Ascii.SI, Ascii.FS, -54, 33, 19, Ascii.RS, Ascii.DC2, -54, Ascii.VT, -54, Ascii.CAN, Ascii.EM, Ascii.CAN, -41, Ascii.CAN, Ascii.US, Ascii.SYN, Ascii.SYN, -54, Ascii.VT, Ascii.FS, 17, Ascii.US, Ascii.ETB, Ascii.SI, Ascii.CAN, Ascii.RS, -40, -53, -10, -89, -11, -10, -5, -89, -6, -20, -5, -45, -24, 0, -10, -4, -5, -51, -7, -10, 1, -20, -11, -89, -16, -11, -89, -13, -24, 0, -10, -4, -5, -89, -10, -7, -89, -6, -22, -7, -10, -13, -13, -14, Ascii.US, Ascii.US, Ascii.FS, Ascii.US, -51, Ascii.GS, Ascii.US, Ascii.FS, Ascii.DLE, Ascii.DC2, 32, 32, Ascii.SYN, Ascii.ESC, Ascii.DC4, -51, 32, Ascii.DLE, Ascii.US, Ascii.FS, Ascii.EM, Ascii.EM, -24, -51, Ascii.GS, Ascii.FS, Ascii.SYN, Ascii.ESC, 33, Ascii.DC2, Ascii.US, -51, Ascii.SYN, Ascii.ESC, 17, Ascii.DC2, 37, -51, 19, Ascii.FS, Ascii.US, -51, Ascii.SYN, 17, -51, -55, -34, -10, -20, -14, -15, -54, -34, -21, -34, -28, -30, -17, -99, -52, -19, -98, -33, -30, -33, -18, -14, -29, -16, -98, -33, -14, -14, -33, -31, -26, -29, -30, -71, -98, -15, -23, -25, -18, -18, -25, -20, -27, -98, -22, -33, -9, -19, -13, -14, -3, Ascii.RS, -49, Ascii.ESC, Ascii.DLE, 40, Ascii.RS, 36, 35, -49, Ascii.FS, Ascii.DLE, Ascii.GS, Ascii.DLE, Ascii.SYN, Ascii.DC4, 33, -49, Ascii.DLE, 35, 35, Ascii.DLE, Ascii.DC2, Ascii.ETB, Ascii.DC4, 19, -22, -49, 34, Ascii.SUB, Ascii.CAN, Ascii.US, Ascii.US, Ascii.CAN, Ascii.GS, Ascii.SYN, -49, Ascii.ESC, Ascii.DLE, 40, Ascii.RS, 36, 35, 3, 37, 34, Ascii.NAK, Ascii.US, Ascii.CAN, 32, -45, 42, Ascii.ESC, Ascii.FS, Ascii.US, Ascii.CAN, -45, 32, Ascii.DC4, 39, Ascii.SYN, Ascii.ESC, Ascii.FS, 33, Ascii.SUB, -45, Ascii.SYN, Ascii.ESC, Ascii.DC4, 33, Ascii.SUB, Ascii.CAN, Ascii.ETB, -45, 41, Ascii.FS, Ascii.CAN, 42, -45, Ascii.ESC, 34, Ascii.US, Ascii.ETB, Ascii.CAN, 37, 38, -45, 42, Ascii.FS, 39, Ascii.ESC, -45, 39, Ascii.ESC, Ascii.CAN, -45, 33, Ascii.CAN, 42, 34, 33, Ascii.CAN, 38, -31, -45, 7, Ascii.ESC, Ascii.CAN, -45, 35, 37, Ascii.CAN, -32, Ascii.US, Ascii.DC4, 44, 34, 40, 39, -45, Ascii.FS, 33, Ascii.EM, 34, 37, 32, Ascii.DC4, 39, Ascii.FS, 34, 33, -45, Ascii.EM, 34, 37, -45, 39, Ascii.ESC, Ascii.CAN, -45, Ascii.SYN, Ascii.ESC, Ascii.DC4, 33, Ascii.SUB, Ascii.CAN, -45, Ascii.ESC, 34, Ascii.US, Ascii.ETB, Ascii.CAN, 37, -45, -3, 1, -53, -15, 32, Ascii.ETB, Ascii.ETB, -12, Ascii.EM, 33, Ascii.FF, Ascii.ETB, Ascii.DC4, Ascii.SI, Ascii.FF, Ascii.US, Ascii.DLE, -7, -3, -57, -10, Ascii.NAK, -13, 8, 32, Ascii.SYN, Ascii.FS, Ascii.ESC, -14, -10, -64, -16, 1, Ascii.DC2, Ascii.DC4, 9, 1, Ascii.FF, -23, Ascii.SO, Ascii.SYN, 1, Ascii.FF, 9, 4, 1, Ascii.DC4, 5, -10, -6, -60, -9, 7, Ascii.SYN, 19, Ascii.DLE, Ascii.DLE, 1, Ascii.DC4, Ascii.DC2, 40, Ascii.DC2, Ascii.ESC, Ascii.DC4, 33, 5, Ascii.CAN, Ascii.DC4, 38, -72, -53, -55, -33, -55, -46, -53, -40, -68, -49, -53, -35, -122, -54, -43, -53, -39, -122, -44, -43, -38, -122, -39, -37, -42, -42, -43, -40, -38, -122, -39, -55, -40, -43, -46, -46, -49, -44, -51, -122, -38, -43, -122, -57, -44, -122, -57, -56, -39, -43, -46, -37, -38, -53, -122, -42, -43, -39, -49, -38, -49, -43, -44, -108, -122, -69, -39, -53, -122, -39, -55, -40, -43, -46, -46, -70, -43, -74, -43, -39, -49, -38, -49, -43, -44, -122, -49, -44, -39, -38, -53, -57, -54, Ascii.ESC, 46, 44, 66, 44, 53, 46, 59, Ascii.US, 50, 46, SignedBytes.MAX_POWER_OF_TWO, -23, 49, 42, 60, -23, 55, 56, -23, Ascii.NAK, 42, 66, 56, 62, Base64.padSymbol, Ascii.SYN, 42, 55, 42, 48, 46, 59, -10, Ascii.EM, 17, -62, 6, Ascii.VT, 8, 8, 7, Ascii.DC4, 7, Ascii.DLE, Ascii.SYN, -62, -8, Ascii.VT, 7, Ascii.EM, -22, 17, Ascii.SO, 6, 7, Ascii.DC4, Ascii.NAK, -62, 10, 3, Ascii.CAN, 7, -62, Ascii.SYN, 10, 7, -62, Ascii.NAK, 3, Ascii.SI, 7, -62, 5, 10, 3, Ascii.DLE, 9, 7, -62, -21, -26, -48, -62, -10, 10, Ascii.VT, Ascii.NAK, -62, Ascii.SI, Ascii.VT, 9, 10, Ascii.SYN, -62, 10, 3, Ascii.DC2, Ascii.DC2, 7, Ascii.DLE, -62, 6, Ascii.ETB, 7, -62, Ascii.SYN, 17, -62, Ascii.VT, Ascii.DLE, 5, 17, Ascii.DLE, Ascii.NAK, Ascii.VT, Ascii.NAK, Ascii.SYN, 7, Ascii.DLE, Ascii.SYN, -62, -29, 6, 3, Ascii.DC2, Ascii.SYN, 7, Ascii.DC4, -62, Ascii.ETB, Ascii.DC2, 6, 3, Ascii.SYN, 7, -62, 7, Ascii.CAN, 7, Ascii.DLE, Ascii.SYN, Ascii.NAK, -62, 17, Ascii.DC4, -62, Ascii.VT, 8, -62, Ascii.SYN, 10, 7, -62, -18, 3, Ascii.ESC, 17, Ascii.ETB, Ascii.SYN, -17, 3, Ascii.DLE, 3, 9, 7, Ascii.DC4, -62, Ascii.SO, 3, Ascii.ESC, Ascii.NAK, -62, 17, Ascii.ETB, Ascii.SYN, -62, Ascii.SYN, 10, 7, -62, Ascii.NAK, 3, Ascii.SI, 7, -62, -8, Ascii.VT, 7, Ascii.EM, -62, Ascii.SI, Ascii.ETB, Ascii.SO, Ascii.SYN, Ascii.VT, Ascii.DC2, Ascii.SO, 7, -62, Ascii.SYN, Ascii.VT, Ascii.SI, 7, Ascii.NAK, -48, -84, -62, -8, Ascii.VT, 7, Ascii.EM, -22, 17, Ascii.SO, 6, 7, Ascii.DC4, -62, -45, -36, -31, 4, -4, -83, -15, -10, -13, -13, -14, -1, -14, -5, 1, -83, -29, -10, -14, 4, -43, -4, -7, -15, -14, -1, 0, -83, -11, -18, 3, -14, -83, 1, -11, -14, -83, 0, -18, -6, -14, -83, 0, 1, -18, -17, -7, -14, -83, -42, -47, -69, -83, -32, 1, -18, -17, -7, -14, -83, -42, -47, 0, -83, -10, -5, -83, 6, -4, 2, -1, -83, -18, -15, -18, -3, 1, -14, -1, -83, -38, -30, -32, -31, -83, -49, -46, -83, 2, -5, -10, -2, 2, -14, -83, -18, -5, -15, -83, -32, -43, -36, -30, -39, -47, -83, -37, -36, -31, -83, -16, -11, -18, -5, -12, -14, -69, -105, -83, -29, -10, -14, 4, -43, -4, -7, -15, -14, -1, -83, -66, -57, -4, Ascii.SI, Ascii.VT, Ascii.GS, -58, Ascii.FS, Ascii.RS, Ascii.RS, 32, 46, 46, 36, Ascii.GS, 36, 39, 36, 47, 52, -53, -48, -39, -52, -54, -37, -48, -42, -43, -121, -44, -36, -38, -37, -121, -55, -52, -121, -56, -55, -38, -42, -45, -36, -37, -52, -107, -121, -39, -52, -54, -52, -48, -35, -52, -53, -95, -40, -41, -84, -47, -46, -43, -51, -65, -46, -50, -32, -86, -35, -35, -54, -52, -47, -50, -51, -67, -40, -64, -46, -41, -51, -40, -32, -34, -35, -78, -41, -40, -37, -45, -59, -40, -44, -26, -77, -44, -29, -48, -46, -41, -44, -45, -75, -31, -34, -36, -58, -40, -35, -45, -34, -26, -25, -26, -65, -35, -20, -69, -32, -31, -28, -36, 
        -68, -22, -39, -17, -31, -26, -33, -57, -22, -36, -35, -22, Ascii.DC2, 17, -20, 17, Ascii.ETB, 8, Ascii.NAK, 6, 8, 19, Ascii.ETB, -9, Ascii.DC2, Ascii.CAN, 6, Ascii.VT, -24, Ascii.EM, 8, 17, Ascii.ETB, Ascii.GS, Ascii.SI, Ascii.RS, -3, Ascii.CR, Ascii.FS, Ascii.EM, Ascii.SYN, Ascii.SYN, 19, Ascii.CAN, 17, -2, Ascii.EM, Ascii.US, Ascii.CR, Ascii.DC2, -3, Ascii.SYN, Ascii.EM, Ascii.SUB, -46, -45, -28, -54, Ascii.FF, Ascii.VT, Ascii.SO, -54, Ascii.VT, Ascii.FS, 17, Ascii.US, Ascii.ETB, Ascii.SI, Ascii.CAN, Ascii.RS, -54, Ascii.CR, Ascii.EM, Ascii.CAN, Ascii.GS, Ascii.RS, Ascii.VT, Ascii.CAN, Ascii.RS, -54};
    }

    private final void A0X() {
        int iA06 = this.A01.A06();
        for (int i = 0; i < iA06; i++) {
            C2584iK c2584iK = this.A01;
            String[] strArr = A19;
            if (strArr[3].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[3] = "VFyFJGthyduvDNyVUqu48D";
            strArr2[0] = "uBjdUWzzez";
            AbstractC2638jE abstractC2638jEA0F = A0F(c2584iK.A0A(i));
            if (!abstractC2638jEA0F.A0s()) {
                abstractC2638jEA0F.A0X();
            }
        }
        this.A0r.A0L();
    }

    private final void A0Y() {
        AbstractC2608ik abstractC2608ik = this.A04;
        String strA0I = A0I(1423, 12, 90);
        if (abstractC2608ik == null) {
            Log.e(strA0I, A0I(1176, 36, 41));
            return;
        }
        if (this.A06 == null) {
            Log.e(strA0I, A0I(1212, 43, 90));
            return;
        }
        this.A0s.A0A = false;
        if (this.A0s.A04 == 1) {
            A0L();
            this.A06.A2g(this);
            A0M();
        } else if (!this.A00.A0K() && this.A06.A1e() == getWidth() && this.A06.A1U() == getHeight()) {
            this.A06.A2g(this);
        } else {
            this.A06.A2g(this);
            A0M();
        }
        A0N();
    }

    private final void A0Z() {
        int i;
        for (int size = this.A0w.size() - 1; size >= 0; size--) {
            AbstractC2638jE abstractC2638jE = this.A0w.get(size);
            if (abstractC2638jE.A0H.getParent() == this && !abstractC2638jE.A0s() && (i = abstractC2638jE.A02) != -1) {
                AbstractC2540hb.A09(abstractC2638jE.A0H, i);
                abstractC2638jE.A02 = -1;
            }
        }
        this.A0w.clear();
    }

    private final void A0a() {
        if (this.A0Z != null) {
            return;
        }
        this.A0Z = new EdgeEffect(getContext());
        if (this.A0B) {
            this.A0Z.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            this.A0Z.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    private final void A0b() {
        if (this.A0a != null) {
            return;
        }
        this.A0a = new EdgeEffect(getContext());
        if (!this.A0B) {
            this.A0a.setSize(getMeasuredHeight(), getMeasuredWidth());
            return;
        }
        EdgeEffect edgeEffect = this.A0a;
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int measuredWidth = getMeasuredWidth() - getPaddingLeft();
        String[] strArr = A19;
        if (strArr[2].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A19;
        strArr2[6] = "GMHrLIeJxdXYoHZyaa7kSwSfzExGbrBL";
        strArr2[4] = "0YT1HYXH3vPYSlLI8aOL6WZeFeHH6VHe";
        edgeEffect.setSize(measuredHeight, measuredWidth - getPaddingRight());
    }

    private final void A0c() {
        if (this.A0b != null) {
            return;
        }
        this.A0b = new EdgeEffect(getContext());
        if (this.A0B) {
            this.A0b.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            this.A0b.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    private final void A0d() {
        if (this.A0c != null) {
            return;
        }
        this.A0c = new EdgeEffect(getContext());
        if (this.A0B) {
            this.A0c.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            return;
        }
        EdgeEffect edgeEffect = this.A0c;
        int measuredWidth = getMeasuredWidth();
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[2] = "10JS50";
        strArr[7] = "NY78MD5eAiV9";
        edgeEffect.setSize(measuredWidth, getMeasuredHeight());
    }

    private final void A0e() {
        this.A00 = new JB(new C1656Iv(this));
    }

    private final void A0f() {
        this.A0Z = null;
        this.A0c = null;
        this.A0b = null;
        this.A0a = null;
    }

    private final void A0g() {
        int iA06 = this.A01.A06();
        for (int i = 0; i < iA06; i++) {
            ((C2621ix) this.A01.A0A(i).getLayoutParams()).A01 = true;
        }
        this.A0r.A0N();
    }

    private final void A0h() {
        int iA06 = this.A01.A06();
        for (int i = 0; i < iA06; i++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A0A(i));
            if (abstractC2638jEA0F != null && !abstractC2638jEA0F.A0s()) {
                abstractC2638jEA0F.A0e(6);
            }
        }
        A0g();
        this.A0r.A0O();
    }

    private final void A0i() {
        int iA06 = this.A01.A06();
        for (int i = 0; i < iA06; i++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A0A(i));
            if (!abstractC2638jEA0F.A0s()) {
                abstractC2638jEA0F.A0c();
            }
        }
    }

    private void A0j(float f, float f2, float f3, float f4) {
        boolean z = false;
        if (f2 < 0.0f) {
            A0b();
            AbstractC2575iB.A00(this.A0a, (-f2) / getWidth(), 1.0f - (f3 / getHeight()));
            z = true;
        } else if (f2 > 0.0f) {
            A0c();
            AbstractC2575iB.A00(this.A0b, f2 / getWidth(), f3 / getHeight());
            z = true;
        }
        if (f4 < 0.0f) {
            A0d();
            AbstractC2575iB.A00(this.A0c, (-f4) / getHeight(), f / getWidth());
            z = true;
        } else if (f4 > 0.0f) {
            A0a();
            AbstractC2575iB.A00(this.A0Z, f4 / getHeight(), 1.0f - (f / getWidth()));
            z = true;
        }
        if (!z && f2 == 0.0f && f4 == 0.0f) {
            return;
        }
        AbstractC2540hb.A07(this);
    }

    private final void A0k(int i) {
        AbstractC2620iw abstractC2620iw = this.A06;
        if (this.A0i != null) {
            this.A0i.A0P(this, i);
        }
        List<AbstractC2625j1> list = this.A0m;
        String[] strArr = A19;
        if (strArr[2].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A19;
        strArr2[2] = "mB2qLC";
        strArr2[7] = "mQXIqdAaLius";
        if (list != null) {
            for (int size = this.A0m.size() - 1; size >= 0; size--) {
                this.A0m.get(size).A0P(this, i);
            }
        }
    }

    private final void A0l(int i, int i2, Interpolator interpolator) {
        if (this.A06 == null) {
            Log.e(A0I(1423, 12, 90), A0I(977, 97, 85));
            return;
        }
        boolean z = this.A0I;
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[2] = "pqK8Y9";
        strArr[7] = "UiASdGbGWO9v";
        if (z) {
            return;
        }
        if (!this.A06.A2v()) {
            i = 0;
        }
        if (!this.A06.A2w()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        this.A08.A0D(i, i2, interpolator);
    }

    private void A0m(long j, AbstractC2638jE abstractC2638jE, AbstractC2638jE abstractC2638jE2) {
        int iA05 = this.A01.A05();
        for (int i = 0; i < iA05; i++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A09(i));
            if (abstractC2638jEA0F != abstractC2638jE && A0C(abstractC2638jEA0F) == j) {
                AbstractC2608ik abstractC2608ik = this.A04;
                String strA0I = A0I(1, 17, 65);
                if (abstractC2608ik != null && this.A04.A0O()) {
                    throw new IllegalStateException(A0I(1749, 130, 56) + abstractC2638jEA0F + strA0I + abstractC2638jE + A1L());
                }
                throw new IllegalStateException(A0I(1561, 188, 77) + abstractC2638jEA0F + strA0I + abstractC2638jE + A1L());
            }
        }
        Log.e(A0I(1423, 12, 90), A0I(1255, 111, 94) + abstractC2638jE2 + A0I(18, 41, 39) + abstractC2638jE + A1L());
    }

    private void A0n(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.A0V) {
            int i = actionIndex == 0 ? 1 : 0;
            this.A0V = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.A0S = x;
            this.A0Q = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.A0T = y;
            this.A0R = y;
        }
    }

    public static void A0o(View view, Rect rect) {
        C2621ix c2621ix = (C2621ix) view.getLayoutParams();
        Rect rect2 = c2621ix.A03;
        rect.set((view.getLeft() - rect2.left) - c2621ix.leftMargin, (view.getTop() - rect2.top) - c2621ix.topMargin, view.getRight() + rect2.right + c2621ix.rightMargin, view.getBottom() + rect2.bottom + c2621ix.bottomMargin);
    }

    private void A0p(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.A0p.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C2621ix) {
            C2621ix c2621ix = (C2621ix) layoutParams;
            if (!c2621ix.A01) {
                Rect rect = c2621ix.A03;
                this.A0p.left -= rect.left;
                this.A0p.right += rect.right;
                this.A0p.top -= rect.top;
                this.A0p.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.A0p);
            offsetRectIntoDescendantCoords(view, this.A0p);
        }
        this.A06.A35(this, view, this.A0p, !this.A0D, view2 == null);
    }

    private void A0q(AbstractC2608ik abstractC2608ik, boolean z, boolean z2) {
        if (this.A04 != null) {
            AbstractC2608ik abstractC2608ik2 = this.A04;
            C1652Ir c1652Ir = this.A11;
            String[] strArr = A19;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[6] = "W0We85FJJqvSsXa60a6gd4EA7hDdiGkp";
            strArr2[4] = "7sp9VzUFxAlBM78ItapDbGKr6NkpOVCZ";
            abstractC2608ik2.A0J(c1652Ir);
            this.A04.A0N(this);
        }
        if (!z || z2) {
            A1R();
        }
        this.A00.A0I();
        AbstractC2608ik abstractC2608ik3 = this.A04;
        this.A04 = abstractC2608ik;
        if (abstractC2608ik != null) {
            abstractC2608ik.A0I(this.A11);
        }
        AbstractC2620iw abstractC2620iw = this.A06;
        this.A0r.A0Z(abstractC2608ik3, this.A04, z);
        this.A0s.A0D = true;
        A1T();
    }

    private final void A0r(AbstractC2617it abstractC2617it, int i) {
        if (this.A06 != null) {
            this.A06.A2p(A0I(294, 53, 24));
        }
        if (this.A0v.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i < 0) {
            ArrayList<AbstractC2617it> arrayList = this.A0v;
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            A19[1] = "csPuyufcMVSbd4QNytjq4rBIum7WhxYp";
            arrayList.add(abstractC2617it);
        } else {
            this.A0v.add(i, abstractC2617it);
        }
        A0g();
        requestLayout();
    }

    private void A0s(AbstractC2638jE abstractC2638jE) {
        View view = abstractC2638jE.A0H;
        boolean z = view.getParent() == this;
        this.A0r.A0d(A1K(view));
        if (!abstractC2638jE.A0p()) {
            if (z) {
                this.A01.A0E(view);
                return;
            } else {
                this.A01.A0J(view, true);
                return;
            }
        }
        C2584iK c2584iK = this.A01;
        String[] strArr = A19;
        if (strArr[3].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A19;
        strArr2[6] = "yAMck033yUmsKAwrNaBuaPdrYuAtD8a4";
        strArr2[4] = "2F1g5meBaFaT8Ughfaz4Efd5BOFwzFG2";
        c2584iK.A0H(view, -1, view.getLayoutParams(), true);
    }

    public static void A0t(AbstractC2638jE abstractC2638jE) {
        if (abstractC2638jE.A09 != null) {
            WeakReference<C7O> weakReference = abstractC2638jE.A09;
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[6] = "Lp0Vudgnjyr9htx58aJuOXSG6zR0Rms0";
            strArr[4] = "QnOoNSP4qihOpTYseackLt73SA9jbFjz";
            C7O c7o = weakReference.get();
            while (c7o != null) {
                if (c7o == abstractC2638jE.A0H) {
                    return;
                }
                Object parent = c7o.getParent();
                c7o = parent instanceof View ? (View) parent : null;
            }
            abstractC2638jE.A09 = null;
        }
    }

    private void A0u(AbstractC2638jE abstractC2638jE, AbstractC2638jE abstractC2638jE2, C2615ir c2615ir, C2615ir c2615ir2, boolean z, boolean z2) {
        abstractC2638jE.A0k(false);
        if (z) {
            A0s(abstractC2638jE);
        }
        if (abstractC2638jE != abstractC2638jE2) {
            if (z2) {
                A0s(abstractC2638jE2);
            }
            abstractC2638jE.A06 = abstractC2638jE2;
            A0s(abstractC2638jE);
            this.A0r.A0d(abstractC2638jE);
            abstractC2638jE2.A0k(false);
            abstractC2638jE2.A07 = abstractC2638jE;
        }
        if (this.A05.A0R(abstractC2638jE, abstractC2638jE2, c2615ir, c2615ir2)) {
            A1Q();
        }
    }

    private void A0y(int[] iArr) {
        int iA05 = this.A01.A05();
        if (iA05 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < iA05; i3++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A09(i3));
            if (!abstractC2638jEA0F.A0s()) {
                int iA0T = abstractC2638jEA0F.A0T();
                if (iA0T < i) {
                    i = iA0T;
                }
                if (iA0T > i2) {
                    i2 = iA0T;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    private boolean A0z() {
        int iA05 = this.A01.A05();
        for (int i = 0; i < iA05; i++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A09(i));
            if (abstractC2638jEA0F != null && !abstractC2638jEA0F.A0s() && abstractC2638jEA0F.A0q()) {
                return true;
            }
        }
        return false;
    }

    private boolean A10() {
        return this.A05 != null && this.A06.A2x();
    }

    private boolean A12(int i, int i2) {
        A0y(this.A14);
        return (this.A14[0] == i && this.A14[1] == i2) ? false : true;
    }

    private final boolean A13(int i, int i2) {
        if (this.A06 == null) {
            Log.e(A0I(1423, 12, 90), A0I(704, 89, 69));
            return false;
        }
        if (this.A0I) {
            return false;
        }
        boolean zA2v = this.A06.A2v();
        boolean zA2w = this.A06.A2w();
        if (!zA2v || Math.abs(i) < this.A0y) {
            i = 0;
        }
        if (!zA2w || Math.abs(i2) < this.A0y) {
            i2 = 0;
        }
        if ((i != 0 || i2 != 0) && !dispatchNestedPreFling(i, i2)) {
            boolean z = zA2v || zA2w;
            dispatchNestedFling(i, i2, z);
            if (this.A0g != null && this.A0g.A0B(i, i2)) {
                return true;
            }
            if (z) {
                int i3 = zA2v ? 0 | 1 : 0;
                if (zA2w) {
                    i3 |= 2;
                }
                A21(i3, 1);
                this.A08.A09(Math.max(-this.A0x, Math.min(i, this.A0x)), Math.max(-this.A0x, Math.min(i2, this.A0x)));
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    private final boolean A14(int i, int i2, MotionEvent motionEvent) {
        int i3 = 0;
        int i4 = 0;
        int iA1g = 0;
        int iA1h = 0;
        A1M();
        if (this.A04 != null) {
            A1N();
            A1O();
            AbstractC2502gy.A01(A0I(1414, 9, 79));
            A1q(this.A0s);
            if (i != 0) {
                iA1g = this.A06.A1g(i, this.A0r, this.A0s);
                i3 = i - iA1g;
            }
            if (i2 != 0) {
                iA1h = this.A06.A1h(i2, this.A0r, this.A0s);
                i4 = i2 - iA1h;
            }
            AbstractC2502gy.A00();
            A1S();
            A1P();
            A1w(false);
        }
        if (!this.A0v.isEmpty()) {
            invalidate();
        }
        if (A22(iA1g, iA1h, i3, i4, this.A17, 0)) {
            this.A0S -= this.A17[0];
            this.A0T -= this.A17[1];
            if (motionEvent != null) {
                motionEvent.offsetLocation(this.A17[0], this.A17[1]);
            }
            int[] iArr = this.A15;
            int i5 = iArr[0] + this.A17[0];
            String[] strArr = A19;
            if (strArr[6].charAt(17) != strArr[4].charAt(17)) {
                throw new RuntimeException();
            }
            A19[1] = "TzjapWGLjdNwrlMHhQTvw0KTjubTnl9R";
            iArr[0] = i5;
            int[] iArr2 = this.A15;
            iArr2[1] = iArr2[1] + this.A17[1];
        } else if (getOverScrollMode() != 2) {
            if (motionEvent != null && !AbstractC2520hH.A00(motionEvent, 8194)) {
                float x = motionEvent.getX();
                float f = i3;
                float y = motionEvent.getY();
                float f2 = i4;
                if (A19[1].length() != 32) {
                    throw new RuntimeException();
                }
                A19[1] = "Rb7Wd2rB1Bk4FJnk1H23iqiZozoKDKpI";
                A0j(x, f, y, f2);
            }
            A1d(i, i2);
        }
        if (iA1g != 0 || iA1h != 0) {
            A1f(iA1g, iA1h);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (iA1g == 0 && iA1h == 0) ? false : true;
    }

    private boolean A15(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (0 != 0) {
            if (action != 0) {
                if (action == 3 || action == 1) {
                    this.A0h = null;
                }
                return true;
            }
            this.A0h = null;
        }
        if (action == 0 || 0 >= this.A13.size()) {
            return false;
        }
        this.A13.get(0);
        throw new NullPointerException(A0I(2012, 21, 78));
    }

    private boolean A16(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 3 || action == 0) {
            this.A0h = null;
        }
        if (0 >= this.A13.size()) {
            return false;
        }
        this.A13.get(0);
        throw new NullPointerException(A0I(2012, 21, 78));
    }

    private boolean A17(View view, View view2, int i) {
        if (view2 == null || view2 == this) {
            return false;
        }
        if (view == null) {
            return true;
        }
        if (i != 2 && i != 1) {
            return A18(view, view2, i);
        }
        if (A18(view, view2, (i == 2) ^ (this.A06.A1X() == 1) ? 66 : 17)) {
            return true;
        }
        return i == 2 ? A18(view, view2, 130) : A18(view, view2, 33);
    }

    private boolean A18(View view, View view2, int i) {
        this.A0p.set(0, 0, view.getWidth(), view.getHeight());
        this.A0z.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.A0p);
        offsetDescendantRectToMyCoords(view2, this.A0z);
        switch (i) {
            case 17:
                return (this.A0p.right > this.A0z.right || this.A0p.left >= this.A0z.right) && this.A0p.left > this.A0z.left;
            case 33:
                return (this.A0p.bottom > this.A0z.bottom || this.A0p.top >= this.A0z.bottom) && this.A0p.top > this.A0z.top;
            case 66:
                int i2 = this.A0p.left;
                String[] strArr = A19;
                if (strArr[2].length() == strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A19;
                strArr2[3] = "H3chOpt4vkJfacRirYduge";
                strArr2[0] = "3wUmDedSMI";
                return (i2 < this.A0z.left || this.A0p.right <= this.A0z.left) && this.A0p.right < this.A0z.right;
            case 130:
                return (this.A0p.top < this.A0z.top || this.A0p.bottom <= this.A0z.top) && this.A0p.bottom < this.A0z.bottom;
            default:
                throw new IllegalArgumentException(A0I(1897, 37, 18) + i + A1L());
        }
    }

    private final boolean A19(AccessibilityEvent accessibilityEvent) {
        if (!A1z()) {
            return false;
        }
        int iA00 = accessibilityEvent != null ? AbstractC2558hu.A00(accessibilityEvent) : 0;
        if (iA00 == 0) {
            iA00 = 0;
        }
        this.A0P |= iA00;
        return true;
    }

    private C2522hJ getScrollingChildHelper() {
        if (this.A0d == null) {
            this.A0d = new C2522hJ(this);
        }
        return this.A0d;
    }

    public final int A1C(View view) {
        AbstractC2638jE abstractC2638jEA0F = A0F(view);
        if (abstractC2638jEA0F != null) {
            return abstractC2638jEA0F.A0R();
        }
        return -1;
    }

    public final int A1D(View view) {
        AbstractC2638jE abstractC2638jEA0F = A0F(view);
        if (abstractC2638jEA0F != null) {
            return abstractC2638jEA0F.A0T();
        }
        return -1;
    }

    public final int A1E(AbstractC2638jE abstractC2638jE) {
        if (!abstractC2638jE.A0v(IronSourceError.ERROR_PLACEMENT_CAPPED) && abstractC2638jE.A0l()) {
            return this.A00.A0E(abstractC2638jE.A03);
        }
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[2] = "S0wUd1";
        strArr[7] = "zF1SY7WsjbFG";
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        if (r4 != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Rect A1F(android.view.View r9) {
        /*
            r8 = this;
            android.view.ViewGroup$LayoutParams r3 = r9.getLayoutParams()
            com.facebook.ads.redexgen.X.ix r3 = (com.facebook.ads.redexgen.X.C2621ix) r3
            boolean r0 = r3.A01
            if (r0 != 0) goto Ld
            android.graphics.Rect r0 = r3.A03
            return r0
        Ld:
            com.facebook.ads.redexgen.X.jB r0 = r8.A0s
            boolean r0 = r0.A07()
            if (r0 == 0) goto L44
            boolean r0 = r3.A01()
            if (r0 != 0) goto L41
            boolean r4 = r3.A03()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C7O.A19
            r0 = 5
            r1 = r1[r0]
            r0 = 2
            char r1 = r1.charAt(r0)
            r0 = 89
            if (r1 == r0) goto L33
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L33:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C7O.A19
            java.lang.String r1 = "R8RZJpxNRYJLmE7KdaIYiTLeL7r3Y7bS"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "BRrnvNJfpVwihHaR5a5gEdBxu0vp26qH"
            r0 = 4
            r2[r0] = r1
            if (r4 == 0) goto L44
        L41:
            android.graphics.Rect r0 = r3.A03
            return r0
        L44:
            android.graphics.Rect r6 = r3.A03
            r5 = 0
            r6.set(r5, r5, r5, r5)
            java.util.ArrayList<com.facebook.ads.redexgen.X.it> r0 = r8.A0v
            int r4 = r0.size()
            r2 = 0
        L51:
            if (r2 >= r4) goto L8e
            android.graphics.Rect r0 = r8.A0p
            r0.set(r5, r5, r5, r5)
            java.util.ArrayList<com.facebook.ads.redexgen.X.it> r0 = r8.A0v
            java.lang.Object r7 = r0.get(r2)
            com.facebook.ads.redexgen.X.it r7 = (com.facebook.ads.redexgen.X.AbstractC2617it) r7
            android.graphics.Rect r1 = r8.A0p
            com.facebook.ads.redexgen.X.jB r0 = r8.A0s
            r7.A02(r1, r9, r8, r0)
            int r1 = r6.left
            android.graphics.Rect r0 = r8.A0p
            int r0 = r0.left
            int r1 = r1 + r0
            r6.left = r1
            int r1 = r6.top
            android.graphics.Rect r0 = r8.A0p
            int r0 = r0.top
            int r1 = r1 + r0
            r6.top = r1
            int r1 = r6.right
            android.graphics.Rect r0 = r8.A0p
            int r0 = r0.right
            int r1 = r1 + r0
            r6.right = r1
            int r1 = r6.bottom
            android.graphics.Rect r0 = r8.A0p
            int r0 = r0.bottom
            int r1 = r1 + r0
            r6.bottom = r1
            int r2 = r2 + 1
            goto L51
        L8e:
            r3.A01 = r5
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.A1F(android.view.View):android.graphics.Rect");
    }

    public final View A1G(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public final AbstractC2638jE A1H(int i) {
        if (this.A0C) {
            return null;
        }
        int iA06 = this.A01.A06();
        AbstractC2638jE abstractC2638jE = null;
        for (int i2 = 0; i2 < iA06; i2++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A0A(i2));
            if (abstractC2638jEA0F != null && !abstractC2638jEA0F.A0n() && A1E(abstractC2638jEA0F) == i) {
                if (!this.A01.A0K(abstractC2638jEA0F.A0H)) {
                    return abstractC2638jEA0F;
                }
                abstractC2638jE = abstractC2638jEA0F;
            }
        }
        return abstractC2638jE;
    }

    public final AbstractC2638jE A1I(int i) {
        return A1J(i, false);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002c  */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:21:0x005c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x005e A[SYNTHETIC] */
    public final AbstractC2638jE A1J(int i, boolean z) {
        C2584iK c2584iK;
        View view;
        String[] strArr;
        int iA06 = this.A01.A06();
        AbstractC2638jE abstractC2638jE = null;
        for (int i2 = 0; i2 < iA06; i2++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A0A(i2));
            if (abstractC2638jEA0F != null && !abstractC2638jEA0F.A0n()) {
                if (z) {
                    if (abstractC2638jEA0F.A03 != i) {
                        continue;
                    } else {
                        c2584iK = this.A01;
                        view = abstractC2638jEA0F.A0H;
                        strArr = A19;
                        if (strArr[6].charAt(17) != strArr[4].charAt(17)) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A19;
                        strArr2[6] = "j0pgcyCAMmCuelBFBaEKhw82BLWYdvOX";
                        strArr2[4] = "bxiKg4TrHtXBSvyNTaSo7IOhyUGlGIW4";
                        if (c2584iK.A0K(view)) {
                            return abstractC2638jEA0F;
                        }
                        abstractC2638jE = abstractC2638jEA0F;
                    }
                } else if (abstractC2638jEA0F.A0T() != i) {
                    continue;
                } else {
                    c2584iK = this.A01;
                    view = abstractC2638jEA0F.A0H;
                    strArr = A19;
                    if (strArr[6].charAt(17) != strArr[4].charAt(17)) {
                        throw new RuntimeException();
                    }
                    String[] strArr3 = A19;
                    strArr3[6] = "j0pgcyCAMmCuelBFBaEKhw82BLWYdvOX";
                    strArr3[4] = "bxiKg4TrHtXBSvyNTaSo7IOhyUGlGIW4";
                    if (c2584iK.A0K(view)) {
                        return abstractC2638jEA0F;
                    }
                    abstractC2638jE = abstractC2638jEA0F;
                }
            }
        }
        return abstractC2638jE;
    }

    public final AbstractC2638jE A1K(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return A0F(view);
        }
        throw new IllegalArgumentException(A0I(1879, 5, 81) + view + A0I(98, 26, 127) + this);
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public final String A1L() {
        return A0I(0, 1, 65) + super.toString() + A0I(169, 10, 82) + this.A04 + A0I(189, 9, 71) + this.A06 + A0I(179, 10, 10) + getContext();
    }

    public final void A1M() {
        boolean z = this.A0D;
        String strA0I = A0I(1366, 17, 86);
        if (!z || this.A0C) {
            AbstractC2502gy.A01(strA0I);
            A0Y();
            AbstractC2502gy.A00();
            return;
        }
        if (this.A00.A0J()) {
            if (this.A00.A0L(4)) {
                boolean zA0L = this.A00.A0L(11);
                if (A19[5].charAt(2) != 'Y') {
                    throw new RuntimeException();
                }
                String[] strArr = A19;
                strArr[6] = "e84NaKOnn7I9zpRn8aasqpcOMtbsg9mo";
                strArr[4] = "iuEMZhfSQYSf3gJ7Ya7A7FZe771rQXKi";
                if (!zA0L) {
                    AbstractC2502gy.A01(A0I(1394, 20, 75));
                    A1N();
                    A1O();
                    this.A00.A0H();
                    if (!this.A0J) {
                        if (A0z()) {
                            A0Y();
                        } else {
                            this.A00.A0F();
                        }
                    }
                    A1w(true);
                    A1P();
                    AbstractC2502gy.A00();
                    return;
                }
            }
            if (this.A00.A0J()) {
                AbstractC2502gy.A01(strA0I);
                A0Y();
                AbstractC2502gy.A00();
            }
        }
    }

    public final void A1N() {
        this.A0O++;
        if (this.A0O != 1 || this.A0I) {
            return;
        }
        this.A0J = false;
    }

    public final void A1O() {
        this.A0U++;
    }

    public final void A1P() {
        A1v(true);
    }

    public final void A1Q() {
        if (this.A0K || !this.A0F) {
            return;
        }
        AbstractC2540hb.A0D(this, this.A0k);
        this.A0K = true;
    }

    public final void A1R() {
        if (this.A05 != null) {
            this.A05.A0H();
        }
        if (this.A06 != null) {
            this.A06.A2Y(this.A0r);
            this.A06.A2W(this.A0r);
        }
        this.A0r.A0Q();
    }

    public final void A1S() {
        int iA05 = this.A01.A05();
        for (int i = 0; i < iA05; i++) {
            View viewA09 = this.A01.A09(i);
            AbstractC2638jE abstractC2638jEA1K = A1K(viewA09);
            if (abstractC2638jEA1K != null && abstractC2638jEA1K.A07 != null) {
                View view = abstractC2638jEA1K.A07.A0H;
                int left = viewA09.getLeft();
                int top = viewA09.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    int width = view.getWidth();
                    String[] strArr = A19;
                    if (strArr[2].length() == strArr[7].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A19;
                    strArr2[3] = "Uubm7UlJXcXPQblsDCbwus";
                    strArr2[0] = "kvvVMTFBun";
                    view.layout(left, top, width + left, view.getHeight() + top);
                }
            }
        }
    }

    public final void A1T() {
        this.A0C = true;
        A0h();
    }

    public final void A1U() {
        if (this.A0m != null) {
            this.A0m.clear();
        }
    }

    public final void A1V() {
        setScrollState(0);
        A0V();
    }

    public final void A1W(int i) {
        if (this.A06 == null) {
            return;
        }
        this.A06.A2B(i);
        awakenScrollBars();
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[2] = "0QEBPr";
        strArr[7] = "MYIDRbA0xlXg";
    }

    public final void A1X(int i) {
        int iA05 = this.A01.A05();
        for (int i2 = 0; i2 < iA05; i2++) {
            this.A01.A09(i2).offsetLeftAndRight(i);
        }
    }

    public final void A1Y(int i) {
        int iA05 = this.A01.A05();
        for (int i2 = 0; i2 < iA05; i2++) {
            this.A01.A09(i2).offsetTopAndBottom(i);
        }
    }

    public final void A1Z(int i) {
        if (this.A0I) {
            return;
        }
        A1V();
        if (this.A06 != null) {
            this.A06.A2B(i);
            awakenScrollBars();
            return;
        }
        String strA0I = A0I(1423, 12, 90);
        String[] strArr = A19;
        if (strArr[6].charAt(17) != strArr[4].charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A19;
        strArr2[6] = "bKq2dxkRCeugdKx9Xa6GvrcP2g1fh08B";
        strArr2[4] = "kU2aPHyT0THRQATybaGwdbwAtHBBu9qc";
        Log.e(strA0I, A0I(793, 94, 71));
    }

    public final void A1a(int i) {
        if (this.A0I) {
            return;
        }
        AbstractC2620iw abstractC2620iw = this.A06;
        String[] strArr = A19;
        if (strArr[3].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A19;
        strArr2[6] = "WdHf0lV4QkHUB6jMNa4hJVyYAF4qnaeC";
        strArr2[4] = "5gGhKJie0DBDDFfkhapEv4fZOrT4upMj";
        if (abstractC2620iw != null) {
            this.A06.A2o(this, this.A0s, i);
            return;
        }
        String[] strArr3 = A19;
        if (strArr3[6].charAt(17) != strArr3[4].charAt(17)) {
            String[] strArr4 = A19;
            strArr4[6] = "tnW8WJDd0hyAXA7zkanproBVQy0r1bMC";
            strArr4[4] = "4Fp0w8uFB0Hn5lDXLaIQvmhL07bdVyXH";
            Log.e(A0I(1423, 10, 14), A0I(907, 46, 18));
            return;
        }
        String[] strArr5 = A19;
        strArr5[3] = "z3A7CLBHtBtrAEYqxn9jPo";
        strArr5[0] = "loKczzo2gT";
        Log.e(A0I(1423, 12, 90), A0I(977, 97, 85));
    }

    public final void A1b(int i) {
        getScrollingChildHelper().A03(i);
    }

    public final void A1c(int i, int i2) {
        if (i < 0) {
            A0b();
            this.A0a.onAbsorb(-i);
        } else if (i > 0) {
            A0c();
            this.A0b.onAbsorb(i);
        }
        if (i2 < 0) {
            A0d();
            if (A19[5].charAt(2) != 'Y') {
                throw new RuntimeException();
            }
            A19[1] = "gyhAwDIMjNJoK3bJ2ki6wxmL7XFPannX";
            this.A0c.onAbsorb(-i2);
        } else if (i2 > 0) {
            A0a();
            this.A0Z.onAbsorb(i2);
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        AbstractC2540hb.A07(this);
    }

    public final void A1d(int i, int i2) {
        boolean zIsFinished = false;
        if (this.A0a != null && !this.A0a.isFinished() && i > 0) {
            this.A0a.onRelease();
            zIsFinished = this.A0a.isFinished();
        }
        if (this.A0b != null && !this.A0b.isFinished() && i < 0) {
            this.A0b.onRelease();
            zIsFinished |= this.A0b.isFinished();
        }
        if (this.A0c != null && !this.A0c.isFinished() && i2 > 0) {
            EdgeEffect edgeEffect = this.A0c;
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[3] = "CkvbraPTkuNHVjG6c5toq1";
            strArr[0] = "anwNoWvWLV";
            edgeEffect.onRelease();
            zIsFinished |= this.A0c.isFinished();
        }
        if (this.A0Z != null && !this.A0Z.isFinished() && i2 < 0) {
            this.A0Z.onRelease();
            zIsFinished |= this.A0Z.isFinished();
        }
        if (zIsFinished) {
            AbstractC2540hb.A07(this);
        }
    }

    public final void A1e(int i, int i2) {
        setMeasuredDimension(AbstractC2620iw.A0x(i, getPaddingLeft() + getPaddingRight(), AbstractC2540hb.A03(this)), AbstractC2620iw.A0x(i2, getPaddingTop() + getPaddingBottom(), AbstractC2540hb.A02(this)));
    }

    public final void A1f(int i, int i2) {
        this.A0N++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX, scrollY);
        if (this.A0i != null) {
            AbstractC2625j1 abstractC2625j1 = this.A0i;
            if (A19[5].charAt(2) != 'Y') {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[3] = "TUQYCncggzPoC9am3CD4xS";
            strArr[0] = "5ReBiiKNLm";
            abstractC2625j1.A0Q(this, i, i2);
        }
        if (this.A0m != null) {
            int size = this.A0m.size() - 1;
            while (size >= 0) {
                this.A0m.get(size).A0Q(this, i, i2);
                if (A19[1].length() != 32) {
                    size--;
                } else {
                    String[] strArr2 = A19;
                    strArr2[3] = "fStj6fnOv6bW6jot34QgdO";
                    strArr2[0] = "C6zDSGp1EH";
                    size--;
                }
            }
        }
        this.A0N--;
    }

    public final void A1g(int i, int i2) {
        int iA06 = this.A01.A06();
        for (int i3 = 0; i3 < iA06; i3++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A0A(i3));
            if (abstractC2638jEA0F != null && !abstractC2638jEA0F.A0s()) {
                int i4 = abstractC2638jEA0F.A03;
                if (A19[5].charAt(2) != 'Y') {
                    throw new RuntimeException();
                }
                A19[1] = "WfIl2QLxhpsV1cZ5bwDa0wyCBTSIuEWm";
                if (i4 >= i) {
                    abstractC2638jEA0F.A0h(i2, false);
                    this.A0s.A0D = true;
                }
            }
        }
        this.A0r.A0S(i, i2);
        requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0078  */
    public final void A1h(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int iA06 = this.A01.A06();
        if (i < i2) {
            i3 = i;
            i4 = i2;
            i5 = -1;
        } else {
            i3 = i2;
            i4 = i;
            i5 = 1;
        }
        for (int i6 = 0; i6 < iA06; i6++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A0A(i6));
            if (A19[5].charAt(2) != 'Y') {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[2] = "SA2Eyd";
            strArr[7] = "XMtlHmP9rGs3";
            if (abstractC2638jEA0F != null && abstractC2638jEA0F.A03 >= i3 && abstractC2638jEA0F.A03 <= i4) {
                int i7 = abstractC2638jEA0F.A03;
                String[] strArr2 = A19;
                if (strArr2[6].charAt(17) == strArr2[4].charAt(17)) {
                    String[] strArr3 = A19;
                    strArr3[6] = "BcaezuMb6aDfAWKozakh45MfYrs0kuIc";
                    strArr3[4] = "5erwLY6dW1OUzDMynaZgWLcHWlHtC3ze";
                    if (i7 == i) {
                        abstractC2638jEA0F.A0h(i2 - i, false);
                    } else {
                        abstractC2638jEA0F.A0h(i5, false);
                    }
                } else if (i7 == i) {
                    abstractC2638jEA0F.A0h(i2 - i, false);
                } else {
                    abstractC2638jEA0F.A0h(i5, false);
                }
                this.A0s.A0D = true;
            }
        }
        this.A0r.A0T(i, i2);
        requestLayout();
    }

    public final void A1i(int i, int i2) {
        A0l(i, i2, null);
    }

    public final void A1j(int i, int i2, Object obj) {
        int iA06 = this.A01.A06();
        int i3 = i + i2;
        for (int i4 = 0; i4 < iA06; i4++) {
            View viewA0A = this.A01.A0A(i4);
            AbstractC2638jE abstractC2638jEA0F = A0F(viewA0A);
            if (abstractC2638jEA0F != null && !abstractC2638jEA0F.A0s()) {
                int i5 = abstractC2638jEA0F.A03;
                if (A19[1].length() != 32) {
                    throw new RuntimeException();
                }
                String[] strArr = A19;
                strArr[2] = "87XYbE";
                strArr[7] = "GV1T0vfadOcw";
                if (i5 >= i && abstractC2638jEA0F.A03 < i3) {
                    abstractC2638jEA0F.A0e(2);
                    abstractC2638jEA0F.A0j(obj);
                    ((C2621ix) viewA0A.getLayoutParams()).A01 = true;
                }
            }
        }
        this.A0r.A0U(i, i2);
    }

    public final void A1k(int i, int i2, boolean z) {
        int i3 = i + i2;
        int iA06 = this.A01.A06();
        for (int i4 = 0; i4 < iA06; i4++) {
            AbstractC2638jE abstractC2638jEA0F = A0F(this.A01.A0A(i4));
            if (abstractC2638jEA0F != null && !abstractC2638jEA0F.A0s()) {
                if (abstractC2638jEA0F.A03 >= i3) {
                    abstractC2638jEA0F.A0h(-i2, z);
                    this.A0s.A0D = true;
                } else if (abstractC2638jEA0F.A03 >= i) {
                    abstractC2638jEA0F.A0g(i - 1, -i2, z);
                    if (A19[1].length() != 32) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A19;
                    strArr[2] = "dcjb0S";
                    strArr[7] = "CcIDXd599Ygw";
                    this.A0s.A0D = true;
                } else {
                    continue;
                }
            }
        }
        this.A0r.A0V(i, i2, z);
        requestLayout();
    }

    public final void A1l(View view) {
        int size;
        A0F(view);
        AbstractC2608ik abstractC2608ik = this.A04;
        List<RecyclerView.OnChildAttachStateChangeListener> list = this.A0l;
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        A19[5] = "qDYnzfveQxKkK3O0opuqDthRtcgsED9a";
        if (list == null || (size = this.A0l.size() - 1) < 0) {
            return;
        }
        this.A0l.get(size);
        throw new NullPointerException(A0I(1934, 27, 20));
    }

    public final void A1m(View view) {
        int size;
        A0F(view);
        AbstractC2608ik abstractC2608ik = this.A04;
        if (this.A0l == null || (size = this.A0l.size() - 1) < 0) {
            return;
        }
        this.A0l.get(size);
        throw new NullPointerException(A0I(1961, 29, 26));
    }

    public final void A1n(AbstractC2617it abstractC2617it) {
        A0r(abstractC2617it, -1);
    }

    public final void A1o(AbstractC2625j1 abstractC2625j1) {
        if (this.A0m == null) {
            this.A0m = new ArrayList();
        }
        this.A0m.add(abstractC2625j1);
    }

    public final void A1p(AbstractC2625j1 abstractC2625j1) {
        if (this.A0m != null) {
            this.A0m.remove(abstractC2625j1);
        }
    }

    public final void A1q(C2635jB c2635jB) {
        if (getScrollState() != 2) {
            c2635jB.A06 = 0;
            c2635jB.A07 = 0;
        } else {
            OverScroller overScroller = this.A08.A01;
            c2635jB.A06 = overScroller.getFinalX() - overScroller.getCurrX();
            c2635jB.A07 = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public final void A1r(AbstractC2638jE abstractC2638jE, C2615ir c2615ir) {
        abstractC2638jE.A0f(0, 8192);
        if (this.A0s.A0E && abstractC2638jE.A0q() && !abstractC2638jE.A0n() && !abstractC2638jE.A0s()) {
            this.A0t.A08(A0C(abstractC2638jE), abstractC2638jE);
        }
        this.A0t.A0F(abstractC2638jE, c2615ir);
    }

    public final void A1s(AbstractC2638jE abstractC2638jE, C2615ir c2615ir, C2615ir c2615ir2) {
        abstractC2638jE.A0k(false);
        if (this.A05.A0O(abstractC2638jE, c2615ir, c2615ir2)) {
            A1Q();
        }
    }

    public final void A1t(AbstractC2638jE abstractC2638jE, C2615ir c2615ir, C2615ir c2615ir2) {
        A0s(abstractC2638jE);
        abstractC2638jE.A0k(false);
        if (this.A05.A0P(abstractC2638jE, c2615ir, c2615ir2)) {
            A1Q();
        }
    }

    public final void A1u(String str) {
        if (A1z()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(A0I(LevelPlayAdError.ERROR_CODE_LOAD_FAILED_ALREADY_CALLED, 77, 76) + A1L());
        }
        if (this.A0N > 0) {
            Log.w(A0I(1423, 12, 90), A0I(347, 280, 49), new IllegalStateException(A0I(0, 0, 62) + A1L()));
        }
    }

    public final void A1v(boolean z) {
        this.A0U--;
        if (this.A0U < 1) {
            this.A0U = 0;
            if (z) {
                A0K();
                if (A19[1].length() != 32) {
                    throw new RuntimeException();
                }
                String[] strArr = A19;
                strArr[6] = "clcdgLago0QzUCUQna9RqUvMnx3zufId";
                strArr[4] = "dGTmnJIudyc2xKqsUaVYnInX4VXDIHXZ";
                A0Z();
            }
        }
    }

    public final void A1w(boolean z) {
        if (this.A0O < 1) {
            this.A0O = 1;
        }
        if (!z) {
            this.A0J = false;
        }
        if (this.A0O == 1) {
            if (z && this.A0J && !this.A0I && this.A06 != null && this.A04 != null) {
                A0Y();
            }
            if (!this.A0I) {
                this.A0J = false;
            }
        }
        this.A0O--;
    }

    public final boolean A1x() {
        if (this.A10 != null) {
            AccessibilityManager accessibilityManager = this.A10;
            String[] strArr = A19;
            if (strArr[6].charAt(17) != strArr[4].charAt(17)) {
                throw new RuntimeException();
            }
            A19[5] = "qqYNnQooq1iBe19qNxONRBmcR9jcXf5d";
            if (accessibilityManager.isEnabled()) {
                return true;
            }
        }
        return false;
    }

    public final boolean A1y() {
        return !this.A0D || this.A0C || this.A00.A0J();
    }

    public final boolean A1z() {
        return this.A0U > 0;
    }

    public final boolean A20(int i) {
        return getScrollingChildHelper().A09(i);
    }

    public final boolean A21(int i, int i2) {
        return getScrollingChildHelper().A0B(i, i2);
    }

    public final boolean A22(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        return getScrollingChildHelper().A0D(i, i2, i3, i4, iArr, i5);
    }

    public final boolean A23(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().A0F(i, i2, iArr, iArr2, i3);
    }

    public final boolean A24(View view) {
        A1N();
        boolean zA0L = this.A01.A0L(view);
        if (zA0L) {
            AbstractC2638jE abstractC2638jEA0F = A0F(view);
            this.A0r.A0d(abstractC2638jEA0F);
            this.A0r.A0c(abstractC2638jEA0F);
        }
        A1w(!zA0L);
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[3] = "2BT72D7B0XXfHPWJs3DbS8";
        strArr[0] = "RgGvPpmRJD";
        return zA0L;
    }

    public final boolean A25(AbstractC2638jE abstractC2638jE) {
        return this.A05 == null || this.A05.A0S(abstractC2638jE, abstractC2638jE.A0W());
    }

    public final boolean A26(AbstractC2638jE abstractC2638jE, int i) {
        if (!A1z()) {
            AbstractC2540hb.A09(abstractC2638jE.A0H, i);
            return true;
        }
        abstractC2638jE.A02 = i;
        this.A0w.add(abstractC2638jE);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (this.A06 != null) {
            boolean zA37 = this.A06.A37(this, arrayList, i, i2);
            if (A19[5].charAt(2) != 'Y') {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[2] = "qzNrCd";
            strArr[7] = "bMAkXN6Kp1Dd";
            if (zA37) {
                return;
            }
        }
        super.addFocusables(arrayList, i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C2621ix) && this.A06.A33((C2621ix) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        if (this.A06 != null && this.A06.A2v()) {
            return this.A06.A1r(this.A0s);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        if (this.A06 != null && this.A06.A2v()) {
            return this.A06.A1s(this.A0s);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        if (this.A06 == null) {
            return 0;
        }
        AbstractC2620iw abstractC2620iw = this.A06;
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        A19[1] = "GzwOa56ahdwGOmec9vc3XIggLcxaXOnz";
        if (abstractC2620iw.A2v()) {
            return this.A06.A1t(this.A0s);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        if (this.A06 == null) {
            return 0;
        }
        AbstractC2620iw abstractC2620iw = this.A06;
        String[] strArr = A19;
        if (strArr[3].length() != strArr[0].length()) {
            String[] strArr2 = A19;
            strArr2[2] = "Wsbuah";
            strArr2[7] = "lDl9g1VSjrmk";
            if (!abstractC2620iw.A2w()) {
                return 0;
            }
            AbstractC2620iw abstractC2620iw2 = this.A06;
            String[] strArr3 = A19;
            if (strArr3[3].length() != strArr3[0].length()) {
                A19[5] = "sfYwg45p3roym5legx720iFNlg07mmUN";
                return abstractC2620iw2.A1u(this.A0s);
            }
        }
        throw new RuntimeException();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        if (this.A06 != null && this.A06.A2w()) {
            return this.A06.A1v(this.A0s);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        if (this.A06 == null || !this.A06.A2w()) {
            return 0;
        }
        AbstractC2620iw abstractC2620iw = this.A06;
        if (A19[5].charAt(2) != 'Y') {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[6] = "NPPquBudgt65Kfhzva46C14iIBYgw5ng";
        strArr[4] = "gzaMlk0wrsXS1BjbnaI8sjsGlzE0u55w";
        return abstractC2620iw.A1w(this.A0s);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().A08(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().A07(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().A0E(i, i2, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().A0C(i, i2, i3, i4, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x0138  */
    /* JADX WARN: Code duplicated, block: B:76:0x015f  */
    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.A0v.size();
        for (int i = 0; i < size; i++) {
            this.A0v.get(i);
        }
        boolean z2 = false;
        if (this.A0a != null && !this.A0a.isFinished()) {
            int iSave = canvas.save();
            int paddingBottom = this.A0B ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            z2 = this.A0a != null && this.A0a.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        if (this.A0c != null && !this.A0c.isFinished()) {
            int iSave2 = canvas.save();
            if (this.A0B) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            z2 |= this.A0c != null && this.A0c.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        if (this.A0b != null && !this.A0b.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.A0B ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(-paddingTop, -width);
            if (this.A0b != null) {
                EdgeEffect edgeEffect = this.A0b;
                String[] strArr = A19;
                if (strArr[2].length() == strArr[7].length()) {
                    throw new RuntimeException();
                }
                A19[5] = "ItYbouux6ivob9pa5cwYanZ1Qwg84bbh";
                if (edgeEffect.draw(canvas)) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            z2 |= z;
            canvas.restoreToCount(iSave3);
        }
        if (this.A0Z != null && !this.A0Z.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.A0B) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            z2 |= this.A0Z != null && this.A0Z.draw(canvas);
            canvas.restoreToCount(iSave4);
        }
        if (!z2 && this.A05 != null && this.A0v.size() > 0) {
            AbstractC2616is abstractC2616is = this.A05;
            if (A19[5].charAt(2) == 'Y') {
                A19[5] = "slYCg9imVkQI2IB5irC0agqTwBjTAdyw";
                if (abstractC2616is.A0M()) {
                    z2 = true;
                }
            } else if (abstractC2616is.A0M()) {
                z2 = true;
            }
        }
        if (z2) {
            AbstractC2540hb.A07(this);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00a2  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i) {
        boolean z;
        View viewFindNextFocus;
        View viewA22 = this.A06.A22(view, i);
        if (viewA22 != null) {
            return viewA22;
        }
        if (this.A04 != null) {
            AbstractC2620iw abstractC2620iw = this.A06;
            String[] strArr = A19;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A19;
            strArr2[3] = "RhZxCClAx00iKsBYiNgalY";
            strArr2[0] = "xpwAZ9hAV8";
            if (abstractC2620iw == null || A1z() || this.A0I) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = false;
        }
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z && (i == 2 || i == 1)) {
            boolean z2 = false;
            if (this.A06.A2w()) {
                int i2 = i == 2 ? 130 : 33;
                z2 = focusFinder.findNextFocus(this, view, i2) == null;
                if (A1F) {
                    i = i2;
                }
            }
            if (!z2 && this.A06.A2v()) {
                int i3 = (i == 2) ^ (this.A06.A1X() == 1) ? 66 : 17;
                z2 = focusFinder.findNextFocus(this, view, i3) == null;
                if (A1F) {
                    i = i3;
                }
            }
            if (z2) {
                A1M();
                if (A1G(view) == null) {
                    return null;
                }
                A1N();
                this.A06.A23(view, i, this.A0r, this.A0s);
                A1w(false);
            }
            viewFindNextFocus = focusFinder.findNextFocus(this, view, i);
        } else {
            viewFindNextFocus = focusFinder.findNextFocus(this, view, i);
            if (viewFindNextFocus == null && z) {
                A1M();
                if (A1G(view) == null) {
                    return null;
                }
                A1N();
                viewFindNextFocus = this.A06.A23(view, i, this.A0r, this.A0s);
                A1w(false);
            }
        }
        if (viewFindNextFocus == null || viewFindNextFocus.hasFocusable()) {
            return A17(view, viewFindNextFocus, i) ? viewFindNextFocus : super.focusSearch(view, i);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i);
        }
        A0p(viewFindNextFocus, null);
        return view;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        if (this.A06 != null) {
            return this.A06.A24();
        }
        throw new IllegalStateException(A0I(1528, 33, 116) + A1L());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        if (this.A06 != null) {
            return this.A06.A25(getContext(), attributeSet);
        }
        throw new IllegalStateException(A0I(1528, 33, 116) + A1L());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (this.A06 == null) {
            throw new IllegalStateException(A0I(1528, 33, 116) + A1L());
        }
        C2621ix c2621ixA26 = this.A06.A26(layoutParams);
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[3] = "4uZ9QAUZcjEo06EXHPHPN1";
        strArr[0] = "ePNmh1lbEA";
        return c2621ixA26;
    }

    public AbstractC2608ik getAdapter() {
        return this.A04;
    }

    @Override // android.view.View
    public int getBaseline() {
        if (this.A06 == null) {
            return super.getBaseline();
        }
        int iA1S = this.A06.A1S();
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        A19[1] = "WUntfQVcja1qFzj09nDprclvV6sI7lKs";
        return iA1S;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        if (0 == 0) {
            return super.getChildDrawingOrder(i, i2);
        }
        throw new NullPointerException(A0I(1990, 22, 35));
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.A0B;
    }

    public C1638Ic getCompatAccessibilityDelegate() {
        return this.A09;
    }

    public AbstractC2616is getItemAnimator() {
        return this.A05;
    }

    public AbstractC2620iw getLayoutManager() {
        return this.A06;
    }

    public int getMaxFlingVelocity() {
        return this.A0x;
    }

    public int getMinFlingVelocity() {
        return this.A0y;
    }

    public long getNanoTime() {
        if (A1E) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC2623iz getOnFlingListener() {
        return this.A0g;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.A0o;
    }

    public C2627j3 getRecycledViewPool() {
        return this.A0r.A0I();
    }

    public int getScrollState() {
        return this.A0W;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().A05();
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.A0F;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().A06();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A0U = 0;
        this.A0F = true;
        this.A0D = this.A0D && !isLayoutRequested();
        if (this.A06 != null) {
            this.A06.A2f(this);
        }
        this.A0K = false;
        if (A1E) {
            this.A03 = RunnableC2597iX.A07.get();
            if (this.A03 == null) {
                this.A03 = new RunnableC2597iX();
                Display displayA04 = AbstractC2540hb.A04(this);
                float f = 60.0f;
                if (!isInEditMode() && displayA04 != null) {
                    float refreshRate = displayA04.getRefreshRate();
                    String[] strArr = A19;
                    if (strArr[2].length() == strArr[7].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A19;
                    strArr2[3] = "HPKMSTrO6rgllPECADdom7";
                    strArr2[0] = "yPSN9KqlOS";
                    if (refreshRate >= 30.0f) {
                        f = refreshRate;
                    }
                }
                this.A03.A00 = (long) (1.0E9f / f);
                RunnableC2597iX.A07.set(this.A03);
            }
            this.A03.A09(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.A05 != null) {
            this.A05.A0H();
        }
        A1V();
        this.A0F = false;
        if (this.A06 != null) {
            this.A06.A2n(this, this.A0r);
        }
        this.A0w.clear();
        removeCallbacks(this.A0k);
        this.A0t.A07();
        if (!A1E || this.A03 == null) {
            return;
        }
        this.A03.A0A(this);
        this.A03 = null;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.A0v.size();
        for (int i = 0; i < size; i++) {
            this.A0v.get(i);
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0087  */
    /* JADX WARN: Code duplicated, block: B:36:0x0095  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b0  */
    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float axisValue;
        if (this.A06 == null) {
            return false;
        }
        boolean z = this.A0I;
        if (A19[1].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A19;
        strArr[2] = "hfCCVZ";
        strArr[7] = "6Rxn0wTGDCgs";
        if (!z && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f = this.A06.A2w() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.A06.A2v() ? motionEvent.getAxisValue(10) : 0.0f;
            } else {
                int source = motionEvent.getSource();
                if (A19[5].charAt(2) == 'Y') {
                    A19[5] = "SrYzqcFycO4E61WX0CCI79FBiQDWLxq8";
                    if ((source & 4194304) != 0) {
                        axisValue = motionEvent.getAxisValue(26);
                        if (this.A06.A2w()) {
                            f = -axisValue;
                            axisValue = 0.0f;
                        } else if (this.A06.A2v()) {
                            f = 0.0f;
                        } else {
                            f = 0.0f;
                            axisValue = 0.0f;
                        }
                    } else {
                        f = 0.0f;
                        axisValue = 0.0f;
                    }
                } else if ((source & 4194304) != 0) {
                    axisValue = motionEvent.getAxisValue(26);
                    if (this.A06.A2w()) {
                        f = -axisValue;
                        axisValue = 0.0f;
                    } else if (this.A06.A2v()) {
                        f = 0.0f;
                    } else {
                        f = 0.0f;
                        axisValue = 0.0f;
                    }
                } else {
                    f = 0.0f;
                    axisValue = 0.0f;
                }
            }
            if (f != 0.0f || axisValue != 0.0f) {
                A14((int) (this.A0L * axisValue), (int) (this.A0M * f), motionEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00f4 A[PHI: r1
  0x00f4: PHI (r1v16 int) = (r1v15 int), (r1v19 int) binds: [B:46:0x0129, B:33:0x00f2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:44:0x0119  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int i;
        boolean z;
        if (this.A0I) {
            return false;
        }
        if (A16(motionEvent)) {
            A0J();
            return true;
        }
        if (this.A06 == null) {
            return false;
        }
        boolean zA2v = this.A06.A2v();
        boolean zA2w = this.A06.A2w();
        if (this.A0Y == null) {
            this.A0Y = VelocityTracker.obtain();
        }
        this.A0Y.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        String[] strArr = A19;
        if (strArr[2].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A19;
        strArr2[3] = "Oz3Y31ex0QABqFtFM6aXix";
        strArr2[0] = "OpGO9pAa6R";
        switch (actionMasked) {
            case 0:
                if (this.A0n) {
                    this.A0n = false;
                }
                this.A0V = motionEvent.getPointerId(0);
                int x = (int) (motionEvent.getX() + 0.5f);
                this.A0S = x;
                this.A0Q = x;
                int y = (int) (motionEvent.getY() + 0.5f);
                this.A0T = y;
                this.A0R = y;
                if (this.A0W == 2) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                    setScrollState(1);
                }
                int[] iArr = this.A15;
                this.A15[1] = 0;
                iArr[0] = 0;
                int i2 = zA2v ? 0 | 1 : 0;
                if (zA2w) {
                    i2 |= 2;
                }
                A21(i2, 0);
                break;
            case 1:
                VelocityTracker velocityTracker = this.A0Y;
                String[] strArr3 = A19;
                if (strArr3[6].charAt(17) == strArr3[4].charAt(17)) {
                    A19[1] = "VFVZbyoyfkMi6O34miIS2l4U7i7WEKsz";
                    velocityTracker.clear();
                    A1b(0);
                } else {
                    String[] strArr4 = A19;
                    strArr4[3] = "RX1lNzZl9PHDMcdVrAJc1B";
                    strArr4[0] = "i2qb1YAFuc";
                    velocityTracker.clear();
                    A1b(0);
                }
                break;
            case 2:
                int iFindPointerIndex = motionEvent.findPointerIndex(this.A0V);
                if (iFindPointerIndex < 0) {
                    Log.e(A0I(1423, 12, 90), A0I(1116, 46, 88) + this.A0V + A0I(124, 45, 46));
                    return false;
                }
                int x2 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                float y2 = motionEvent.getY(iFindPointerIndex);
                String[] strArr5 = A19;
                if (strArr5[2].length() == strArr5[7].length()) {
                    A19[5] = "zyYUBzZDbxt5GKooJMB8Oo5URJ8cGTlk";
                    i = (int) (y2 + 0.5f);
                    if (this.A0W != 1) {
                        int i3 = x2 - this.A0Q;
                        int i4 = i - this.A0R;
                        z = false;
                        if (zA2v) {
                            this.A0S = x2;
                            z = true;
                        }
                        if (zA2w) {
                            this.A0T = i;
                            z = true;
                        }
                        if (z) {
                            setScrollState(1);
                        }
                    }
                } else {
                    String[] strArr6 = A19;
                    strArr6[3] = "bk8L2DuoR6rlGazYt8IaCt";
                    strArr6[0] = "Sc1G85HZiT";
                    i = (int) (y2 + 0.5f);
                    if (this.A0W != 1) {
                        int i5 = x2 - this.A0Q;
                        int i6 = i - this.A0R;
                        z = false;
                        if (zA2v && Math.abs(i5) > this.A0X) {
                            this.A0S = x2;
                            z = true;
                        }
                        if (zA2w && Math.abs(i6) > this.A0X) {
                            this.A0T = i;
                            z = true;
                        }
                        if (z) {
                            setScrollState(1);
                        }
                    }
                }
                break;
            case 3:
                A0J();
                break;
            case 5:
                this.A0V = motionEvent.getPointerId(actionIndex);
                int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.A0S = x3;
                this.A0Q = x3;
                int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.A0T = y3;
                this.A0R = y3;
                break;
            case 6:
                A0n(motionEvent);
                break;
        }
        return this.A0W == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC2502gy.A01(A0I(1383, 11, 82));
        A0Y();
        AbstractC2502gy.A00();
        this.A0D = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x010c, code lost:
    
        if (r4 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010e, code lost:
    
        setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0119, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0126, code lost:
    
        if (r4 != false) goto L46;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instruction units count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C7O.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (A1z()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof WrappedParcelable)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            classLoader = getContext().getClassLoader();
        }
        Parcelable parcelableUnwrap = ((WrappedParcelable) parcelable).unwrap(classLoader);
        if (!(parcelableUnwrap instanceof RecyclerView$SavedState)) {
            super.onRestoreInstanceState(parcelableUnwrap);
            return;
        }
        this.A0j = (RecyclerView$SavedState) parcelableUnwrap;
        super.onRestoreInstanceState(this.A0j.A04());
        if (this.A06 == null || this.A0j.A00 == null) {
            return;
        }
        this.A06.A2J(this.A0j.A00);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        RecyclerView$SavedState recyclerView$SavedState = new RecyclerView$SavedState(super.onSaveInstanceState());
        if (this.A0j != null) {
            recyclerView$SavedState.A05(this.A0j);
        } else if (this.A06 != null) {
            recyclerView$SavedState.A00 = this.A06.A1x();
        } else {
            recyclerView$SavedState.A00 = null;
        }
        return new WrappedParcelable(recyclerView$SavedState);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        A0f();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x0094  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.A0I || this.A0n) {
            return false;
        }
        boolean zA15 = A15(motionEvent);
        if (A19[5].charAt(2) == 'Y') {
            A19[5] = "8sYT0RnpvG2arPES2UJ12JYFoUL9IQDo";
            if (zA15) {
                A0J();
                return true;
            }
            if (this.A06 == null) {
                return false;
            }
            boolean zA2v = this.A06.A2v();
            boolean zA2w = this.A06.A2w();
            if (this.A0Y == null) {
                this.A0Y = VelocityTracker.obtain();
            }
            boolean z = false;
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            int actionIndex = motionEvent.getActionIndex();
            if (actionMasked == 0) {
                int[] iArr = this.A15;
                this.A15[1] = 0;
                String[] strArr = A19;
                if (strArr[2].length() != strArr[7].length()) {
                    A19[5] = "w9Y7A1oKaVmj8Ov6eZqRiF6tVMdmRve8";
                    iArr[0] = 0;
                } else {
                    String[] strArr2 = A19;
                    strArr2[6] = "DE62WFMw5Qbi4eBk1auhfUxeLGhnsE7e";
                    strArr2[4] = "A6rUAAhMCRWi1Exz9agrYLVLW1oNRabf";
                    iArr[0] = 0;
                }
            }
            motionEventObtain.offsetLocation(this.A15[0], this.A15[1]);
            switch (actionMasked) {
                case 0:
                    this.A0V = motionEvent.getPointerId(0);
                    int x = (int) (motionEvent.getX() + 0.5f);
                    this.A0S = x;
                    this.A0Q = x;
                    int y = (int) (motionEvent.getY() + 0.5f);
                    this.A0T = y;
                    this.A0R = y;
                    int i = zA2v ? 0 | 1 : 0;
                    if (zA2w) {
                        i |= 2;
                    }
                    A21(i, 0);
                    if (!z) {
                        this.A0Y.addMovement(motionEventObtain);
                    }
                    motionEventObtain.recycle();
                    return true;
                case 1:
                    this.A0Y.addMovement(motionEventObtain);
                    z = true;
                    this.A0Y.computeCurrentVelocity(1000, this.A0x);
                    float f = zA2v ? -this.A0Y.getXVelocity(this.A0V) : 0.0f;
                    float f2 = zA2w ? -this.A0Y.getYVelocity(this.A0V) : 0.0f;
                    String[] strArr3 = A19;
                    if (strArr3[6].charAt(17) == strArr3[4].charAt(17)) {
                        A19[5] = "SfYw0o2VnAou7QhBgLkBGelaMPLfL2ni";
                        if ((f == 0.0f && f2 == 0.0f) || !A13((int) f, (int) f2)) {
                            setScrollState(0);
                        }
                        A0T();
                        if (!z) {
                            this.A0Y.addMovement(motionEventObtain);
                        }
                        motionEventObtain.recycle();
                        return true;
                    }
                    break;
                case 2:
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.A0V);
                    if (iFindPointerIndex < 0) {
                        Log.e(A0I(1423, 12, 90), A0I(1116, 46, 88) + this.A0V + A0I(124, 45, 46));
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                    int i2 = this.A0S - x2;
                    int i3 = this.A0T - y2;
                    if (A23(i2, i3, this.A16, this.A17, 0)) {
                        i2 -= this.A16[0];
                        i3 -= this.A16[1];
                        motionEventObtain.offsetLocation(this.A17[0], this.A17[1]);
                        int[] iArr2 = this.A15;
                        iArr2[0] = iArr2[0] + this.A17[0];
                        int[] iArr3 = this.A15;
                        iArr3[1] = iArr3[1] + this.A17[1];
                    }
                    int i4 = this.A0W;
                    String[] strArr4 = A19;
                    if (strArr4[3].length() == strArr4[0].length()) {
                        throw new RuntimeException();
                    }
                    A19[1] = "vPk2qMMC5wpKDUMEcolEIRuedMAFiD5T";
                    if (i4 != 1) {
                        boolean z2 = false;
                        if (zA2v && Math.abs(i2) > this.A0X) {
                            i2 = i2 > 0 ? i2 - this.A0X : i2 + this.A0X;
                            z2 = true;
                        }
                        if (zA2w && Math.abs(i3) > this.A0X) {
                            i3 = i3 > 0 ? i3 - this.A0X : i3 + this.A0X;
                            z2 = true;
                        }
                        if (z2) {
                            setScrollState(1);
                        }
                    }
                    if (this.A0W == 1) {
                        this.A0S = x2 - this.A17[0];
                        this.A0T = y2 - this.A17[1];
                        if (A14(zA2v ? i2 : 0, zA2w ? i3 : 0, motionEventObtain)) {
                            ViewParent parent = getParent();
                            if (A19[5].charAt(2) != 'Y') {
                                parent.requestDisallowInterceptTouchEvent(true);
                            } else {
                                String[] strArr5 = A19;
                                strArr5[3] = "9Qb2BcK3cjm46xX51a5wS3";
                                strArr5[0] = "GdK3mOIcF6";
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                        if (this.A03 != null && (i2 != 0 || i3 != 0)) {
                            this.A03.A0B(this, i2, i3);
                        }
                    }
                    if (!z) {
                        this.A0Y.addMovement(motionEventObtain);
                    }
                    motionEventObtain.recycle();
                    return true;
                case 3:
                    A0J();
                    if (!z) {
                        this.A0Y.addMovement(motionEventObtain);
                    }
                    motionEventObtain.recycle();
                    return true;
                case 4:
                default:
                    if (!z) {
                        this.A0Y.addMovement(motionEventObtain);
                    }
                    motionEventObtain.recycle();
                    return true;
                case 5:
                    this.A0V = motionEvent.getPointerId(actionIndex);
                    int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.A0S = x3;
                    this.A0Q = x3;
                    int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.A0T = y3;
                    this.A0R = y3;
                    if (!z) {
                        this.A0Y.addMovement(motionEventObtain);
                    }
                    motionEventObtain.recycle();
                    return true;
                case 6:
                    A0n(motionEvent);
                    if (!z) {
                        this.A0Y.addMovement(motionEventObtain);
                    }
                    motionEventObtain.recycle();
                    return true;
            }
        }
        throw new RuntimeException();
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        AbstractC2638jE abstractC2638jEA0F = A0F(view);
        if (abstractC2638jEA0F != null) {
            if (abstractC2638jEA0F.A0p()) {
                abstractC2638jEA0F.A0a();
            } else if (!abstractC2638jEA0F.A0s()) {
                throw new IllegalArgumentException(A0I(219, 75, 37) + abstractC2638jEA0F + A1L());
            }
        }
        view.clearAnimation();
        A1m(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (!this.A06.A36(this, this.A0s, view, view2) && view2 != null) {
            A0p(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.A06.A34(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.A13.size();
        for (int i = 0; i < size; i++) {
            this.A13.get(i);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.A0O != 0 || this.A0I) {
            this.A0J = true;
        } else {
            super.requestLayout();
        }
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:130)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        if (this.A06 == null) {
            Log.e(A0I(1423, 12, 90), A0I(887, 90, 75));
            return;
        }
        if (this.A0I) {
            return;
        }
        boolean zA2v = this.A06.A2v();
        boolean zA2w = this.A06.A2w();
        if (zA2v || zA2w) {
            if (!zA2v) {
                i = 0;
            }
            A14(i, zA2w ? i2 : 0, null);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w(A0I(1423, 12, 90), A0I(1435, 93, 17));
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (A19(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(C1638Ic c1638Ic) {
        this.A09 = c1638Ic;
        AbstractC2540hb.A0B(this, this.A09);
    }

    public void setAdapter(AbstractC2608ik abstractC2608ik) {
        setLayoutFrozen(false);
        A0q(abstractC2608ik, false, true);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(InterfaceC2611in interfaceC2611in) {
        if (interfaceC2611in == null) {
            return;
        }
        this.A0e = interfaceC2611in;
        setChildrenDrawingOrderEnabled(0 != 0);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.A0B) {
            A0f();
        }
        this.A0B = z;
        super.setClipToPadding(z);
        if (this.A0D) {
            requestLayout();
        }
    }

    public void setHasFixedSize(boolean z) {
        this.A0E = z;
    }

    public void setItemAnimator(AbstractC2616is abstractC2616is) {
        if (this.A05 != null) {
            this.A05.A0H();
            this.A05.A0J(null);
        }
        this.A05 = abstractC2616is;
        if (this.A05 != null) {
            AbstractC2616is abstractC2616is2 = this.A05;
            InterfaceC2614iq interfaceC2614iq = this.A0f;
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[3] = "lbql160khUomfa8gG92Y7q";
            strArr[0] = "AtGY6u7EZb";
            abstractC2616is2.A0J(interfaceC2614iq);
        }
    }

    public void setItemViewCacheSize(int i) {
        this.A0r.A0R(i);
    }

    public void setLayoutFrozen(boolean z) {
        if (z != this.A0I) {
            A1u(A0I(1074, 42, 50));
            if (z) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.A0I = true;
                this.A0n = true;
                A1V();
                return;
            }
            this.A0I = false;
            if (this.A0J && this.A06 != null && this.A04 != null) {
                requestLayout();
            }
            this.A0J = false;
        }
    }

    public void setLayoutManager(AbstractC2620iw abstractC2620iw) {
        if (abstractC2620iw == this.A06) {
            return;
        }
        A1V();
        if (this.A06 != null) {
            if (this.A05 != null) {
                this.A05.A0H();
            }
            this.A06.A2Y(this.A0r);
            this.A06.A2W(this.A0r);
            this.A0r.A0Q();
            if (this.A0F) {
                this.A06.A2n(this, this.A0r);
            }
            this.A06.A2h(null);
            this.A06 = null;
        } else {
            this.A0r.A0Q();
        }
        this.A01.A0B();
        this.A06 = abstractC2620iw;
        if (abstractC2620iw != null) {
            C7O c7o = abstractC2620iw.A03;
            if (A19[1].length() != 32) {
                throw new RuntimeException();
            }
            String[] strArr = A19;
            strArr[6] = "5zwSvF43vthb6lIFeaOoDRJ244Dq07FI";
            strArr[4] = "COyIsU8he0MLuT7wFa9x9SZ5A7LzgdfA";
            if (c7o != null) {
                throw new IllegalArgumentException(A0I(e.a.i, 14, 40) + abstractC2620iw + A0I(59, 39, 9) + abstractC2620iw.A03.A1L());
            }
            this.A06.A2h(this);
            if (this.A0F) {
                this.A06.A2f(this);
            }
        }
        this.A0r.A0P();
        requestLayout();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().A04(z);
    }

    public void setOnFlingListener(AbstractC2623iz abstractC2623iz) {
        this.A0g = abstractC2623iz;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC2625j1 abstractC2625j1) {
        this.A0i = abstractC2625j1;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.A0o = z;
    }

    public void setRecycledViewPool(C2627j3 c2627j3) {
        this.A0r.A0a(c2627j3);
    }

    public void setRecyclerListener(InterfaceC2629j5 interfaceC2629j5) {
        this.A07 = interfaceC2629j5;
    }

    public void setScrollState(int i) {
        if (i == this.A0W) {
            return;
        }
        this.A0W = i;
        if (i != 2) {
            A0V();
        }
        A0k(i);
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        switch (i) {
            case 0:
                break;
            case 1:
                this.A0X = viewConfiguration.getScaledPagingTouchSlop();
                return;
            default:
                Log.w(A0I(1423, 12, 90), A0I(2033, 47, 85) + i + A0I(198, 21, 121));
                break;
        }
        this.A0X = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC2636jC abstractC2636jC) {
        this.A0r.A0b(abstractC2636jC);
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().A0A(i);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().A02();
    }
}
