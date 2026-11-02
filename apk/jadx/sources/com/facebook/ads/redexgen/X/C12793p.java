package com.facebook.ads.redexgen.X;

import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3p, reason: invalid class name and case insensitive filesystem */
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
public final class C12793p extends C0V implements InterfaceC12220n<AnonymousClass22> {
    public final /* synthetic */ int A00;
    public final /* synthetic */ CP A01;
    public final /* synthetic */ C2938oA A02;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12793p(CP cp, C2938oA c2938oA, int i) {
        super(0);
        this.A01 = cp;
        this.A02 = c2938oA;
        this.A00 = i;
    }

    private final void A00() {
        this.A01.A08.AB2(this.A02.A03(), Integer.valueOf(this.A00), Integer.valueOf(this.A01.A07.size()));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC12220n
    public final /* bridge */ /* synthetic */ AnonymousClass22 AB0() {
        A00();
        return AnonymousClass22.A01;
    }
}
