package com.facebook.ads.redexgen.X;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.Layout;
import android.transition.AutoTransition;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.ViewCompat;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3086qc {
    public static byte[] A00;
    public static String[] A01 = {"T9yeGAB86XK0vsZmNpfh4sIozppRZOgX", "Zi2TG3AXo50avc5D0Zq9wx", "JqBKj5K49VPZ3Gy9qBscEl", "4Ni4MdhmG8L", "r65r3", "RNCTQQIFlAbprT7c08Eivsd0jPtRWtbK", "BqjiC5lxzxq0feSMCCnGMnwMzT1DFPOJ", "3asmvLId1fZdr9gBLrqbDNcfpMudytXC"};
    public static final int A02;
    public static final int A03;
    public static final ConcurrentHashMap<Integer, Integer> A04;
    public static final AtomicInteger A05;

    static {
        A0E();
        A03 = AbstractC2501gx.A02(-1, 0);
        A02 = AbstractC2501gx.A02(ViewCompat.MEASURED_STATE_MASK, 115);
        A05 = new AtomicInteger(1);
        A04 = new ConcurrentHashMap<>();
    }

    public static int A00() {
        int i;
        int i2;
        do {
            i = A05.get();
            i2 = i + 1;
            if (i2 > 16777215) {
                i2 = 1;
            }
        } while (!A05.compareAndSet(i, i2));
        return i;
    }

    public static int A01(int i) {
        return (int) TypedValue.applyDimension(2, i, AbstractC3045px.A04);
    }

    public static int A02(int i) {
        return A0f(i) ? AbstractC2501gx.A05(i, -1, 0.4f) : AbstractC2501gx.A05(i, ViewCompat.MEASURED_STATE_MASK, 0.2f);
    }

    public static int A03(TextView textView) {
        Layout layout;
        int lineCount;
        if (textView == null || textView.getLayout() == null || (lineCount = (layout = textView.getLayout()).getLineCount()) <= 0) {
            return 0;
        }
        double ellipsisCount = layout.getEllipsisCount(lineCount - 1);
        return (int) Math.ceil(ellipsisCount / (((double) textView.getText().length()) - ellipsisCount));
    }

    public static int A04(TextView textView, int i) {
        int iA03 = A03(textView);
        int i2 = 0;
        int lineHeight = textView.getLineHeight();
        while (i > lineHeight && i2 < iA03) {
            i2++;
            i -= lineHeight;
        }
        return i2;
    }

    public static Drawable A05(int i, int i2) {
        return A08(i, A02(i), i2);
    }

    public static Drawable A06(int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(i2);
        return gradientDrawable;
    }

    public static Drawable A07(int i, int i2) {
        float[] fArr = new float[8];
        Arrays.fill(fArr, i2);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.getPaint().setColor(i);
        return shapeDrawable;
    }

    public static Drawable A08(int i, int i2, int i3) {
        return A09(i, i2, i, i3);
    }

    public static Drawable A09(int i, int i2, int i3, int i4) {
        return new RippleDrawable(ColorStateList.valueOf(i2), A06(i, i4), A07(i3, i4));
    }

    public static Drawable A0A(int i, float[] fArr) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadii(fArr);
        return gradientDrawable;
    }

    public static View A0B(Context context, int[] iArr) {
        View view = new View(context);
        view.setBackground(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, iArr));
        return view;
    }

    public static TextView A0C(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof TextView) {
                return (TextView) childAt;
            }
            if (childAt instanceof ViewGroup) {
                A0C((ViewGroup) childAt);
            }
        }
        return null;
    }

    public static String A0D(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0E() {
        A00 = new byte[]{-26, -15, -11, -19, -26, Ascii.DC4, 36, 33, 41, 37, Ascii.ETB, 36, 17, 38, 43, 34, Ascii.ETB, 55, 53, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 57, 70, 40, 77, 68, 57, 40, 40, 57, 36, 57, 62, 53, 42, Ascii.ESC, 36, 33, Ascii.ESC, 35, Ascii.ETB, 43, 39, 45, 42, Ascii.ESC, Ascii.GS, -23, -20, -17, -9, -24, -11, -24, -25, -30, -26, -17, -20, -26, -18, -30, -25, -24, -17, -28, -4, -30, -16, -10, -18, -13, -7, -22, -9, -8, -7, -18, -7, -18, -26, -15, -64, -54, -74, -70, -72, -70, -74, -67, -64, -61, -53, -68, -55, -74, -70, -61, -64, -70, -62, -54, -74, -58, -59, -74, -70, -53, -72, -45, -35, -55, -51, -36, -49, -53, -34, -45, -32, -49, -55, -53, -35, -55, -51, -34, -53, -55, -32, -100, 46, 33, 51, Ascii.GS, 46, 32, 33, 32, Ascii.ESC, 50, 37, 32, 33, 43, 35, 32, 19, 32, 37, 32, -34, Ascii.RS, Ascii.SYN, Ascii.NAK, Ascii.SUB, 38, Ascii.RS, 33, Ascii.SI, Ascii.FS, 33, -37, 33, 19, 32, Ascii.ETB, Ascii.DC4, -37, Ascii.ESC, 19, Ascii.DC2, Ascii.ETB, 35, Ascii.ESC, 60, 53, 48, 56, 60, 44, Ascii.DLE, 43, 45, 43, Ascii.GS, 42, Ascii.ESC, 36, 33, Ascii.ESC, 35};
    }

    public static void A0F(float f, LinearLayout linearLayout) {
        linearLayout.setOutlineProvider(new C3084qa(f));
        linearLayout.setClipToOutline(true);
    }

    public static void A0G(int i, View view) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.8f, 1.0f, 0.8f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(i / 3);
        scaleAnimation.setInterpolator(new AccelerateInterpolator());
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration((i / 3) * 2);
        scaleAnimation2.setInterpolator(new BounceInterpolator());
        scaleAnimation.setAnimationListener(new G3(view, scaleAnimation2));
        view.startAnimation(scaleAnimation);
    }

    public static void A0H(int i, View view) {
        Integer num = A04.get(Integer.valueOf(i));
        if (num != null) {
            view.setId(num.intValue());
        } else {
            A0L(view);
        }
    }

    public static void A0I(View view) {
        A0P(view, 8);
    }

    public static void A0J(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || !(parent instanceof ViewGroup)) {
            return;
        }
        A0X((ViewGroup) parent);
    }

    public static void A0K(View view) {
        ViewGroup viewGroup;
        if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
            return;
        }
        viewGroup.removeView(view);
    }

    public static void A0L(View view) {
        if (view == null) {
            return;
        }
        view.setId(View.generateViewId());
    }

    public static void A0M(View view) {
        A0P(view, 0);
    }

    public static void A0N(View view, float f, float f2, int i) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, A0D(0, 5, 46), f, f2);
        objectAnimatorOfFloat.setDuration(i);
        objectAnimatorOfFloat.start();
    }

    public static void A0O(View view, int i) {
        view.setBackground(new ColorDrawable(i));
    }

    public static void A0P(View view, int i) {
        if (view != null) {
            view.setVisibility(i);
        }
    }

    public static void A0Q(View view, int i, int i2) {
        A0W(view, A06(i, i2));
    }

    public static void A0R(View view, int i, int i2) {
        A0W(view, A08(i, A02(i), i2));
    }

    public static void A0S(View view, int i, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{A03, A02});
        gradientDrawable.setCornerRadius(i);
        gradientDrawable.setStroke(i2, i3);
        A0W(view, gradientDrawable);
    }

    public static void A0T(View view, int i, int i2, int i3) {
        A0W(view, A09(i, A02(i), i2, i3));
    }

    public static void A0U(View view, int i, float[] fArr) {
        A0W(view, A0A(i, fArr));
    }

    public static void A0V(View view, Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{A03, A02});
        gradientDrawable.setCornerRadius(0.0f);
        A0W(view, gradientDrawable);
    }

    public static void A0W(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void A0X(ViewGroup viewGroup) {
        A0Y(viewGroup, 200);
    }

    public static void A0Y(ViewGroup viewGroup, int i) {
        A0Z(viewGroup, new AutoTransition(), i);
    }

    public static void A0Z(ViewGroup viewGroup, Transition transition, int i) {
        transition.setDuration(i);
        transition.setInterpolator(new AccelerateDecelerateInterpolator());
        TransitionManager.beginDelayedTransition(viewGroup, transition);
    }

    public static void A0a(Button button) {
        button.setTypeface(Typeface.create(A0D(144, 13, 90), 0));
    }

    public static void A0b(TextView textView, boolean z, int i) {
        textView.setTypeface(z ? Typeface.create(A0D(157, 17, 87), 0) : Typeface.create(Typeface.SANS_SERIF, 0));
        textView.setTextSize(2, i);
    }

    public static void A0c(Toast toast, String str, int i, int i2, int i3) {
        if (toast == null) {
            return;
        }
        toast.setGravity(i, i2, i3);
        TextView textViewA0C = A0C((ViewGroup) toast.getView());
        if (textViewA0C != null) {
            textViewA0C.setText(str);
            textViewA0C.setGravity(17);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x0075  */
    /* JADX WARN: Code duplicated, block: B:25:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:28:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:30:0x0109  */
    /* JADX WARN: Code duplicated, block: B:32:0x011c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0133  */
    /* JADX WARN: Code duplicated, block: B:34:0x013e  */
    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:6:0x000e  */
    /* JADX WARN: Code duplicated, block: B:9:0x0025  */
    public static void A0d(Map<String, String> map, LA la) {
        byte b;
        String[] strArr;
        String strA0D;
        String strA1V;
        String strA1W;
        String[] strArr2;
        if (la == null) {
            return;
        }
        String strA1c = la.A1c();
        switch (strA1c.hashCode()) {
            case -1364000502:
                String[] strArr3 = A01;
                if (strArr3[0].charAt(21) != strArr3[5].charAt(21)) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A01;
                strArr4[6] = "JxEEAbJjmawEYAfdK1CmIj4J61XxEMX4";
                strArr4[7] = "0SJncT1BAyTLSP36ejuruM7XkYTmpqCV";
                if (strA1c.equals(A0D(130, 14, 101))) {
                    b = 1;
                } else {
                    b = -1;
                }
                strArr = A01;
                if (strArr[0].charAt(21) != strArr[5].charAt(21)) {
                    throw new RuntimeException();
                }
                String[] strArr5 = A01;
                strArr5[0] = "n4EWq8cbMgSrFIIPy3PtZs3ykG3gLNVv";
                strArr5[5] = "w61oSRwyzhyXZmY3tLRPvspfZwiCeo8H";
                strA0D = A0D(17, 10, 125);
                switch (b) {
                    case 0:
                        map.put(strA0D, AdPlacementType.INTERSTITIAL.name());
                        break;
                    case 1:
                        map.put(strA0D, AdPlacementType.REWARDED_VIDEO.name());
                        break;
                }
                map.put(A0D(174, 8, InterfaceC3669k1.d.b.j), la.A1T());
                map.put(A0D(109, 21, 19), String.valueOf(la.A2O()));
                map.put(A0D(82, 27, 0), String.valueOf(la.A2F()));
                map.put(A0D(47, 23, 44), String.valueOf(la.A1N()));
                strA1V = la.A1V();
                if (strA1V != null) {
                    map.put(A0D(5, 12, 91), strA1V);
                }
                strA1W = la.A1W();
                if (strA1W != null) {
                    strArr2 = A01;
                    if (strArr2[6].charAt(11) != strArr2[7].charAt(11)) {
                        A01[4] = "QpMMj";
                        map.put(A0D(27, 8, 110), strA1W);
                        return;
                    } else {
                        String[] strArr6 = A01;
                        strArr6[0] = "RlCCOSKS3krO76Z8d8aans18JsIjD59L";
                        strArr6[5] = "r3TWBb0uAOb49M7fooTivsHeogrthYcU";
                        map.put(A0D(27, 5, 48), strA1W);
                        return;
                    }
                }
                return;
            case 604727084:
                if (strA1c.equals(A0D(70, 12, 46))) {
                    b = 0;
                } else {
                    b = -1;
                }
                strArr = A01;
                if (strArr[0].charAt(21) != strArr[5].charAt(21)) {
                    throw new RuntimeException();
                }
                String[] strArr7 = A01;
                strArr7[0] = "n4EWq8cbMgSrFIIPy3PtZs3ykG3gLNVv";
                strArr7[5] = "w61oSRwyzhyXZmY3tLRPvspfZwiCeo8H";
                strA0D = A0D(17, 10, 125);
                switch (b) {
                    case 0:
                        map.put(strA0D, AdPlacementType.INTERSTITIAL.name());
                        break;
                    case 1:
                        map.put(strA0D, AdPlacementType.REWARDED_VIDEO.name());
                        break;
                }
                map.put(A0D(174, 8, InterfaceC3669k1.d.b.j), la.A1T());
                map.put(A0D(109, 21, 19), String.valueOf(la.A2O()));
                map.put(A0D(82, 27, 0), String.valueOf(la.A2F()));
                map.put(A0D(47, 23, 44), String.valueOf(la.A1N()));
                strA1V = la.A1V();
                if (strA1V != null) {
                    map.put(A0D(5, 12, 91), strA1V);
                }
                strA1W = la.A1W();
                if (strA1W != null) {
                    strArr2 = A01;
                    if (strArr2[6].charAt(11) != strArr2[7].charAt(11)) {
                        A01[4] = "QpMMj";
                        map.put(A0D(27, 8, 110), strA1W);
                        return;
                    } else {
                        String[] strArr8 = A01;
                        strArr8[0] = "RlCCOSKS3krO76Z8d8aans18JsIjD59L";
                        strArr8[5] = "r3TWBb0uAOb49M7fooTivsHeogrthYcU";
                        map.put(A0D(27, 5, 48), strA1W);
                        return;
                    }
                }
                return;
            default:
                b = -1;
                strArr = A01;
                if (strArr[0].charAt(21) != strArr[5].charAt(21)) {
                    throw new RuntimeException();
                }
                String[] strArr9 = A01;
                strArr9[0] = "n4EWq8cbMgSrFIIPy3PtZs3ykG3gLNVv";
                strArr9[5] = "w61oSRwyzhyXZmY3tLRPvspfZwiCeo8H";
                strA0D = A0D(17, 10, 125);
                switch (b) {
                    case 0:
                        map.put(strA0D, AdPlacementType.INTERSTITIAL.name());
                        break;
                    case 1:
                        map.put(strA0D, AdPlacementType.REWARDED_VIDEO.name());
                        break;
                }
                map.put(A0D(174, 8, InterfaceC3669k1.d.b.j), la.A1T());
                map.put(A0D(109, 21, 19), String.valueOf(la.A2O()));
                map.put(A0D(82, 27, 0), String.valueOf(la.A2F()));
                map.put(A0D(47, 23, 44), String.valueOf(la.A1N()));
                strA1V = la.A1V();
                if (strA1V != null) {
                    map.put(A0D(5, 12, 91), strA1V);
                }
                strA1W = la.A1W();
                if (strA1W != null) {
                    strArr2 = A01;
                    if (strArr2[6].charAt(11) != strArr2[7].charAt(11)) {
                        A01[4] = "QpMMj";
                        map.put(A0D(27, 8, 110), strA1W);
                        return;
                    } else {
                        String[] strArr10 = A01;
                        strArr10[0] = "RlCCOSKS3krO76Z8d8aans18JsIjD59L";
                        strArr10[5] = "r3TWBb0uAOb49M7fooTivsHeogrthYcU";
                        map.put(A0D(27, 5, 48), strA1W);
                        return;
                    }
                }
                return;
        }
    }

    public static void A0e(View... viewArr) {
        for (View view : viewArr) {
            A0K(view);
        }
    }

    public static boolean A0f(int i) {
        return AbstractC2501gx.A00(i) < 0.5d;
    }

    public static boolean A0g(EnumC2358ec enumC2358ec, Map<String, String> map) {
        return (A0D(182, 9, 97).equals(map.get(A0D(35, 12, 97))) ^ true) && (enumC2358ec != EnumC2358ec.A07);
    }

    public static boolean A0h(EnumC2358ec enumC2358ec, Map<String, String> map) {
        return A0D(182, 9, 97).equals(map.get(A0D(35, 12, 97))) && (enumC2358ec != EnumC2358ec.A07);
    }

    public static boolean A0i(C1618Hi c1618Hi, EnumC2358ec enumC2358ec) {
        return enumC2358ec == EnumC2358ec.A07 && C2863mv.A2z(c1618Hi);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0090  */
    /* JADX WARN: Code duplicated, block: B:28:0x0092  */
    /* JADX WARN: Code duplicated, block: B:30:0x009b A[RETURN] */
    public static boolean A0j(C1618Hi c1618Hi, EnumC2358ec enumC2358ec, Map<String, String> map) {
        String str;
        boolean z;
        boolean zA0h;
        String[] strArr;
        String str2 = map.get(A0D(109, 21, 19));
        boolean z2 = str2 != null && str2.equals(Boolean.TRUE.toString());
        if (!z2) {
            str = map.get(A0D(82, 27, 0));
            if (str == null) {
                z = false;
            } else {
                z = false;
            }
            if (z2) {
                zA0h = A0h(enumC2358ec, map);
                strArr = A01;
                if (strArr[1].length() == strArr[2].length()) {
                    A01[4] = "KnygK";
                    if (zA0h) {
                        return true;
                    }
                }
            }
            return false;
        }
        boolean zA0i = A0i(c1618Hi, enumC2358ec);
        String[] strArr2 = A01;
        if (strArr2[6].charAt(11) != strArr2[7].charAt(11)) {
            String[] strArr3 = A01;
            strArr3[1] = "u8VsnBmPWVphPllKxtlQdK";
            strArr3[2] = "HE77zV2Ng27gpeh0j3drVs";
            if (zA0i || A0g(enumC2358ec, map)) {
                return true;
            }
            str = map.get(A0D(82, 27, 0));
            if (str == null && str.equals(Boolean.TRUE.toString())) {
                z = true;
            } else {
                z = false;
            }
            if (z2 && z) {
                zA0h = A0h(enumC2358ec, map);
                strArr = A01;
                if (strArr[1].length() == strArr[2].length()) {
                    A01[4] = "KnygK";
                    if (zA0h) {
                        return true;
                    }
                }
            }
            return false;
        }
        throw new RuntimeException();
    }
}
