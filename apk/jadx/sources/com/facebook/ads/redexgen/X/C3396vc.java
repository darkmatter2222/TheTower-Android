package com.facebook.ads.redexgen.X;

import android.view.View;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vc, reason: case insensitive filesystem */
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
public final class C3396vc {
    public static String[] A01 = {"gt2", "4KEpkRKu9anxmCmYjLaYuK", "9KxVtEikNW8COYO6VKOlslEVojMbVLHK", "", "VKL0kgBzBpf71qI91B5UjeochpsCtMYK", "AopFSmA4Thri0taPF6pXEN45nqYMt", "SncErU", "J6UD30rvFK8IHu3zaS3aE6GeUe5ZyLQv"};
    public EnumC2324e4 A00;

    public final void A00(View view) {
        C1459Be c1459Be = view instanceof C1459Be ? (C1459Be) view : null;
        if (c1459Be == null || c1459Be.A0o()) {
            return;
        }
        EnumC2324e4 videoStartReason = c1459Be.getVideoStartReason();
        String[] strArr = A01;
        if (strArr[1].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A01[7] = "iKEK4fcfcQgKhsoD7TgdSMANbNe7WyZ8";
        this.A00 = videoStartReason;
        c1459Be.A0j(false, 3);
    }

    public final void A01(View view) {
        EnumC2324e4 enumC2324e4 = this.A00;
        if (enumC2324e4 == null) {
            return;
        }
        C1459Be c1459Be = view instanceof C1459Be ? (C1459Be) view : null;
        if (c1459Be == null) {
            return;
        }
        this.A00 = null;
        if (c1459Be.getState() == EnumC2209cC.A06 || !c1459Be.A0o()) {
            return;
        }
        String[] strArr = A01;
        if (strArr[1].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[4] = "XKcY1bT0MCu6k0YFcTq2r2FpSenItbsL";
        strArr2[2] = "6KxT60gY7CmYEMrcFHnL0o5HiRnj4Zh6";
        c1459Be.A0f(enumC2324e4, 19);
    }
}
