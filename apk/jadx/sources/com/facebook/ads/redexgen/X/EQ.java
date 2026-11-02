package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.widget.RelativeLayout;
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
public final class EQ implements InterfaceC3277th {
    public static String[] A08 = {"G5LN0UEHmVw7cg4EHOOVN4ppGEpBF", "0neX0Ljk", "bd", "LYze5M3cG57O5gV22oM2IqEs762zlKKU", "9Z9gV", "P2J", "ecaEBrC7nvRnmKrfh8aOzpk3jWUcd", "9ureXYA6wzuv9DJNS3PYJnsVckD2lwT8"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ RelativeLayout A02;
    public final /* synthetic */ ViewOnClickListenerC1544El A03;
    public final /* synthetic */ C3321uP A04;
    public final /* synthetic */ C3321uP A05;
    public final /* synthetic */ C3388vU A06;
    public final /* synthetic */ C1g A07;

    public EQ(C3388vU c3388vU, int i, C1g c1g, RelativeLayout relativeLayout, int i2, ViewOnClickListenerC1544El viewOnClickListenerC1544El, C3321uP c3321uP, C3321uP c3321uP2) {
        this.A06 = c3388vU;
        this.A01 = i;
        this.A07 = c1g;
        this.A02 = relativeLayout;
        this.A00 = i2;
        this.A03 = viewOnClickListenerC1544El;
        this.A04 = c3321uP;
        this.A05 = c3321uP2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3277th
    public final void AFA(C3276tg c3276tg) {
        EnumC3382vO enumC3382vO;
        if (this.A06.A01 != this.A01 || this.A07.A00) {
            return;
        }
        C1g c1g = this.A07;
        String[] strArr = A08;
        if (strArr[6].length() == strArr[0].length()) {
            String[] strArr2 = A08;
            strArr2[6] = "Dq6RMAXjYHdYbhvu0Zsld5trmR6Ww";
            strArr2[0] = "6Act5j5il2Rw5u9sEbbZJO2Go9ng6";
            c1g.A00 = true;
            Bitmap bitmapA00 = c3276tg.A00();
            if (bitmapA00 == null || bitmapA00.getWidth() <= bitmapA00.getHeight()) {
                enumC3382vO = EnumC3382vO.A06;
                String[] strArr3 = A08;
                if (strArr3[3].charAt(28) == strArr3[7].charAt(28)) {
                    String[] strArr4 = A08;
                    strArr4[1] = "IMRT7sFf";
                    strArr4[4] = "JgDiQ";
                }
            } else {
                enumC3382vO = EnumC3382vO.A04;
            }
            this.A06.A0G(this.A02, this.A00, this.A03, enumC3382vO, this.A04, this.A05);
            return;
        }
        throw new RuntimeException();
    }
}
