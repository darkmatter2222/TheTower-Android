package com.facebook.ads.redexgen.X;

import java.lang.reflect.Method;
import java.util.Arrays;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1p, reason: invalid class name */
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
public final class C1p {
    public static byte[] A00;
    public static final Method A01;
    public static final Method A02;
    public static final C1p A03;

    /* JADX WARN: Code duplicated, block: B:20:0x0073  */
    static {
        Method method;
        Method method2;
        boolean z;
        A01();
        A03 = new C1p();
        Method[] methods = Throwable.class.getMethods();
        C1h.A06(methods);
        int length = methods.length;
        int i = 0;
        while (true) {
            method = null;
            if (i >= length) {
                method2 = null;
                break;
            }
            method2 = methods[i];
            if (C1h.A0C(method2.getName(), A00(0, 13, 48))) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                C1h.A08(parameterTypes, A00(13, 22, 58));
                if (C1h.A0C(C0N.A00(parameterTypes), Throwable.class)) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            if (z) {
                break;
            } else {
                i++;
            }
        }
        A01 = method2;
        for (Method method3 : methods) {
            if (C1h.A0C(method3.getName(), A00(35, 13, 105))) {
                method = method3;
                break;
            }
        }
        A02 = method;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 85);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-26, -23, -23, -40, -6, -11, -11, -9, -22, -8, -8, -22, -23, -10, -12, 3, -33, -16, 1, -16, -4, -12, 3, -12, 1, -29, 8, -1, -12, 2, -73, -67, -67, -67, -72, 37, 35, 50, 17, 51, 46, 46, 48, 35, 49, 49, 35, 34};
    }
}
