package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tz, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C3295tz {
    public static byte[] A0D;
    public static String[] A0E = {"w0encVdYtdlBuFlKTlHrfY7S0n4CAx8C", "RPvB1E5DRSMpZE0XwjUJChA7md", "m", "0sdiocFjTGqGOE6eOjz3o9Wki0pUi8AG", "t59k1azDDG0CEGUW7T70unsK474cSBoL", "GDmY36m9tWAlRY7MBLkOah4A", "t", "WOpZArfWPc2Ge2JtC4HX3vgB"};
    public static final C3292tw A0F;
    public final long A00;
    public final Handler A01;
    public final ImageView A02;
    public final ImageView A03;
    public final LinearLayout A04;
    public final LA A05;
    public final C2416fZ A06;
    public final C2479ga A07;
    public final C1618Hi A08;
    public final C2892nO A09;
    public final InterfaceC3119r9 A0A;
    public final Runnable A0B;
    public final String A0C;

    static {
        A05();
        A0F = new C3292tw(null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3295tz(C1618Hi c1618Hi, LA la, InterfaceC3119r9 interfaceC3119r9, C2892nO c2892nO) {
        this(c1618Hi, la, interfaceC3119r9, c2892nO, 0L, 16, null);
        C1h.A09(c1618Hi, A04(0, 7, 121));
        C1h.A09(la, A04(7, 10, 111));
        C1h.A09(interfaceC3119r9, A04(91, 8, 66));
    }

    public C3295tz(C1618Hi c1618Hi, LA la, InterfaceC3119r9 interfaceC3119r9, C2892nO c2892nO, long j) {
        C1h.A09(c1618Hi, A04(0, 7, 121));
        C1h.A09(la, A04(7, 10, 111));
        C1h.A09(interfaceC3119r9, A04(91, 8, 66));
        this.A08 = c1618Hi;
        this.A05 = la;
        this.A0A = interfaceC3119r9;
        this.A09 = c2892nO;
        this.A00 = j;
        this.A01 = new Handler(Looper.getMainLooper());
        C2479ga c2479gaA00 = AbstractC2480gb.A00(this.A08.A02());
        C1h.A08(c2479gaA00, A04(56, 16, 118));
        this.A07 = c2479gaA00;
        String strA37 = this.A05.A37();
        C1h.A08(strA37, A04(37, 19, 82));
        this.A0C = strA37;
        C2416fZ c2416fZA35 = this.A05.A35();
        C1h.A08(c2416fZA35, A04(72, 19, 5));
        this.A06 = c2416fZA35;
        ImageView imageView = new ImageView(this.A08);
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        imageView.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.AD_CHOICE_V2_COLLAPSE));
        AbstractC3086qc.A0H(1104, imageView);
        this.A02 = imageView;
        ImageView imageView2 = new ImageView(this.A08);
        imageView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        imageView2.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.AD_CHOICE_V2_EXPAND));
        AbstractC3086qc.A0H(1105, imageView2);
        this.A03 = imageView2;
        this.A0B = new RunnableC3294ty(this);
        LinearLayout linearLayout = new LinearLayout(this.A08);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, 0, AbstractC3043pv.A0n, 0);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, 0, 0);
        linearLayout.addView(this.A02);
        linearLayout.addView(this.A03);
        AbstractC3086qc.A0H(1103, linearLayout);
        linearLayout.setOnClickListener(new ViewOnClickListenerC3293tx(this, linearLayout));
        this.A04 = linearLayout;
        A07(8);
    }

    public /* synthetic */ C3295tz(C1618Hi c1618Hi, LA la, InterfaceC3119r9 interfaceC3119r9, C2892nO c2892nO, long j, int i, AbstractC12411i abstractC12411i) {
        this(c1618Hi, la, interfaceC3119r9, c2892nO, (i & 16) != 0 ? 1500L : j);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 80);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A0D = new byte[]{44, 56, 55, Base64.padSymbol, 46, 65, Base64.padSymbol, 35, 32, 51, 32, 1, 52, 45, 35, 43, 36, 8, 6, Ascii.NAK, -30, 5, -28, 9, Ascii.DLE, 10, 4, 6, Ascii.DC4, -10, 19, Ascii.CR, -55, -49, -49, -49, -54, 9, 7, Ascii.SYN, -27, Ascii.SO, Ascii.VT, 7, Ascii.DLE, Ascii.SYN, -10, 17, Ascii.CR, 7, Ascii.DLE, -54, -48, -48, -48, -53, 45, 43, 58, Ascii.SI, 52, 57, 58, 39, 52, 41, 43, -18, -12, -12, -12, -17, -68, -70, -55, -91, -74, -68, -70, -103, -70, -55, -74, -66, -63, -56, 125, -125, -125, -125, 126, -2, -5, 5, 6, -9, 0, -9, 4};
        String[] strArr = A0E;
        if (strArr[2].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[7] = "K7rq3ZqVwi51vIgSRq4yu0Er";
        strArr2[5] = "uBKDrs2e18M4jWmvww3MNJui";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A06() {
        C2892nO c2892nO = this.A09;
        if (c2892nO != null) {
            c2892nO.A04(EnumC2891nN.A0A, null);
        }
        if (this.A07.A0O(this.A08.A02(), true)) {
            this.A0A.ABW(this.A0C, this.A06);
            return;
        }
        String strA00 = this.A06.A00();
        C1h.A08(strA00, A04(17, 20, 81));
        if (strA00.length() > 0) {
            C3007pK.A0P(new C3007pK(), this.A08, AbstractC3011pP.A00(this.A06.A00()), this.A0C);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A07(int i) {
        if (i == 0) {
            this.A03.setVisibility(0);
            this.A02.setVisibility(8);
        } else {
            this.A03.setVisibility(8);
            this.A02.setVisibility(0);
        }
    }

    public final LinearLayout A0A() {
        return this.A04;
    }

    public final void A0B() {
        this.A01.removeCallbacks(this.A0B);
    }

    public final void A0C() {
        this.A01.removeCallbacks(this.A0B);
        if (this.A03.getVisibility() == 0) {
            A07(8);
        }
    }
}
