package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lx, reason: case insensitive filesystem */
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
public final class C2804lx {
    public static byte[] A00;
    public static String[] A01 = {"SWOQ8EmAtKHlzZcnhV3YPL4K", "M3DVw", "YVE29eGnYTMF7iZct0Cj857VOjyovHsA", "GsTrOHOfJOMPEz3TtMJGwYId3HC2p3bG", "s7QUE4krJA5TTfkvFa", "pn7zI1zHrzc9", "8NXaUMRA8hrChxJo41VImiAbHhwwLtwc", "TY6eOsWpSXfO6Gf7dJ7d"};

    static {
        A01();
    }

    public C2804lx() {
    }

    public /* synthetic */ C2804lx(AbstractC12411i abstractC12411i) {
        this();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{Ascii.ESC, 95, 96, 91, 94, 81, 66, 78, 78, 74, 86, 98, 98, 94, 97, 1, -11, 6, -1, -7, 8, Ascii.NAK, 17, 6, Ascii.RS, -45, Ascii.FF, Ascii.DC4, Ascii.DC4, Ascii.FF, 17, 10, -45, 8, Ascii.DC4, Ascii.DC2, 39, 40, 35, 38, Ascii.EM, -4, -3, -8, -5, -18, -24, -2, -5, -11, -18, -23, -58, -23, -15, -33, -20, -67, -37, -19, -33, -94, -88, -88, -88, -93};
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0055  */
    /* JADX WARN: Code duplicated, block: B:20:0x0079  */
    /* JADX WARN: Code duplicated, block: B:22:0x0088  */
    /* JADX WARN: Code duplicated, block: B:24:0x009c  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:? A[RETURN, SYNTHETIC] */
    private final boolean A02(Uri uri) {
        String lowerCase;
        String path;
        boolean z;
        if (!C1h.A0C(A00(36, 5, 64), uri.getAuthority())) {
            return false;
        }
        if (A01[0].length() == 16) {
            throw new RuntimeException();
        }
        A01[0] = "uY";
        String queryParameter = uri.getQueryParameter(A00(41, 9, 21));
        if (queryParameter == null) {
            return true;
        }
        try {
            Uri uriA00 = AbstractC3011pP.A00(queryParameter);
            C1h.A06(uriA00);
            String scheme = uriA00.getScheme();
            if (A01[6].length() == 32) {
                String[] strArr = A01;
                strArr[3] = "hxXjqnt3J8MipBVWaydfLCeyVdA2hnI4";
                strArr[2] = "mNw3nO79D4MJpcDCPUDZwSR6RaPlXjNk";
                if (scheme != null) {
                    lowerCase = scheme.toLowerCase(Locale.ROOT);
                    C1h.A08(lowerCase, A00(50, 16, 6));
                    if (lowerCase != null) {
                        if (!C1h.A0C(lowerCase, A00(15, 6, 32))) {
                            if (C1h.A0C(uriA00.getHost(), A00(21, 15, 49))) {
                                return false;
                            }
                            path = uriA00.getPath();
                            if (path == null) {
                                z = false;
                            } else {
                                z = false;
                            }
                            if (z) {
                                return false;
                            }
                        }
                        return true;
                    }
                }
            } else if (scheme != null) {
                lowerCase = scheme.toLowerCase(Locale.ROOT);
                C1h.A08(lowerCase, A00(50, 16, 6));
                if (lowerCase != null) {
                    if (!C1h.A0C(lowerCase, A00(15, 6, 32))) {
                        if (C1h.A0C(uriA00.getHost(), A00(21, 15, 49))) {
                            return false;
                        }
                        path = uriA00.getPath();
                        if (path == null && AnonymousClass06.A07(path, A00(0, 6, 120), false, 2, null)) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            return false;
                        }
                    }
                    return true;
                }
            }
            return false;
        } catch (SecurityException unused) {
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00df, code lost:
    
        if (r3 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f2, code lost:
    
        if (r3 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f7, code lost:
    
        return null;
     */
    @p005kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String A03(android.net.Uri r9) {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2804lx.A03(android.net.Uri):java.lang.String");
    }
}
