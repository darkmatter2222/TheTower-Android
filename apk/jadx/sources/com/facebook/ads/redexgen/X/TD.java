package com.facebook.ads.redexgen.X;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.ads.AdError;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Deprecated
public final class TD implements NN {
    public final Context A00;
    public final NN A01;
    public final InterfaceC1768Ni A02;

    public TD(Context context, InterfaceC1768Ni interfaceC1768Ni, NN nn) {
        this.A00 = context.getApplicationContext();
        this.A02 = interfaceC1768Ni;
        this.A01 = nn;
    }

    public TD(Context context, String str, InterfaceC1768Ni interfaceC1768Ni) {
        this(context, interfaceC1768Ni, new C9H().A01(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.facebook.ads.redexgen.X.9I] */
    @Override // com.facebook.ads.redexgen.X.NN
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C9I A5r() {
        final Context context = this.A00;
        final TE teA5r = this.A01.A5r();
        ?? r1 = new TE(context, teA5r) { // from class: com.facebook.ads.redexgen.X.9I
            public static byte[] A0B;
            public static String[] A0C = {"C7DElpO6NNsoAmWreX5VcfHc", "utxULvuUsrxySbN58bWERtIE", "GH", "1gC3bgtSsH3xWcpvek4Gy76najfn5m5C", "feLBh6ukBh9hJyef6KhqZWpWiwqAVmzW", "oWuhO3", "UdjzSOgc8AXsSDGjyMK94ihP6", "R68E1oVy27eUcAlinqsbQfq"};
            public TE A00;
            public TE A01;
            public TE A02;
            public TE A03;
            public TE A04;
            public TE A05;
            public TE A06;

            @MetaExoPlayerCustomization
            public TE A07;
            public final TE A08;

            @MetaExoPlayerCustomization
            public final Context A09;

            @MetaExoPlayerCustomization
            public final List<InterfaceC1768Ni> A0A = new ArrayList();

            static {
                A08();
            }

            {
                this.A09 = context.getApplicationContext();
                this.A08 = (TE) AbstractC1722Ln.A01(teA5r);
            }

            private TE A00() {
                if (this.A00 == null) {
                    this.A00 = new C9J(this.A09) { // from class: com.facebook.ads.redexgen.X.4O
                        public static byte[] A05;
                        public static String[] A06 = {"MNCe724XVXYIorkFgz7o2RNgKHKWGOUE", "KoqBVr7Jv5wqKKaI5uNyKCjPF5fTSx04", "39znLvM47tXzTjX8uj1zEjh82EgWoj93", "zIfWJ4lI", "bvd6kHZFx5xTKisP5GA6TgtoV1qWEFVT", "BQ8YEZ315WOoQrB3BHr0", "HIyAg6cci8PPHE72WVhQr", "JYF7Q5XuQ6oJay6rRtXA617Q4Mg5SZ7P"};
                        public long A00;
                        public Uri A01;
                        public InputStream A02;
                        public boolean A03;
                        public final AssetManager A04;

                        static {
                            A01();
                        }

                        {
                            super(false);
                            this.A04 = context.getAssets();
                        }

                        public static String A00(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
                            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 32);
                            }
                            return new String(bArrCopyOfRange);
                        }

                        public static void A01() {
                            A05 = new byte[]{-76, 119, -87, -74, -84, -70, -73, -79, -84, -89, -87, -69, -69, -83, -68, 119};
                        }

                        @Override // com.facebook.ads.redexgen.X.TE
                        public final Uri AA2() {
                            return this.A01;
                        }

                        @Override // com.facebook.ads.redexgen.X.TE
                        public final long AHv(NX nx) throws TP {
                            try {
                                this.A01 = nx.A06;
                                String strSubstring = (String) AbstractC1722Ln.A01(this.A01.getPath());
                                if (strSubstring.startsWith(A00(1, 15, 40))) {
                                    strSubstring = strSubstring.substring(15);
                                } else if (strSubstring.startsWith(A00(0, 1, 101))) {
                                    strSubstring = strSubstring.substring(1);
                                }
                                A0G(nx);
                                this.A02 = this.A04.open(strSubstring, 1);
                                if (this.A02.skip(nx.A04) < nx.A04) {
                                    throw new TP(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                }
                                long j = nx.A03;
                                if (A06[7].charAt(8) != 'Q') {
                                    throw new RuntimeException();
                                }
                                A06[5] = "NGb6erXLGjUofl5sDSaG";
                                if (j != -1) {
                                    this.A00 = nx.A03;
                                } else {
                                    this.A00 = this.A02.available();
                                    if (this.A00 == 2147483647L) {
                                        this.A00 = -1L;
                                    }
                                }
                                this.A03 = true;
                                A0H(nx);
                                if (A06[6].length() != 21) {
                                    return this.A00;
                                }
                                A06[1] = "3uLbmiFpLLZjkxa8H8HufVIKKBfusAWo";
                                return this.A00;
                            } catch (TP e) {
                                throw e;
                            } catch (IOException e2) {
                                throw new TP(e2, e2 instanceof FileNotFoundException ? com.ironsource.M9.a.d : 2000);
                            }
                        }

                        /* JADX WARN: Bottom block not found for handler: all -> 0x0043 */
                        @Override // com.facebook.ads.redexgen.X.TE
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void close() throws com.facebook.ads.redexgen.X.TP {
                            /*
                                r6 = this;
                                r5 = 0
                                r6.A01 = r5
                                r3 = 0
                                java.io.InputStream r0 = r6.A02     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L43
                                if (r0 == 0) goto Ld
                                java.io.InputStream r0 = r6.A02     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L43
                                r0.close()     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L43
                            Ld:
                                r6.A02 = r5
                                boolean r4 = r6.A03
                                java.lang.String[] r1 = com.facebook.ads.redexgen.X.C4O.A06
                                r0 = 7
                                r1 = r1[r0]
                                r0 = 8
                                char r1 = r1.charAt(r0)
                                r0 = 81
                                if (r1 == r0) goto L26
                                java.lang.RuntimeException r0 = new java.lang.RuntimeException
                                r0.<init>()
                                throw r0
                            L26:
                                java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4O.A06
                                java.lang.String r1 = "RQ2aPYV0XzSKqKGG6lN3Ew4WQR0Wbc5Z"
                                r0 = 2
                                r2[r0] = r1
                                java.lang.String r1 = "Gl41HGAVYLDZhSdMvoA5zDBgLuWWd6ac"
                                r0 = 4
                                r2[r0] = r1
                                if (r4 == 0) goto L39
                                r6.A03 = r3
                                r6.A0E()
                            L39:
                                return
                            L3a:
                                r2 = move-exception
                                r1 = 2000(0x7d0, float:2.803E-42)
                                com.facebook.ads.redexgen.X.TP r0 = new com.facebook.ads.redexgen.X.TP     // Catch: java.lang.Throwable -> L43
                                r0.<init>(r2, r1)     // Catch: java.lang.Throwable -> L43
                                throw r0     // Catch: java.lang.Throwable -> L43
                            L43:
                                r4 = move-exception
                                java.lang.String[] r1 = com.facebook.ads.redexgen.X.C4O.A06
                                r0 = 1
                                r1 = r1[r0]
                                r0 = 26
                                char r1 = r1.charAt(r0)
                                r0 = 102(0x66, float:1.43E-43)
                                if (r1 == r0) goto L5f
                                r6.A02 = r5
                                boolean r0 = r6.A03
                                if (r0 == 0) goto L5e
                            L59:
                                r6.A03 = r3
                                r6.A0E()
                            L5e:
                                throw r4
                            L5f:
                                java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4O.A06
                                java.lang.String r1 = "DCEAnyVwlIo6CEW5mvnm"
                                r0 = 5
                                r2[r0] = r1
                                r6.A02 = r5
                                boolean r0 = r6.A03
                                if (r0 == 0) goto L5e
                                goto L59
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4O.close():void");
                        }

                        /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
                        
                            if (r4 == (-1)) goto L23;
                         */
                        @Override // com.facebook.ads.redexgen.X.KR
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final int read(byte[] r9, int r10, int r11) throws com.facebook.ads.redexgen.X.TP {
                            /*
                                r8 = this;
                                if (r11 != 0) goto L23
                                r3 = 0
                                java.lang.String[] r1 = com.facebook.ads.redexgen.X.C4O.A06
                                r0 = 5
                                r0 = r1[r0]
                                int r1 = r0.length()
                                r0 = 20
                                if (r1 == r0) goto L16
                                java.lang.RuntimeException r0 = new java.lang.RuntimeException
                                r0.<init>()
                                throw r0
                            L16:
                                java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4O.A06
                                java.lang.String r1 = "HuYs2F2Qnwr41DG6lO3uJ3keMcWeGYbQ"
                                r0 = 0
                                r2[r0] = r1
                                java.lang.String r1 = "KFeaSlCR"
                                r0 = 3
                                r2[r0] = r1
                                return r3
                            L23:
                                long r0 = r8.A00
                                r3 = 0
                                r5 = -1
                                int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                                if (r2 != 0) goto L2d
                                return r5
                            L2d:
                                long r0 = r8.A00     // Catch: java.io.IOException -> L7c
                                r6 = -1
                                int r2 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                                if (r2 != 0) goto L56
                            L35:
                                java.io.InputStream r0 = r8.A02     // Catch: java.io.IOException -> L7c
                                java.lang.Object r0 = com.facebook.ads.redexgen.X.N1.A0f(r0)     // Catch: java.io.IOException -> L7c
                                java.io.InputStream r0 = (java.io.InputStream) r0     // Catch: java.io.IOException -> L7c
                                int r4 = r0.read(r9, r10, r11)     // Catch: java.io.IOException -> L7c
                                java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4O.A06
                                r0 = 2
                                r1 = r2[r0]
                                r0 = 4
                                r2 = r2[r0]
                                r0 = 27
                                char r1 = r1.charAt(r0)
                                char r0 = r2.charAt(r0)
                                if (r1 == r0) goto L62
                                goto L5f
                            L56:
                                long r0 = r8.A00     // Catch: java.io.IOException -> L7c
                                long r2 = (long) r11     // Catch: java.io.IOException -> L7c
                                long r0 = java.lang.Math.min(r0, r2)     // Catch: java.io.IOException -> L7c
                                int r11 = (int) r0     // Catch: java.io.IOException -> L7c
                                goto L35
                            L5f:
                                if (r4 != r5) goto L6c
                                goto L6b
                            L62:
                                java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4O.A06
                                java.lang.String r1 = "YynOmLqIQFTKCOIEuI7TEv5epLeyqL2k"
                                r0 = 7
                                r2[r0] = r1
                                if (r4 != r5) goto L6c
                            L6b:
                                return r5
                            L6c:
                                long r1 = r8.A00
                                int r0 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
                                if (r0 == 0) goto L78
                                long r2 = r8.A00
                                long r0 = (long) r4
                                long r2 = r2 - r0
                                r8.A00 = r2
                            L78:
                                r8.A0F(r4)
                                return r4
                            L7c:
                                r2 = move-exception
                                r1 = 2000(0x7d0, float:2.803E-42)
                                com.facebook.ads.redexgen.X.TP r0 = new com.facebook.ads.redexgen.X.TP
                                r0.<init>(r2, r1)
                                throw r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4O.read(byte[], int, int):int");
                        }
                    };
                    A09(this.A00);
                }
                return this.A00;
            }

            private TE A01() {
                if (this.A01 == null) {
                    this.A01 = new C9J(this.A09) { // from class: com.facebook.ads.redexgen.X.4N
                        public static byte[] A06;
                        public static String[] A07 = {"bowdcjQmccgBFbzkOf4gio", "r9jJZmLRaZFVSu1jX3zsztxBNqXGVRCZ", "BGTPkCzcQBDC0dkQPeF0eVtQZJXhz", "VSz6WkkSf7ZEBwYwp4fp1mWK88LTxoGk", "P6usDYEanJfSH1EVqh03t70nwE31pGuI", "BoGfU", "tnhIi", "ULEqDxKlhERdhYsCJ0YzlA0S5jPe3tiU"};
                        public long A00;
                        public AssetFileDescriptor A01;
                        public Uri A02;
                        public FileInputStream A03;
                        public boolean A04;
                        public final ContentResolver A05;

                        static {
                            A01();
                        }

                        {
                            super(false);
                            this.A05 = context.getContentResolver();
                        }

                        public static String A00(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
                            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 61);
                            }
                            return new String(bArrCopyOfRange);
                        }

                        public static void A01() {
                            A06 = new byte[]{110, 107, 110, 112, 92, 70, 95, 87, 19, 93, 92, 71, 19, 92, 67, 86, 93, 19, 85, 90, 95, 86, 19, 87, 86, SignedBytes.MAX_POWER_OF_TWO, 80, 65, 90, 67, 71, 92, 65, 19, 85, 92, 65, 9, 19, 116, 123, 113, 103, 122, 124, 113, 59, 101, 103, 122, 99, 124, 113, 112, 103, 59, 112, 109, 97, 103, 116, 59, 84, 86, 86, 80, 69, 65, 74, 90, 71, 92, 82, 92, 91, 84, 89, 74, 88, 80, 81, 92, 84, 74, 83, 90, 71, 88, 84, 65, 33, 45, 44, 54, 39, 44, 54, 115};
                        }

                        @Override // com.facebook.ads.redexgen.X.TE
                        public final Uri AA2() {
                            return this.A02;
                        }

                        @Override // com.facebook.ads.redexgen.X.TE
                        public final long AHv(NX nx) throws TF {
                            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
                            long jMin;
                            try {
                                try {
                                    Uri uri = nx.A06;
                                    this.A02 = uri;
                                    A0G(nx);
                                    if (A00(90, 7, 127).equals(nx.A06.getScheme())) {
                                        Bundle bundle = new Bundle();
                                        bundle.putBoolean(A00(39, 51, 40), true);
                                        assetFileDescriptorOpenAssetFileDescriptor = this.A05.openTypedAssetFileDescriptor(uri, A00(0, 3, 121), bundle);
                                    } else {
                                        assetFileDescriptorOpenAssetFileDescriptor = this.A05.openAssetFileDescriptor(uri, A00(97, 1, 60));
                                    }
                                    this.A01 = assetFileDescriptorOpenAssetFileDescriptor;
                                    if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                                        try {
                                            throw new TF(new IOException(A00(3, 36, 14) + uri), 2000);
                                        } catch (IOException e) {
                                            e = e;
                                            throw new TF(e, e instanceof FileNotFoundException ? com.ironsource.M9.a.d : 2000);
                                        }
                                    }
                                    long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
                                    FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                                    this.A03 = fileInputStream;
                                    if (length != -1 && nx.A04 > length) {
                                        throw new TF(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                    }
                                    long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
                                    long jSkip = fileInputStream.skip(nx.A04 + startOffset) - startOffset;
                                    if (jSkip != nx.A04) {
                                        throw new TF(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                    }
                                    if (length == -1) {
                                        FileChannel channel = fileInputStream.getChannel();
                                        long size = channel.size();
                                        if (size == 0) {
                                            this.A00 = -1L;
                                        } else {
                                            this.A00 = size - channel.position();
                                            if (this.A00 < 0) {
                                                throw new TF(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                            }
                                        }
                                    } else {
                                        this.A00 = length - jSkip;
                                        if (this.A00 < 0) {
                                            throw new TF(null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                        }
                                    }
                                    if (nx.A03 != -1) {
                                        if (this.A00 == -1) {
                                            jMin = nx.A03;
                                        } else {
                                            long j = this.A00;
                                            long j2 = nx.A03;
                                            String[] strArr = A07;
                                            if (strArr[7].charAt(4) != strArr[4].charAt(4)) {
                                                String[] strArr2 = A07;
                                                strArr2[0] = "LcBqqL7TbXRUKyH6CBeTvb";
                                                strArr2[2] = "4TGmk9eA76kXOGZ4H9zjlm0C8Vrbm";
                                                jMin = Math.min(j, j2);
                                            } else {
                                                String[] strArr3 = A07;
                                                strArr3[7] = "cYtBDfAgMwyvftDeAVPseWrsig9rwS74";
                                                strArr3[4] = "Ori0DUAINXD6zku1nkUVeZV8bHBYitYP";
                                                jMin = Math.min(j, j2);
                                            }
                                        }
                                        this.A00 = jMin;
                                    }
                                    this.A04 = true;
                                    A0H(nx);
                                    long j3 = nx.A03;
                                    String[] strArr4 = A07;
                                    if (strArr4[3].charAt(1) == strArr4[1].charAt(1)) {
                                        throw new RuntimeException();
                                    }
                                    String[] strArr5 = A07;
                                    strArr5[0] = "JgLqlhwF3yN75iqLJZABgy";
                                    strArr5[2] = "iQNQKxIhkHIRP8VKTPKBXdDVcf3xk";
                                    return j3 != -1 ? nx.A03 : this.A00;
                                } catch (TF e2) {
                                    throw e2;
                                }
                            } catch (IOException e3) {
                                e = e3;
                            }
                        }

                        /* JADX WARN: Bottom block not found for handler: all -> 0x002d */
                        @Override // com.facebook.ads.redexgen.X.TE
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void close() throws com.facebook.ads.redexgen.X.TF {
                            /*
                                r6 = this;
                                r4 = 0
                                r6.A02 = r4
                                r2 = 2000(0x7d0, float:2.803E-42)
                                r3 = 0
                                java.io.FileInputStream r0 = r6.A03     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L41
                                if (r0 == 0) goto Lf
                                java.io.FileInputStream r0 = r6.A03     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L41
                                r0.close()     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L41
                            Lf:
                                r6.A03 = r4
                                android.content.res.AssetFileDescriptor r0 = r6.A01     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L2d
                                if (r0 == 0) goto L1a
                                android.content.res.AssetFileDescriptor r0 = r6.A01     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L2d
                                r0.close()     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L2d
                            L1a:
                                r6.A01 = r4
                                boolean r0 = r6.A04
                                if (r0 == 0) goto L25
                                r6.A04 = r3
                                r6.A0E()
                            L25:
                                return
                            L26:
                                r1 = move-exception
                                com.facebook.ads.redexgen.X.TF r0 = new com.facebook.ads.redexgen.X.TF     // Catch: java.lang.Throwable -> L2d
                                r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L2d
                                throw r0     // Catch: java.lang.Throwable -> L2d
                            L2d:
                                r1 = move-exception
                                r6.A01 = r4
                                boolean r0 = r6.A04
                                if (r0 == 0) goto L39
                                r6.A04 = r3
                                r6.A0E()
                            L39:
                                throw r1
                            L3a:
                                r1 = move-exception
                                com.facebook.ads.redexgen.X.TF r0 = new com.facebook.ads.redexgen.X.TF     // Catch: java.lang.Throwable -> L41
                                r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L41
                                throw r0     // Catch: java.lang.Throwable -> L41
                            L41:
                                r1 = move-exception
                                r6.A03 = r4
                                android.content.res.AssetFileDescriptor r0 = r6.A01     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L60
                                if (r0 == 0) goto L4d
                                android.content.res.AssetFileDescriptor r0 = r6.A01     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L60
                                r0.close()     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L60
                            L4d:
                                r6.A01 = r4
                                boolean r0 = r6.A04
                                if (r0 == 0) goto L58
                                r6.A04 = r3
                                r6.A0E()
                            L58:
                                throw r1
                            L59:
                                r1 = move-exception
                                com.facebook.ads.redexgen.X.TF r0 = new com.facebook.ads.redexgen.X.TF     // Catch: java.lang.Throwable -> L60
                                r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L60
                                throw r0     // Catch: java.lang.Throwable -> L60
                            L60:
                                r5 = move-exception
                                java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4N.A07
                                r0 = 7
                                r1 = r2[r0]
                                r0 = 4
                                r2 = r2[r0]
                                r0 = 4
                                char r1 = r1.charAt(r0)
                                char r0 = r2.charAt(r0)
                                if (r1 == r0) goto L7a
                                java.lang.RuntimeException r0 = new java.lang.RuntimeException
                                r0.<init>()
                                throw r0
                            L7a:
                                java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4N.A07
                                java.lang.String r1 = "qMMLrLuMLkmGyBEBYphxX3"
                                r0 = 0
                                r2[r0] = r1
                                java.lang.String r1 = "k8PToccynt0739Zxp37f8GTnFGSjf"
                                r0 = 2
                                r2[r0] = r1
                                r6.A01 = r4
                                boolean r0 = r6.A04
                                if (r0 == 0) goto L91
                                r6.A04 = r3
                                r6.A0E()
                            L91:
                                throw r5
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4N.close():void");
                        }

                        @Override // com.facebook.ads.redexgen.X.KR
                        public final int read(byte[] bArr, int i, int i2) throws TF {
                            if (i2 == 0) {
                                return 0;
                            }
                            if (this.A00 == 0) {
                                return -1;
                            }
                            try {
                                if (this.A00 != -1) {
                                    i2 = (int) Math.min(this.A00, i2);
                                }
                                int i3 = ((FileInputStream) N1.A0f(this.A03)).read(bArr, i, i2);
                                if (i3 == -1) {
                                    return -1;
                                }
                                if (this.A00 != -1) {
                                    this.A00 -= (long) i3;
                                }
                                A0F(i3);
                                return i3;
                            } catch (IOException e) {
                                throw new TF(e, 2000);
                            }
                        }
                    };
                    A09(this.A01);
                }
                return this.A01;
            }

            private TE A02() {
                if (this.A02 == null) {
                    this.A02 = new C9J() { // from class: com.facebook.ads.redexgen.X.4M
                        public static byte[] A04;
                        public static String[] A05 = {"BQHtwcCLeeRVBd", "Lc9loNnCO4alo9FI50GCGwDfdK8w3UU6", "Sv6ngZFOBWfOQU8ebNiquQnyGNKos5r", "I7Hii1liDkijw0PBC7ibWmM", "FmtKngjUkYFlQXeXhW5W8dDSyESAYkys", "4", "d0pik2i20nQSmuN2sSQUBKayMAsjM6v", "fFWnuRdYuuszvLk6h8AhLBeRBdctGHjD"};
                        public int A00;
                        public int A01;
                        public NX A02;
                        public byte[] A03;

                        static {
                            A01();
                        }

                        public static String A00(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
                            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 83);
                            }
                            return new String(bArrCopyOfRange);
                        }

                        public static void A01() {
                            A04 = new byte[]{-65, -31, 8, 7, Ascii.EM, Ascii.VT, -36, -38, 4, 49, 49, 46, 49, -33, 54, 39, 40, 43, 36, -33, 47, 32, 49, 50, 40, 45, 38, -33, 1, 32, 50, 36, -11, -13, -33, 36, 45, 34, 46, 35, 36, 35, -33, 50, 51, 49, 40, 45, 38, -7, -33, -44, -19, -28, -9, -17, -28, -30, -13, -28, -29, -97, -44, -47, -56, -97, -27, -18, -15, -20, -32, -13, -71, -97, 8, 33, 38, 40, 35, 35, 34, 37, 39, Ascii.CAN, Ascii.ETB, -45, 38, Ascii.SYN, Ascii.ESC, Ascii.CAN, 32, Ascii.CAN, -19, -45, -4, -7, Ascii.FF, -7};
                        }

                        @Override // com.facebook.ads.redexgen.X.TE
                        public final Uri AA2() {
                            if (this.A02 == null) {
                                return null;
                            }
                            NX nx = this.A02;
                            if (A05[7].charAt(17) == 'N') {
                                throw new RuntimeException();
                            }
                            String[] strArr = A05;
                            strArr[2] = "hJcenO465dZZkNArn5bHVKyGY0WTaxW";
                            strArr[6] = "LVT73VK6WdcQVpPVmkt27t8F2Z7XIwO";
                            return nx.A06;
                        }

                        @Override // com.facebook.ads.redexgen.X.TE
                        public final long AHv(NX nx) throws IOException {
                            A0G(nx);
                            this.A02 = nx;
                            Uri uri = nx.A06;
                            String scheme = uri.getScheme();
                            AbstractC1722Ln.A09(A00(94, 4, 69).equals(scheme), A00(74, 20, 96) + scheme);
                            String[] strArrA1O = N1.A1O(uri.getSchemeSpecificPart(), A00(0, 1, 64));
                            if (strArrA1O.length != 2) {
                                throw L9.A02(A00(51, 23, 44) + uri, null);
                            }
                            String str = strArrA1O[1];
                            if (strArrA1O[0].contains(A00(1, 7, 83))) {
                                try {
                                    this.A03 = Base64.decode(str, 0);
                                } catch (IllegalArgumentException e) {
                                    throw L9.A02(A00(8, 43, 108) + str, e);
                                }
                            } else {
                                this.A03 = N1.A1G(URLDecoder.decode(str, XA.A01.name()));
                            }
                            if (nx.A04 > this.A03.length) {
                                this.A03 = null;
                                throw new NQ(AdError.REMOTE_ADS_SERVICE_ERROR);
                            }
                            this.A01 = (int) nx.A04;
                            this.A00 = this.A03.length - this.A01;
                            if (nx.A03 != -1) {
                                this.A00 = (int) Math.min(this.A00, nx.A03);
                            }
                            A0H(nx);
                            if (nx.A03 != -1) {
                                return nx.A03;
                            }
                            int i = this.A00;
                            if (A05[5].length() == 31) {
                                throw new RuntimeException();
                            }
                            String[] strArr = A05;
                            strArr[1] = "86jhUIAHnYQlsXvk3EiClY9l9h7Uaoq8";
                            strArr[4] = "TKuub57AxrglW5rrcu2d5fJIFZ5Gh9Kw";
                            return i;
                        }

                        @Override // com.facebook.ads.redexgen.X.TE
                        public final void close() {
                            if (this.A03 != null) {
                                this.A03 = null;
                                if (A05[5].length() == 31) {
                                    throw new RuntimeException();
                                }
                                String[] strArr = A05;
                                strArr[2] = "3XBU26XwaCKC02YSKhUmIl9UtWHPirj";
                                strArr[6] = "hDxDV8K3FDbLTF4fYtKKQCpp3hi7oXw";
                                A0E();
                            }
                            this.A02 = null;
                            if (A05[3].length() == 9) {
                                throw new RuntimeException();
                            }
                            String[] strArr2 = A05;
                            strArr2[2] = "eSOB9m8mFypWeq5nKDrSkAbj2mlVPN2";
                            strArr2[6] = "gL3vpNNuLDSggEd0nYEJjHTxA4n6887";
                        }

                        @Override // com.facebook.ads.redexgen.X.KR
                        public final int read(byte[] bArr, int i, int i2) {
                            if (i2 == 0) {
                                return 0;
                            }
                            if (this.A00 == 0) {
                                return -1;
                            }
                            int iMin = Math.min(i2, this.A00);
                            System.arraycopy(N1.A0f(this.A03), this.A01, bArr, i, iMin);
                            int i3 = this.A01 + iMin;
                            if (A05[5].length() == 31) {
                                throw new RuntimeException();
                            }
                            String[] strArr = A05;
                            strArr[2] = "nT19EfdmkwiryaBp6SneoA1CnVSvuwY";
                            strArr[6] = "KXEqjMpTAxAt95MsjfnOtQNTuXghxu5";
                            this.A01 = i3;
                            this.A00 -= iMin;
                            A0F(iMin);
                            return iMin;
                        }
                    };
                    A09(this.A02);
                }
                return this.A02;
            }

            private TE A03() {
                if (this.A03 == null) {
                    this.A03 = new C4K();
                    A09(this.A03);
                }
                return this.A03;
            }

            private TE A04() {
                if (this.A04 == null) {
                    this.A04 = new C9J(this.A09) { // from class: com.facebook.ads.redexgen.X.4J
                        public static byte[] A07;
                        public static String[] A08 = {"IbVbF5JWi", "e9nb57raekVa", "T8AZMWLEGeKtRm9GnDMvywiXhVD12kTh", "JOUHcuU3CHZG", "LQ5sosQG1uSve7qblcQToCm0XxaBxHma", "mh25", "x9K7bxImLfRCHr", "VpNhG2Rjt"};
                        public long A00;
                        public AssetFileDescriptor A01;
                        public Uri A02;
                        public InputStream A03;
                        public boolean A04;
                        public final Resources A05;
                        public final String A06;

                        static {
                            A01();
                        }

                        {
                            super(false);
                            this.A05 = context.getResources();
                            this.A06 = context.getPackageName();
                        }

                        public static String A00(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
                            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 38);
                            }
                            return new String(bArrCopyOfRange);
                        }

                        public static void A01() {
                            A07 = new byte[]{-67, 96, 119, -96, -106, 82, -95, -104, 82, -91, -90, -92, -105, -109, -97, 82, -92, -105, -109, -107, -102, -105, -106, 82, -102, -109, -88, -101, -96, -103, 82, -96, -95, -90, 82, -92, -105, -109, -106, 82, -91, -89, -104, -104, -101, -107, -101, -105, -96, -90, 82, -106, -109, -90, -109, 96, -80, -61, -47, -51, -45, -48, -63, -61, 126, -57, -62, -61, -52, -46, -57, -60, -57, -61, -48, 126, -53, -45, -47, -46, 126, -64, -61, 126, -65, -52, 126, -57, -52, -46, -61, -59, -61, -48, -116, -117, -98, -84, -88, -82, -85, -100, -98, 89, -94, -84, 89, -100, -88, -90, -87, -85, -98, -84, -84, -98, -99, 115, 89, -125, -106, -92, -96, -90, -93, -108, -106, 81, -97, -96, -91, 81, -105, -96, -90, -97, -107, 95, -75, -78, -87, -128, -51, -43, -45, -44, -128, -59, -55, -44, -56, -59, -46, -128, -43, -45, -59, -128, -45, -61, -56, -59, -51, -59, -128, -46, -63, -41, -46, -59, -45, -49, -43, -46, -61, -59, -128, -49, -46, -128, -63, -50, -60, -46, -49, -55, -60, -114, -46, -59, -45, -49, -43, -46, -61, -59, -67, -59, -116, -92, -79, -89, -75, -78, -84, -89, 113, -75, -88, -74, -78, -72, -75, -90, -88, -20, -37, -15, -62, -79, -57, -62, -75, -61, -65, -59, -62, -77, -75};
                        }

                        @Override // com.facebook.ads.redexgen.X.TE
                        public final Uri AA2() {
                            return this.A02;
                        }

                        /* JADX WARN: Code duplicated, block: B:102:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:106:0x0113 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                        /* JADX WARN: Code duplicated, block: B:28:0x00fc  */
                        /* JADX WARN: Code duplicated, block: B:32:0x0119  */
                        /* JADX WARN: Code duplicated, block: B:33:0x011a A[Catch: IOException -> 0x0148, T4 -> 0x014b, TryCatch #9 {T4 -> 0x014b, IOException -> 0x0148, blocks: (B:30:0x0113, B:33:0x011a, B:34:0x011f, B:43:0x0145), top: B:106:0x0113 }] */
                        /* JADX WARN: Code duplicated, block: B:38:0x0132  */
                        /* JADX WARN: Code duplicated, block: B:40:0x0138 A[Catch: IOException -> 0x01c6, T4 -> 0x01c8, TryCatch #8 {T4 -> 0x01c8, IOException -> 0x01c6, blocks: (B:36:0x012c, B:40:0x0138), top: B:107:0x012c }] */
                        /* JADX WARN: Code duplicated, block: B:42:0x0144  */
                        /* JADX WARN: Code duplicated, block: B:48:0x014e  */
                        /* JADX WARN: Code duplicated, block: B:51:0x0160  */
                        /* JADX WARN: Code duplicated, block: B:52:0x0161 A[Catch: IOException -> 0x01cc, T4 -> 0x01d7, TryCatch #7 {T4 -> 0x01d7, IOException -> 0x01cc, blocks: (B:49:0x014f, B:52:0x0161, B:53:0x0168, B:54:0x0169, B:70:0x01b6, B:71:0x01bd, B:72:0x01be, B:73:0x01c5), top: B:109:0x0130 }] */
                        /* JADX WARN: Code duplicated, block: B:54:0x0169 A[Catch: IOException -> 0x01cc, T4 -> 0x01d7, TryCatch #7 {T4 -> 0x01d7, IOException -> 0x01cc, blocks: (B:49:0x014f, B:52:0x0161, B:53:0x0168, B:54:0x0169, B:70:0x01b6, B:71:0x01bd, B:72:0x01be, B:73:0x01c5), top: B:109:0x0130 }] */
                        /* JADX WARN: Code duplicated, block: B:58:0x017b  */
                        /* JADX WARN: Code duplicated, block: B:60:0x0181  */
                        /* JADX WARN: Code duplicated, block: B:64:0x019a  */
                        /* JADX WARN: Code duplicated, block: B:66:0x01a7  */
                        /* JADX WARN: Code duplicated, block: B:68:0x01aa  */
                        /* JADX WARN: Code duplicated, block: B:69:0x01ad  */
                        /* JADX WARN: Code duplicated, block: B:70:0x01b6 A[Catch: IOException -> 0x01cc, T4 -> 0x01d7, TRY_ENTER, TryCatch #7 {T4 -> 0x01d7, IOException -> 0x01cc, blocks: (B:49:0x014f, B:52:0x0161, B:53:0x0168, B:54:0x0169, B:70:0x01b6, B:71:0x01bd, B:72:0x01be, B:73:0x01c5), top: B:109:0x0130 }] */
                        /* JADX WARN: Code duplicated, block: B:72:0x01be A[Catch: IOException -> 0x01cc, T4 -> 0x01d7, TryCatch #7 {T4 -> 0x01d7, IOException -> 0x01cc, blocks: (B:49:0x014f, B:52:0x0161, B:53:0x0168, B:54:0x0169, B:70:0x01b6, B:71:0x01bd, B:72:0x01be, B:73:0x01c5), top: B:109:0x0130 }] */
                        /* JADX WARN: Code duplicated, block: B:87:0x01d9  */
                        @Override // com.facebook.ads.redexgen.X.TE
                        public final long AHv(NX nx) throws T4 {
                            int identifier;
                            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd;
                            long length;
                            FileInputStream fileInputStream;
                            long jSkip;
                            C4J c4j;
                            long j;
                            long jMin;
                            FileChannel channel;
                            Uri uri = nx.A06;
                            this.A02 = uri;
                            if (TextUtils.equals(A00(218, 11, 42), uri.getScheme())) {
                                identifier = Integer.parseInt((String) AbstractC1722Ln.A01(uri.getLastPathSegment()));
                                A0G(nx);
                                assetFileDescriptorOpenRawResourceFd = this.A05.openRawResourceFd(identifier);
                                this.A01 = assetFileDescriptorOpenRawResourceFd;
                                if (assetFileDescriptorOpenRawResourceFd != null) {
                                    throw new T4(A00(95, 24, 19) + uri, null, 2000);
                                }
                                length = assetFileDescriptorOpenRawResourceFd.getLength();
                                fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
                                this.A03 = fileInputStream;
                                if (length != -1) {
                                    if (nx.A04 <= length) {
                                        throw new T4(null, null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                    }
                                }
                                long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
                                jSkip = fileInputStream.skip(nx.A04 + startOffset) - startOffset;
                                if (jSkip == nx.A04) {
                                    throw new T4(null, null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                }
                                if (length == -1) {
                                    channel = fileInputStream.getChannel();
                                    if (channel.size() == 0) {
                                        c4j = this;
                                        c4j.A00 = -1L;
                                    } else {
                                        c4j = this;
                                        c4j.A00 = channel.size() - channel.position();
                                        if (c4j.A00 >= 0) {
                                            throw new T4(null, null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                        }
                                    }
                                } else {
                                    c4j = this;
                                    c4j.A00 = length - jSkip;
                                    if (c4j.A00 < 0) {
                                        throw new NQ(AdError.REMOTE_ADS_SERVICE_ERROR);
                                    }
                                }
                                if (nx.A03 != -1) {
                                    if (c4j.A00 == -1) {
                                        jMin = nx.A03;
                                    } else {
                                        jMin = Math.min(c4j.A00, nx.A03);
                                    }
                                    c4j.A00 = jMin;
                                }
                                c4j.A04 = true;
                                A0H(nx);
                                j = nx.A03;
                                if (A08[4].length() != 13) {
                                    A08[2] = "LhoEJlWFvHKtz9DNjh2WivGdFPEPIGq3";
                                    if (j != -1) {
                                    }
                                }
                            } else {
                                String scheme = uri.getScheme();
                                String strA00 = A00(199, 16, 29);
                                if (TextUtils.equals(strA00, scheme) && uri.getPathSegments().size() == 1 && ((String) AbstractC1722Ln.A01(uri.getLastPathSegment())).matches(A00(196, 3, 59))) {
                                    try {
                                        identifier = Integer.parseInt((String) AbstractC1722Ln.A01(uri.getLastPathSegment()));
                                    } catch (NumberFormatException unused) {
                                        throw new T4(A00(56, 39, 56), null, 1004);
                                    }
                                } else {
                                    if (!TextUtils.equals(strA00, uri.getScheme())) {
                                        throw new T4(A00(138, 58, 58), null, 1004);
                                    }
                                    String strSubstring = (String) AbstractC1722Ln.A01(uri.getPath());
                                    if (A08[5].length() != 15) {
                                        A08[6] = "dwQCPGDMwEnPPPl3vUFZ";
                                        if (strSubstring.startsWith(A00(0, 1, 104))) {
                                            strSubstring = strSubstring.substring(1);
                                        }
                                        String host = uri.getHost();
                                        identifier = this.A05.getIdentifier((TextUtils.isEmpty(host) ? A00(0, 0, 36) : host + A00(1, 1, 0)) + strSubstring, A00(215, 3, 84), this.A06);
                                        if (identifier == 0) {
                                            throw new T4(A00(119, 19, 11), null, com.ironsource.M9.a.d);
                                        }
                                    }
                                }
                                A0G(nx);
                                try {
                                    assetFileDescriptorOpenRawResourceFd = this.A05.openRawResourceFd(identifier);
                                    this.A01 = assetFileDescriptorOpenRawResourceFd;
                                    if (assetFileDescriptorOpenRawResourceFd != null) {
                                        throw new T4(A00(95, 24, 19) + uri, null, 2000);
                                    }
                                    length = assetFileDescriptorOpenRawResourceFd.getLength();
                                    fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
                                    this.A03 = fileInputStream;
                                    if (length != -1) {
                                        try {
                                            if (nx.A04 <= length) {
                                                throw new T4(null, null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                            }
                                        } catch (T4 e) {
                                            throw e;
                                        } catch (IOException e2) {
                                            e = e2;
                                            throw new T4(null, e, 2000);
                                        }
                                    }
                                    try {
                                        long startOffset2 = assetFileDescriptorOpenRawResourceFd.getStartOffset();
                                        jSkip = fileInputStream.skip(nx.A04 + startOffset2) - startOffset2;
                                        try {
                                            try {
                                                if (jSkip == nx.A04) {
                                                    throw new T4(null, null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                                }
                                                if (length == -1) {
                                                    channel = fileInputStream.getChannel();
                                                    if (channel.size() == 0) {
                                                        c4j = this;
                                                        c4j.A00 = -1L;
                                                    } else {
                                                        c4j = this;
                                                        c4j.A00 = channel.size() - channel.position();
                                                        if (c4j.A00 >= 0) {
                                                            throw new T4(null, null, AdError.REMOTE_ADS_SERVICE_ERROR);
                                                        }
                                                    }
                                                } else {
                                                    c4j = this;
                                                    c4j.A00 = length - jSkip;
                                                    if (c4j.A00 < 0) {
                                                        throw new NQ(AdError.REMOTE_ADS_SERVICE_ERROR);
                                                    }
                                                }
                                                if (nx.A03 != -1) {
                                                    if (c4j.A00 == -1) {
                                                        jMin = nx.A03;
                                                    } else {
                                                        jMin = Math.min(c4j.A00, nx.A03);
                                                    }
                                                    c4j.A00 = jMin;
                                                }
                                                c4j.A04 = true;
                                                A0H(nx);
                                                j = nx.A03;
                                                if (A08[4].length() != 13) {
                                                    A08[2] = "LhoEJlWFvHKtz9DNjh2WivGdFPEPIGq3";
                                                    return j != -1 ? nx.A03 : c4j.A00;
                                                }
                                            } catch (T4 e3) {
                                                throw e3;
                                            } catch (IOException e4) {
                                                e = e4;
                                                throw new T4(null, e, 2000);
                                            }
                                        } catch (T4 e5) {
                                            throw e5;
                                        } catch (IOException e6) {
                                            e = e6;
                                        }
                                    } catch (T4 e7) {
                                        throw e7;
                                    } catch (IOException e8) {
                                        e = e8;
                                    }
                                } catch (Resources.NotFoundException e9) {
                                    throw new T4(null, e9, com.ironsource.M9.a.d);
                                }
                            }
                            throw new RuntimeException();
                        }

                        /* JADX WARN: Bottom block not found for handler: all -> 0x002d */
                        @Override // com.facebook.ads.redexgen.X.TE
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void close() throws com.facebook.ads.redexgen.X.T4 {
                            /*
                                r5 = this;
                                r4 = 0
                                r5.A02 = r4
                                r3 = 2000(0x7d0, float:2.803E-42)
                                r2 = 0
                                java.io.InputStream r0 = r5.A03     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L41
                                if (r0 == 0) goto Lf
                                java.io.InputStream r0 = r5.A03     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L41
                                r0.close()     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L41
                            Lf:
                                r5.A03 = r4
                                android.content.res.AssetFileDescriptor r0 = r5.A01     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L2d
                                if (r0 == 0) goto L1a
                                android.content.res.AssetFileDescriptor r0 = r5.A01     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L2d
                                r0.close()     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L2d
                            L1a:
                                r5.A01 = r4
                                boolean r0 = r5.A04
                                if (r0 == 0) goto L25
                                r5.A04 = r2
                                r5.A0E()
                            L25:
                                return
                            L26:
                                r1 = move-exception
                                com.facebook.ads.redexgen.X.T4 r0 = new com.facebook.ads.redexgen.X.T4     // Catch: java.lang.Throwable -> L2d
                                r0.<init>(r4, r1, r3)     // Catch: java.lang.Throwable -> L2d
                                throw r0     // Catch: java.lang.Throwable -> L2d
                            L2d:
                                r1 = move-exception
                                r5.A01 = r4
                                boolean r0 = r5.A04
                                if (r0 == 0) goto L39
                                r5.A04 = r2
                                r5.A0E()
                            L39:
                                throw r1
                            L3a:
                                r1 = move-exception
                                com.facebook.ads.redexgen.X.T4 r0 = new com.facebook.ads.redexgen.X.T4     // Catch: java.lang.Throwable -> L41
                                r0.<init>(r4, r1, r3)     // Catch: java.lang.Throwable -> L41
                                throw r0     // Catch: java.lang.Throwable -> L41
                            L41:
                                r1 = move-exception
                                r5.A03 = r4
                                android.content.res.AssetFileDescriptor r0 = r5.A01     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L60
                                if (r0 == 0) goto L4d
                                android.content.res.AssetFileDescriptor r0 = r5.A01     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L60
                                r0.close()     // Catch: java.io.IOException -> L59 java.lang.Throwable -> L60
                            L4d:
                                r5.A01 = r4
                                boolean r0 = r5.A04
                                if (r0 == 0) goto L58
                                r5.A04 = r2
                                r5.A0E()
                            L58:
                                throw r1
                            L59:
                                r1 = move-exception
                                com.facebook.ads.redexgen.X.T4 r0 = new com.facebook.ads.redexgen.X.T4     // Catch: java.lang.Throwable -> L60
                                r0.<init>(r4, r1, r3)     // Catch: java.lang.Throwable -> L60
                                throw r0     // Catch: java.lang.Throwable -> L60
                            L60:
                                r3 = move-exception
                                r5.A01 = r4
                                boolean r0 = r5.A04
                                if (r0 == 0) goto L8b
                                r5.A04 = r2
                                java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4J.A08
                                r0 = 0
                                r1 = r2[r0]
                                r0 = 7
                                r0 = r2[r0]
                                int r1 = r1.length()
                                int r0 = r0.length()
                                if (r1 == r0) goto L81
                                java.lang.RuntimeException r0 = new java.lang.RuntimeException
                                r0.<init>()
                                throw r0
                            L81:
                                java.lang.String[] r2 = com.facebook.ads.redexgen.X.C4J.A08
                                java.lang.String r1 = "m1s9kylqWyKF"
                                r0 = 5
                                r2[r0] = r1
                                r5.A0E()
                            L8b:
                                throw r3
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C4J.close():void");
                        }

                        @Override // com.facebook.ads.redexgen.X.KR
                        public final int read(byte[] bArr, int i, int i2) throws T4 {
                            if (i2 == 0) {
                                return 0;
                            }
                            if (this.A00 == 0) {
                                return -1;
                            }
                            try {
                                if (this.A00 != -1) {
                                    i2 = (int) Math.min(this.A00, i2);
                                }
                                int i3 = ((InputStream) N1.A0f(this.A03)).read(bArr, i, i2);
                                if (i3 == -1) {
                                    if (this.A00 == -1) {
                                        return -1;
                                    }
                                    throw new T4(A00(2, 54, 12), new EOFException(), 2000);
                                }
                                if (this.A00 != -1) {
                                    this.A00 -= (long) i3;
                                }
                                A0F(i3);
                                return i3;
                            } catch (IOException e) {
                                throw new T4(null, e, 2000);
                            }
                        }
                    };
                    A09(this.A04);
                }
                return this.A04;
            }

            private TE A05() {
                if (this.A05 == null) {
                    try {
                        this.A05 = (TE) Class.forName(A07(157, 66, 42)).getConstructor(new Class[0]).newInstance(new Object[0]);
                        A09(this.A05);
                    } catch (ClassNotFoundException unused) {
                        MV.A07(A07(85, 17, 52), A07(15, 70, 95));
                    } catch (Exception e) {
                        throw new RuntimeException(A07(102, 34, 40), e);
                    }
                    if (this.A05 == null) {
                        this.A05 = this.A08;
                    }
                }
                TE te = this.A05;
                if (A0C[5].length() != 6) {
                    throw new RuntimeException();
                }
                A0C[3] = "O2PCZ67RFUoAeaayXg7oBI7fNvGALE0b";
                return te;
            }

            private TE A06() {
                if (this.A06 == null) {
                    this.A06 = new C4I();
                    A09(this.A06);
                }
                return this.A06;
            }

            public static String A07(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 7);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A08() {
                A0B = new byte[]{67, Ascii.CR, 2, 8, Ascii.RS, 3, 5, 8, 51, Ascii.CR, Ascii.US, Ascii.US, 9, Ascii.CAN, 67, Ascii.EM, 44, 44, p005kotlin.io.encoding.Base64.padSymbol, 53, 40, 44, 49, 54, 63, 120, 44, 55, 120, 40, 52, 57, 33, 120, 10, Ascii.FF, Ascii.NAK, 8, 120, 43, 44, 42, p005kotlin.io.encoding.Base64.padSymbol, 57, 53, 120, 47, 49, 44, 48, 55, 45, 44, 120, 60, p005kotlin.io.encoding.Base64.padSymbol, 40, p005kotlin.io.encoding.Base64.padSymbol, 54, 60, 49, 54, 63, 120, 55, 54, 120, 44, 48, p005kotlin.io.encoding.Base64.padSymbol, 120, 10, Ascii.FF, Ascii.NAK, 8, 120, p005kotlin.io.encoding.Base64.padSymbol, 32, 44, p005kotlin.io.encoding.Base64.padSymbol, 54, 43, 49, 55, 54, 119, 86, 85, 82, 70, 95, 71, 119, 82, 71, 82, 96, 92, 70, 65, 80, 86, 106, 93, 93, SignedBytes.MAX_POWER_OF_TWO, 93, Ascii.SI, 70, 65, 92, 91, 78, 65, 91, 70, 78, 91, 70, 65, 72, Ascii.SI, 125, 123, 98, 127, Ascii.SI, 74, 87, 91, 74, 65, 92, 70, SignedBytes.MAX_POWER_OF_TWO, 65, 3, Ascii.FF, 6, Ascii.DLE, Ascii.CR, Ascii.VT, 6, 76, Ascii.DLE, 7, 17, Ascii.CR, Ascii.ETB, Ascii.DLE, 1, 7, 5, Ascii.ETB, Ascii.ETB, 1, Ascii.DLE, 78, 66, SignedBytes.MAX_POWER_OF_TWO, 3, 75, 76, 78, 72, 79, 66, 66, 70, 3, 76, 73, 94, 3, 74, 66, 66, 74, 65, 72, 3, 76, 67, 73, 95, 66, 68, 73, 3, 72, 85, 66, 93, 65, 76, 84, 72, 95, Ascii.US, 3, 72, 85, 89, 3, 95, 89, SignedBytes.MAX_POWER_OF_TWO, 93, 3, 127, 89, SignedBytes.MAX_POWER_OF_TWO, 93, 105, 76, 89, 76, 126, 66, 88, 95, 78, 72, 58, 54, 55, 45, 60, 55, 45, 71, 66, 87, 66, 41, 58, 44, 41, 62, 40, 52, 46, 41, 56, 62, 125, 123, 98, 127, 126, 111, 123};
            }

            private void A09(TE te) {
                for (int i = 0; i < this.A0A.size(); i++) {
                    te.A4T(this.A0A.get(i));
                }
            }

            private void A0A(TE te, InterfaceC1768Ni interfaceC1768Ni) {
                if (te != null) {
                    te.A4T(interfaceC1768Ni);
                }
            }

            @Override // com.facebook.ads.redexgen.X.TE
            public final void A4T(InterfaceC1768Ni interfaceC1768Ni) {
                AbstractC1722Ln.A01(interfaceC1768Ni);
                this.A08.A4T(interfaceC1768Ni);
                this.A0A.add(interfaceC1768Ni);
                A0A(this.A03, interfaceC1768Ni);
                A0A(this.A00, interfaceC1768Ni);
                A0A(this.A01, interfaceC1768Ni);
                A0A(this.A05, interfaceC1768Ni);
                A0A(this.A06, interfaceC1768Ni);
                A0A(this.A02, interfaceC1768Ni);
                A0A(this.A04, interfaceC1768Ni);
            }

            @Override // com.facebook.ads.redexgen.X.TE
            public final Map<String, List<String>> A9W() {
                return this.A07 == null ? Collections.emptyMap() : this.A07.A9W();
            }

            @Override // com.facebook.ads.redexgen.X.TE
            public final Uri AA2() {
                if (this.A07 == null) {
                    return null;
                }
                return this.A07.AA2();
            }

            @Override // com.facebook.ads.redexgen.X.TE
            public final long AHv(NX nx) throws IOException {
                AbstractC1722Ln.A08(this.A07 == null);
                String scheme = nx.A06.getScheme();
                if (N1.A1A(nx.A06)) {
                    String path = nx.A06.getPath();
                    if (path == null || !path.startsWith(A07(0, 15, kotlin.fh.h1))) {
                        TE teA03 = A03();
                        if (A0C[4].charAt(12) == 'b') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A0C;
                        strArr[0] = "otnWYl13HUOQLt7bSrhkAVrc";
                        strArr[1] = "xWfSLVE718mAasLO3I3AjPIs";
                        this.A07 = teA03;
                    } else {
                        this.A07 = A00();
                    }
                } else if (A07(152, 5, 99).equals(scheme)) {
                    this.A07 = A00();
                } else if (A07(223, 7, 94).equals(scheme)) {
                    this.A07 = A01();
                } else if (A07(245, 4, 8).equals(scheme)) {
                    this.A07 = A05();
                } else if (A07(249, 3, 12).equals(scheme)) {
                    TE teA06 = A06();
                    if (A0C[5].length() != 6) {
                        throw new RuntimeException();
                    }
                    A0C[6] = "DFyk3wP3M4Io6PrDIp9QpmsbD";
                    this.A07 = teA06;
                } else if (A07(230, 4, 36).equals(scheme)) {
                    this.A07 = A02();
                } else if (A07(234, 11, 92).equals(scheme) || A07(136, 16, 101).equals(scheme)) {
                    this.A07 = A04();
                } else {
                    TE te = this.A08;
                    String[] strArr2 = A0C;
                    if (strArr2[0].length() != strArr2[1].length()) {
                        A0C[5] = "zFUlNW";
                        this.A07 = te;
                    } else {
                        A0C[4] = "4B5nLzgVQjmjHPClZgF09TYaq2uT9Ypp";
                        this.A07 = te;
                    }
                }
                return this.A07.AHv(nx);
            }

            @Override // com.facebook.ads.redexgen.X.TE
            public final void close() throws IOException {
                if (this.A07 != null) {
                    try {
                        this.A07.close();
                    } finally {
                        this.A07 = null;
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.KR
            public final int read(byte[] bArr, int i, int i2) throws IOException {
                return ((TE) AbstractC1722Ln.A01(this.A07)).read(bArr, i, i2);
            }
        };
        if (this.A02 != null) {
            r1.A4T(this.A02);
        }
        return r1;
    }
}
