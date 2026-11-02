package com.facebook.ads.redexgen.X;

import p005kotlin.Metadata;
import p005kotlin.jvm.JvmStatic;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.i3, reason: case insensitive filesystem */
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
public final class C2567i3 {
    public static String[] A00 = {"hoB1igfVPU9JnNSBr9B", "BIJxr28k3OsQ1hbgnADBj7nTM43iNW2b", "XhbhJOOlToJAV6bLKe9xJE6rnjLDaXwB", "Ai7pO7q6fV1OXOdOzwWRl6", "RZggFUjvUewxLCFgLoN1ffQ31qPXerGd", "9UHWzlIgRO4GNquxTktW3gAE3r7Oi", "i0CXZzaqZr9eC6ppyRleN2q6vrKslV2O", "u1lwG8lV9aZVCFzTMPajgUqTKFLRd3mJ"};

    public C2567i3() {
    }

    public /* synthetic */ C2567i3(AbstractC12411i abstractC12411i) {
        this();
    }

    @JvmStatic
    public final boolean A00(float f, float f2, int i, int i2) {
        if (i > 0 && i2 > 0 && f >= 0.0f && f <= i) {
            String[] strArr = A00;
            if (strArr[7].charAt(22) != strArr[6].charAt(22)) {
                throw new RuntimeException();
            }
            A00[5] = "el5JLUcfa1RVby6C1Xko";
            if (f2 >= 0.0f && f2 <= i2) {
                return true;
            }
        }
        return false;
    }
}
