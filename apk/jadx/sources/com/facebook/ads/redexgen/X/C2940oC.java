package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oC, reason: case insensitive filesystem */
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
public final class C2940oC extends LinearLayout {
    public static byte[] A03;
    public static String[] A04 = {"F7oiGWHDW6FlXKbumFqAsiFj3Zy9d02f", "njbIZQUh4kOSvRp99Ka0pLH96NoEUi", "uBaRfduMjMbfnJ6Dbgh2gXn", "Q5QLjjvfTGRgxpkT38Aphz", "wBRZurdnuXbk33Wwui208TGtUiOPoAjw", "XpnVjDS9IQD6Q4glSqewdbzyGFB212WX", "Yh84W3csvcbiPnAeyVs5og2VgIOUeUlF", "umfte8dekaf4cRX5Sax5V7W"};
    public static final C2954oQ A05;
    public final ImageView A00;
    public final TextView A01;
    public final C1618Hi A02;

    static {
        A01();
        A05 = new C2954oQ(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2940oC(C1618Hi c1618Hi) {
        super(c1618Hi);
        C1h.A09(c1618Hi, A00(7, 9, 94));
        this.A02 = c1618Hi;
        setOrientation(1);
        int i = (((this.A02.getResources().getDisplayMetrics().widthPixels - AbstractC3043pv.A0A) - AbstractC3043pv.A0A) - AbstractC3043pv.A0X) / 2;
        float f = AbstractC3043pv.A0A;
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setOutlineProvider(new C2958oV(f));
        imageView.setClipToOutline(true);
        this.A00 = imageView;
        addView(this.A00);
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = AbstractC3043pv.A02;
        layoutParams.bottomMargin = AbstractC3043pv.A02;
        layoutParams.setMarginStart(AbstractC3043pv.A0X);
        layoutParams.setMarginEnd(AbstractC3043pv.A0X);
        textView.setLayoutParams(layoutParams);
        textView.setTextColor(Color.parseColor(A00(0, 7, 68)));
        textView.setTextSize(2, 14.0f);
        textView.setLineSpacing(0.0f, 0.0f);
        textView.setLineSpacing(TypedValue.applyDimension(2, 16.0f, textView.getResources().getDisplayMetrics()) - textView.getTextSize(), 0.0f);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setIncludeFontPadding(false);
        this.A01 = textView;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.setBackground(new ColorDrawable(-1));
        linearLayout.setOutlineProvider(new C2941oD(f));
        linearLayout.setClipToOutline(true);
        linearLayout.addView(this.A01);
        addView(linearLayout);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 3);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        if (A04[1].length() == 5) {
            throw new RuntimeException();
        }
        String[] strArr = A04;
        strArr[7] = "JGw8wXeLdHqJduoGu1fuz1u";
        strArr[2] = "qRFyAJ6IfLcIuaQeI8GLd2c";
        A03 = new byte[]{106, 119, 127, 119, 127, 119, -128, -62, -59, -92, -48, -49, -43, -58, -39, -43, -27, -28, -73, -23, -23, -37, -22, -23, -62, -27, -41, -38, -37, -38, -95, -96, 117, -98, -101, -107, -99, 115, -107, -90, -101, -95, -96, -123, -121, -124, 121, -118, 120, -119, 94, -125, 123, -124};
    }

    public final void A02(C2938oA c2938oA, InterfaceC12220n<AnonymousClass22> interfaceC12220n, InterfaceC12220n<AnonymousClass22> interfaceC12220n2) {
        C1h.A09(c2938oA, A00(43, 11, 18));
        C1h.A09(interfaceC12220n, A00(30, 13, 47));
        C1h.A09(interfaceC12220n2, A00(16, 14, 115));
        this.A01.setText(c2938oA.A04());
        this.A00.setImageDrawable(null);
        new AsyncTaskC1552Et(this.A00, this.A02).A04().A06(new CO(interfaceC12220n2)).A07(c2938oA.A02());
        setOnClickListener(new ViewOnClickListenerC2942oE(interfaceC12220n));
    }

    public final ImageView getProductImageView() {
        return this.A00;
    }

    public final TextView getProductTitleView() {
        return this.A01;
    }
}
