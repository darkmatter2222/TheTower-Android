package com.facebook.ads.redexgen.X;

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
public final class CB implements InterfaceC3033pl {
    public final /* synthetic */ long A00;
    public final /* synthetic */ C2801lu A01;

    public CB(C2801lu c2801lu, long j) {
        this.A01 = c2801lu;
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3033pl
    public final void AGc(long j) {
        C1441Am c1441Am = this.A01.A0D;
        if (c1441Am != null) {
            c1441Am.A09((int) (this.A00 + j));
        }
    }
}
