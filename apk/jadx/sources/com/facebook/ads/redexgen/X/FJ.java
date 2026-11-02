package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import p005kotlin.Metadata;

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
public final class FJ extends RelativeLayout implements InterfaceC3120rA {
    public static byte[] A02;
    public final C2658jY A00;
    public final C1618Hi A01;

    static {
        A01();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FJ(C2658jY c2658jY, C1618Hi c1618Hi) {
        super(c1618Hi);
        C1h.A09(c2658jY, A00(14, 12, 119));
        C1h.A09(c1618Hi, A00(26, 16, 79));
        this.A00 = c2658jY;
        this.A01 = c1618Hi;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 110);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{1, Ascii.VT, 1, 6, Ascii.ETB, Ascii.US, Ascii.CR, Ascii.DLE, 0, Ascii.GS, 5, 1, Ascii.ETB, 0, 120, 122, 109, 112, 111, 112, 109, 96, 80, 116, 105, 117, SignedBytes.MAX_POWER_OF_TWO, 69, 98, 78, 79, 85, 68, 89, 85, 118, 83, SignedBytes.MAX_POWER_OF_TWO, 81, 81, 68, 83, 86, 89, 83, 69, 88, 94, 83, Ascii.EM, 94, 89, 67, 82, 89, 67, Ascii.EM, 86, 84, 67, 94, 88, 89, Ascii.EM, 97, 126, 114, 96, 56, 40, 53, 45, 41, 63, 40, Ascii.SI, 8, Ascii.SYN, Ascii.SI, 10, Ascii.US, 10, 127, 120, 98, 115, 120, 98, 103, 98, 120, 127, 110, 101, 110, 121, 66, 83, SignedBytes.MAX_POWER_OF_TWO, 65, 87, 119, 92, 81, 93, 86, 87, 86, 96, 116, 113, 0, 1, Ascii.VT, 4, Ascii.SUB, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.ESC, Ascii.RS, Ascii.FF, Ascii.ESC, 8, 9, 36, 3, Ascii.RS, Ascii.EM, Ascii.FF, 3, Ascii.SO, 8, 62, Ascii.EM, Ascii.FF, Ascii.EM, 8};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void ABc(Intent intent, Bundle bundle, C2658jY c2658jY) {
        C1h.A09(intent, A00(82, 6, 120));
        C1h.A09(c2658jY, A00(14, 12, 119));
        String stringExtra = intent.getStringExtra(A00(68, 10, 52));
        if (stringExtra != null) {
            Uri uriA00 = AbstractC3011pP.A00(stringExtra);
            C1h.A08(uriA00, A00(96, 24, 92));
            this.A01.A0F().ALj();
            this.A01.A0F().A5F(A00(0, 14, 60));
            AbstractC3163rr.A00(this.A01.A0F().getId());
            Intent intent2 = new Intent(A00(42, 26, 89), uriA00);
            intent2.addFlags(268435456);
            getContext().startActivity(intent2);
        }
        c2658jY.finish(17);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGF(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGp(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AKD(Bundle bundle) {
        C1h.A09(bundle, A00(120, 18, 3));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public String getCurrentClientToken() {
        return A00(0, 0, kotlin.fh.h1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        C1h.A09(intent, A00(78, 4, 5));
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void onDestroy() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStop() {
    }

    public void setListener(InterfaceC3119r9 interfaceC3119r9) {
        C1h.A09(interfaceC3119r9, A00(88, 8, 101));
    }
}
