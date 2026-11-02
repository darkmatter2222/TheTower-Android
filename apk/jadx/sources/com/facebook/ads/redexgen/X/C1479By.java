package com.facebook.ads.redexgen.X;

import android.graphics.drawable.ColorDrawable;
import android.util.SparseBooleanArray;
import android.widget.ImageView;
import com.google.common.base.Ascii;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.By, reason: case insensitive filesystem */
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
public final class C1479By extends AbstractC2638jE {
    public static byte[] A0C;
    public static final C2576iC A0D;
    public AbstractC2200c3 A00;
    public C2199c2 A01;
    public final SparseBooleanArray A02;
    public final ImageView A03;
    public final C2410fT A04;
    public final C1618Hi A05;
    public final InterfaceC2884nG A06;
    public final C3077qT A07;
    public final C2199c2 A08;
    public final String A09;
    public final InterfaceC12210m<Map<String, String>, AnonymousClass22> A0A;
    public final boolean A0B;

    static {
        A09();
        A0D = new C2576iC(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1479By(ImageView imageView, C1618Hi c1618Hi, SparseBooleanArray sparseBooleanArray, C2199c2 c2199c2, InterfaceC2884nG interfaceC2884nG, C3077qT c3077qT, String str, C2410fT c2410fT, InterfaceC12210m<? super Map<String, String>, AnonymousClass22> interfaceC12210m, boolean z) {
        super(imageView);
        C1h.A09(imageView, A07(56, 9, 27));
        C1h.A09(c1618Hi, A07(49, 7, 36));
        C1h.A09(sparseBooleanArray, A07(22, 16, 6));
        C1h.A09(c2199c2, A07(72, 24, 68));
        C1h.A09(interfaceC2884nG, A07(0, 14, 122));
        C1h.A09(c3077qT, A07(96, 17, 70));
        C1h.A09(str, A07(38, 11, 93));
        this.A03 = imageView;
        this.A05 = c1618Hi;
        this.A02 = sparseBooleanArray;
        this.A08 = c2199c2;
        this.A06 = interfaceC2884nG;
        this.A07 = c3077qT;
        this.A09 = str;
        this.A04 = c2410fT;
        this.A0A = interfaceC12210m;
        this.A0B = z;
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 46);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A09() {
        A0C = new byte[]{9, Ascii.FF, -19, Ascii.RS, Ascii.CR, Ascii.SYN, Ascii.FS, -11, 9, Ascii.SYN, 9, Ascii.SI, Ascii.CR, Ascii.SUB, -86, -88, -71, -85, -112, -75, -83, -74, -105, -107, -90, -104, -89, 125, -95, -92, -90, -103, -89, -89, -99, -93, -94, -89, -18, -9, -12, -16, -7, -1, -33, -6, -10, -16, -7, -75, -63, -64, -58, -73, -54, -58, -78, -74, -86, -80, -82, -97, -78, -82, -64, -19, -20, -63, -22, -25, -31, -23, -30, -45, -28, -41, -32, -26, -56, -37, -41, -23, -45, -44, -37, -34, -37, -26, -21, -75, -38, -41, -43, -35, -41, -28, -24, -29, -23, -41, -36, -72, -43, -24, -43, -58, -39, -41, -29, -26, -40, -39, -26};
    }

    private final void A0A(C2622iy c2622iy, AsyncTaskC1552Et asyncTaskC1552Et) {
        if (this.A0B && !this.A02.get(c2622iy.A02())) {
            C2199c2 c2199c2 = this.A01;
            if (c2199c2 != null) {
                c2199c2.A0V();
                this.A01 = null;
            }
            this.A00 = new C0(this, c2622iy, c2622iy.A08());
            C2199c2 c2199c3 = new C2199c2(this.A03, 10, new WeakReference(this.A00), this.A05);
            c2199c3.A0Y(false);
            c2199c3.A0W(100);
            c2199c3.A0X(100);
            this.A01 = c2199c3;
            asyncTaskC1552Et.A06(new C1480Bz(c2622iy, this));
        }
    }

    public final void A0w() {
        C2199c2 c2199c2 = this.A01;
        if (c2199c2 != null) {
            c2199c2.A0V();
        }
        this.A01 = null;
        this.A00 = null;
    }

    public final void A0x(C2622iy c2622iy, boolean z, InterfaceC12220n<AnonymousClass22> interfaceC12220n) {
        C1h.A09(c2622iy, A07(14, 8, 25));
        C1h.A09(interfaceC12220n, A07(65, 7, 80));
        InterfaceC12210m<Map<String, String>, AnonymousClass22> interfaceC12210m = this.A0A;
        if (interfaceC12210m != null) {
            interfaceC12210m.AB1(c2622iy.A08());
        }
        AsyncTaskC1552Et asyncTaskC1552Et = new AsyncTaskC1552Et(this.A03, this.A05);
        A0A(c2622iy, asyncTaskC1552Et);
        asyncTaskC1552Et.A07(c2622iy.A06());
        if (z) {
            this.A03.setPadding(AbstractC3043pv.A0K, AbstractC3043pv.A0K, AbstractC3043pv.A0K, AbstractC3043pv.A0K);
            this.A03.setCropToPadding(true);
            AbstractC3086qc.A0W(this.A03, new ColorDrawable(-15173646));
        } else {
            this.A03.setPadding(0, 0, 0, 0);
            this.A03.setCropToPadding(false);
            AbstractC3086qc.A0W(this.A03, new ColorDrawable(0));
        }
        this.A03.setOnClickListener(new ViewOnClickListenerC2573i9(interfaceC12220n));
    }
}
