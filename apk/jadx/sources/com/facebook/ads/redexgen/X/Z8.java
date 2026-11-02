package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Z8 {
    public static String[] A01 = {"K8c2PDUhA08QEb0fsw1E8pqH2BL6gelB", "8h5MGTSozqA7eXfqKAzoNXZ34GyFmhfQ", "nQ6TvOleVO0PQIjN6lD6dOMTYkHXOE6S", "N", "DmBHlsaTS3PuClURBzXRih9F5DY3yYcf", "Ch5RLIatCpQOwjPtL2aKENPXdGHTRdOe", "vNS3YCxzKGkEUezS4txAt4W6QdMxkbAm", "CO5nSVqfXD4UNWijMQbKcjF1H2YAgeUo"};
    public final C1744Mk A00 = new C1744Mk(10);

    public final Metadata A00(Q9 q9, InterfaceC2074a0 interfaceC2074a0) throws IOException {
        int i = 0;
        Metadata metadataA0S = null;
        while (true) {
            try {
                q9.AI6(this.A00.A0l(), 0, 10);
                C1744Mk c1744Mk = this.A00;
                String[] strArr = A01;
                if (strArr[4].charAt(6) != strArr[5].charAt(6)) {
                    throw new RuntimeException();
                }
                A01[2] = "KDh0PMd98DhiQKe9MzDyGCqCr7augWx7";
                c1744Mk.A0f(0);
                if (this.A00.A0K() != 4801587) {
                    q9.AK3();
                    q9.A4X(i);
                    return metadataA0S;
                }
                this.A00.A0g(3);
                int iA0H = this.A00.A0H();
                int i2 = iA0H + 10;
                if (metadataA0S == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.A00.A0l(), 0, bArr, 0, 10);
                    q9.AI6(bArr, 10, iA0H);
                    metadataA0S = new C8V(interfaceC2074a0).A0S(bArr, i2);
                } else {
                    q9.A4X(iA0H);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
    }
}
