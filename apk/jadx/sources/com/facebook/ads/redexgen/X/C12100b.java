package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import p005kotlin.Metadata;

/* JADX INFO: Add missing generic type declarations: [E] */
/* JADX WARN: Unexpected interfaces in signature: [kotlin.jvm.internal.markers.KMappedMarker] */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0b, reason: invalid class name and case insensitive filesystem */
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
public class C12100b<E> extends AbstractC12090a<E>.IteratorImpl implements ListIterator<E> {
    public static byte[] A01;
    public final /* synthetic */ AbstractC12090a<E> A00;

    static {
        A01();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12100b(AbstractC12090a abstractC12090a, int i) {
        super(abstractC12090a);
        this.A00 = abstractC12090a;
        AbstractC12090a.A02.A04(i, this.A00.size());
        A05(i);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 84);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{6, 39, Ascii.FS, 41, Ascii.CAN, 43, 32, 38, 37, -41, 32, 42, -41, 37, 38, 43, -41, 42, 44, 39, 39, 38, 41, 43, Ascii.FS, Ascii.ESC, -41, Ascii.GS, 38, 41, -41, 41, Ascii.FS, Ascii.CAN, Ascii.ESC, -28, 38, 37, 35, 48, -41, Ascii.SUB, 38, 35, 35, Ascii.FS, Ascii.SUB, 43, 32, 38, 37};
    }

    @Override // java.util.ListIterator
    public final void add(E e) {
        throw new UnsupportedOperationException(A00(0, 51, 99));
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return A04() > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return A04();
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        AbstractC12090a<E> abstractC12090a = this.A00;
        A05(A04() - 1);
        return abstractC12090a.get(A04());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return A04() - 1;
    }

    @Override // java.util.ListIterator
    public final void set(E e) {
        throw new UnsupportedOperationException(A00(0, 51, 99));
    }
}
