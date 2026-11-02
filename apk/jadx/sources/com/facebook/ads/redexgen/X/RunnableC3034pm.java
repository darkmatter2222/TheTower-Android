package com.facebook.ads.redexgen.X;

import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pm, reason: case insensitive filesystem */
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
public final class RunnableC3034pm implements Runnable {
    public final /* synthetic */ C3036po A00;

    public RunnableC3034pm(C3036po c3036po) {
        this.A00 = c3036po;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A05.removeCallbacks(this.A00.A07);
            this.A00.A03 = false;
            this.A00.A00 = 0L;
            InterfaceC3033pl interfaceC3033pl = this.A00.A02;
            if (interfaceC3033pl != null) {
                interfaceC3033pl.AGc(this.A00.A04);
            }
            this.A00.A06.AHJ();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
