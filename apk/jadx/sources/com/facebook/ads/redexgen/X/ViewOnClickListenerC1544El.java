package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.El, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ViewOnClickListenerC1544El extends AbstractC3312uG implements View.OnClickListener {
    public static byte[] A0F;
    public static String[] A0G = {"idQnrwKrPQs0c3zYYHT6WTvW1aXoRMqQ", "Gekt1WHQiHnIJqxdwB9j8FzDtIJy1cfJ", "sF2V", "CdtBVDHmuEaNC9R8", "jtmNaJ8NDkAfiILRFeCM3WK", "aXO2Ks7stxeTyHMnCxwSATKtkmhK3bmt", "xmLEl9t0StR", ""};
    public static final int A0H;
    public int A00;
    public int A01;
    public Bitmap A02;
    public Paint A03;
    public Rect A04;
    public C1618Hi A05;
    public C3030pi A06;
    public C1548Ep A07;
    public String A08;
    public String A09;
    public String A0A;
    public boolean A0B;
    public boolean A0C;
    public final C3304u8 A0D;
    public final Map<String, String> A0E;

    static {
        A04();
        A0H = AbstractC3043pv.A0D;
    }

    public ViewOnClickListenerC1544El(C1618Hi c1618Hi, LA la, C2404fN c2404fN, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9, C2199c2 c2199c2, C3077qT c3077qT, InterfaceC3056q8 interfaceC3056q8) {
        this(c1618Hi, la.A1X(), c2404fN, la.A32().A0K().A07(), interfaceC2884nG, interfaceC3119r9, c2199c2, c3077qT, la.A33(), interfaceC3056q8);
        this.A0D.A0A(la);
    }

    public ViewOnClickListenerC1544El(C1618Hi c1618Hi, String str, C2404fN c2404fN, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9, C2199c2 c2199c2, C3077qT c3077qT, C2410fT c2410fT) {
        this(c1618Hi, str, c2404fN, false, interfaceC2884nG, interfaceC3119r9, c2199c2, c3077qT, c2410fT);
    }

    public ViewOnClickListenerC1544El(C1618Hi c1618Hi, String str, C2404fN c2404fN, boolean z, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9, C2199c2 c2199c2, C3077qT c3077qT, C2410fT c2410fT) {
        super(c1618Hi, c2404fN);
        this.A0E = new HashMap();
        this.A0C = false;
        this.A05 = c1618Hi;
        this.A0B = z;
        this.A0D = new C3304u8(c1618Hi, str, c2199c2, c3077qT, interfaceC2884nG, c2410fT, interfaceC3119r9);
        setOnClickListener(this);
        AbstractC3086qc.A0H(1001, this);
    }

    public ViewOnClickListenerC1544El(C1618Hi c1618Hi, String str, C2404fN c2404fN, boolean z, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9, C2199c2 c2199c2, C3077qT c3077qT, C2410fT c2410fT, InterfaceC3056q8 interfaceC3056q8) {
        super(c1618Hi, c2404fN);
        this.A0E = new HashMap();
        this.A0C = false;
        this.A05 = c1618Hi;
        this.A0B = z;
        this.A0D = new C3304u8(c1618Hi, str, c2199c2, c3077qT, interfaceC2884nG, c2410fT, interfaceC3119r9, interfaceC3056q8);
        setOnClickListener(this);
        AbstractC3086qc.A0H(1001, this);
    }

    public static Bitmap A00(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            if (A0G[2].length() != 4) {
                throw new RuntimeException();
            }
            A0G[3] = "DG";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 83);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        if (!this.A0B || this.A0A == null) {
            return;
        }
        this.A02 = A00(AbstractC3098qo.A03(this.A05, this.A0A.contains(A01(20, 12, 41)) ? EnumC3097qn.MESSENGER : EnumC3097qn.WHATSAPP));
        this.A03 = new Paint();
        setPadding(A0H, 0, A0H, 0);
    }

    private void A03() {
        if (this.A06 != null) {
            this.A06.A06();
        }
        if (this.A07 != null) {
            this.A07.A04();
        }
    }

    public static void A04() {
        A0F = new byte[]{SignedBytes.MAX_POWER_OF_TWO, 78, -84, -39, 78, 86, 121, 33, 95, 80, 85, 95, 87, 99, 79, 83, 73, 78, 95, 89, Ascii.FS, Ascii.CAN, 87, Ascii.ETB, Ascii.US, 9, 9, Ascii.US, Ascii.DC4, Ascii.GS, Ascii.US, 8, 58, 32, Ascii.FF, 37, 97, Ascii.FF, 55, 54, 32, 58, 52, Base64.padSymbol, 90, 92, 74, 93, 76, 67, 70, 76, 68, -68, -55};
    }

    public static boolean A05(LA la) {
        return ((long) la.A2x()) > 0 && la.A2v() >= 0;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3312uG
    public final void A0D() {
        if (TextUtils.isEmpty(this.A09)) {
            super.A0D();
            return;
        }
        String string = getText().toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        int iIndexOf = string.indexOf(A01(53, 2, 45));
        if (iIndexOf > 0) {
            string = string.substring(0, iIndexOf).trim();
        }
        String[] strArrSplit = string.split(A01(5, 3, 89));
        for (int i = 0; i < strArrSplit.length; i++) {
            strArrSplit[i] = strArrSplit[i].substring(0, 1).toUpperCase(Locale.getDefault()) + strArrSplit[i].substring(1).toLowerCase(Locale.getDefault());
        }
        super.setText((CharSequence) (AbstractC3305u9.A01(A01(0, 1, 51), strArrSplit) + A01(1, 4, 61) + this.A09));
    }

    public final EnumC2358ec A0E(String str) {
        if (TextUtils.isEmpty(this.A08) || TextUtils.isEmpty(this.A0A)) {
            return EnumC2358ec.A08;
        }
        A03();
        this.A0E.put(A01(8, 12, 111), str);
        this.A0E.put(A01(32, 12, 0), String.valueOf(this.A0C));
        return this.A0D.A06(this.A08, this.A0A, this.A0E);
    }

    public final void A0F() {
        if (!this.A0E.isEmpty()) {
            this.A0E.clear();
        }
        this.A0D.A08();
    }

    public final void A0G(C2406fP c2406fP) {
        if (TextUtils.isEmpty(c2406fP.A04()) || TextUtils.isEmpty(c2406fP.A05())) {
            return;
        }
        this.A09 = null;
        setText(c2406fP.A05());
    }

    public final void A0H(InterfaceC3303u7 interfaceC3303u7) {
        this.A0D.A0C(interfaceC3303u7);
    }

    public final boolean A0I(LA la, AbstractC3112r2 abstractC3112r2) {
        if (this.A06 != null || !A05(la) || la.A36().A02() == null || la.A36().A01() == null) {
            return false;
        }
        this.A07 = new C1548Ep(la.A2v(), la.A2x(), la.A2w(), la.A36().A02(), la.A36().A01(), abstractC3112r2, this);
        this.A06 = new C3030pi(la.A2x(), this.A07);
        this.A06.A07();
        return true;
    }

    public String getClickUrl() {
        return this.A0A;
    }

    public C3304u8 getCtaActionHelper() {
        return this.A0D;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            A0E(A01(44, 9, 124));
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        A03();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.A02 != null) {
            this.A04 = new Rect(0, 0, this.A02.getWidth(), this.A02.getHeight());
            this.A01 = this.A02.getWidth();
            this.A00 = 12;
            int i = (this.A01 + this.A00) / 2;
            canvas.save();
            canvas.translate(i, 0.0f);
        }
        super.onDraw(canvas);
        if (this.A02 != null) {
            CharSequence text = getText();
            if (text != null) {
                int width = (int) ((((getWidth() / 2.0f) - ((getPaint().measureText(text.toString()) + 10.0f) / 2.0f)) - this.A01) - this.A00);
                int height = (getHeight() / 2) - (this.A01 / 2);
                canvas.drawBitmap(this.A02, this.A04, new Rect(width, height, this.A01 + width, this.A01 + height), this.A03);
            }
            canvas.restore();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            A03();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            return;
        }
        A03();
    }

    public void setClickUrl(String str) {
        this.A0A = str;
    }

    public void setClickUrl(String str, Map<String, String> map) {
        this.A0A = str;
        this.A0E.putAll(map);
    }

    public void setCta(C2406fP c2406fP, String str, Map<String, String> map) {
        setCta(c2406fP, str, map, null);
    }

    public void setCta(C2406fP c2406fP, String str, Map<String, String> map, InterfaceC3056q8 interfaceC3056q8, InterfaceC3303u7 interfaceC3303u7) {
        setCta(c2406fP, str, map, interfaceC3303u7);
        this.A0D.A0B(interfaceC3056q8);
    }

    public void setCta(C2406fP c2406fP, String str, Map<String, String> map, InterfaceC3303u7 interfaceC3303u7) {
        this.A08 = str;
        this.A0A = c2406fP.A06();
        this.A0E.putAll(map);
        this.A0D.A0D(interfaceC3303u7);
        String strA05 = c2406fP.A05();
        if (TextUtils.isEmpty(strA05) || TextUtils.isEmpty(this.A0A)) {
            setVisibility(8);
            return;
        }
        String strA04 = c2406fP.A04();
        this.A09 = TextUtils.isEmpty(strA04) ? null : strA04;
        if (TextUtils.isEmpty(strA04)) {
            setText(strA05);
        } else {
            setText(strA05 + A01(1, 4, 61) + strA04);
        }
        A02();
    }

    public void setIsInAppBrowser(boolean z) {
        this.A0D.A0E(z);
    }

    public void setV2Design(boolean z) {
        this.A0C = z;
    }
}
