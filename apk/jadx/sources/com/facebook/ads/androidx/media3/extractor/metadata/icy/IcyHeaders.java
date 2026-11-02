package com.facebook.ads.androidx.media3.extractor.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.X.C2065Zr;
import com.facebook.ads.redexgen.X.L3;
import com.facebook.ads.redexgen.X.N1;
import com.facebook.ads.redexgen.X.VC;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class IcyHeaders implements Metadata.Entry {
    public static byte[] A06;
    public static String[] A07 = {"0IguTEw4U6C2NMcdViEhCLNrP1HBe", "yjHmTg2gQICt2PVTiETqFkORSp", "rZOgJCuyaxsYqLcXBTq4BDh2Xjgm", "fHfz63T2aeiVkvt9", "XnZuLu5RJoBgAGeNpl0P4Sbvu2", "fhjC2OfPeM4M2KScJ5GNV6JP3cG9r", "ix1hMeqSOqhtFJaBainpvHaLGDfTe", "LaCaPBF2"};
    public static final Parcelable.Creator<IcyHeaders> CREATOR;
    public final int A00;
    public final int A01;
    public final String A02;
    public final String A03;
    public final String A04;
    public final boolean A05;

    static {
        A01();
        CREATOR = new C2065Zr();
    }

    public IcyHeaders(Parcel parcel) {
        this.A00 = parcel.readInt();
        this.A02 = parcel.readString();
        this.A03 = parcel.readString();
        this.A04 = parcel.readString();
        this.A05 = N1.A1C(parcel);
        this.A01 = parcel.readInt();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
            if (A07[6].length() != 29) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[0] = "8JA8MZTI0WIsqu6T3uF5melGPUyys";
            strArr[5] = "qOom5UOYrwWd2zc5O0W3JqQ6ci33z";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{106, 100, 104, 42, 33, 60, 58, 41, 60, 45, 117, 36, 42, 38, 97, 99, 104, 116, 99, 59, 36, 126, 114, 63, 55, 38, 51, 54, 51, 38, 51, Ascii.ESC, 60, 38, 55, 32, 36, 51, 62, 111, 65, 107, 113, SignedBytes.MAX_POWER_OF_TWO, 109, 105, 108, 109, 122, 123, 50, 40, 102, 105, 101, 109, 53, 42};
    }

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] AAE() {
        return L3.A01(this);
    }

    @Override // com.facebook.ads.androidx.media3.common.Metadata.Entry
    public final /* synthetic */ VC AAF() {
        return L3.A00(this);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0068  */
    /* JADX WARN: Code duplicated, block: B:25:0x007d  */
    /* JADX WARN: Code duplicated, block: B:27:0x008b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0091  */
    /* JADX WARN: Code duplicated, block: B:32:0x0098 A[DONT_INVERT] */
    public final boolean equals(Object obj) {
        boolean zA1E;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        IcyHeaders icyHeaders = (IcyHeaders) obj;
        if (this.A00 == icyHeaders.A00) {
            boolean zA1E2 = N1.A1E(this.A02, icyHeaders.A02);
            if (A07[6].length() != 29) {
                throw new RuntimeException();
            }
            String[] strArr = A07;
            strArr[1] = "JpT9CTUxMPKPlvoxjRH7byhB25";
            strArr[4] = "hAXsDCyi4RpVequHi7UEAwneWC";
            if (zA1E2) {
                boolean zA1E3 = N1.A1E(this.A03, icyHeaders.A03);
                String[] strArr2 = A07;
                if (strArr2[0].length() != strArr2[5].length()) {
                    A07[2] = "NVQ5SALKGdqVlmStLLDhWOO";
                    if (zA1E3) {
                        zA1E = N1.A1E(this.A04, icyHeaders.A04);
                        if (A07[2].length() != 25) {
                            String[] strArr3 = A07;
                            strArr3[1] = "4CCF8H7kr34MtfYiTjDNzJjNGh";
                            strArr3[4] = "u0Grbcu5l5FMz4mkqOaA0zRQaQ";
                            if (zA1E) {
                                if (this.A05 != icyHeaders.A05 && this.A01 == icyHeaders.A01) {
                                    return true;
                                }
                            }
                        } else if (zA1E) {
                            if (this.A05 != icyHeaders.A05) {
                            }
                        }
                    }
                } else {
                    String[] strArr4 = A07;
                    strArr4[0] = "hFCFlWjk6QqfprmCExCbZpsEchnUQ";
                    strArr4[5] = "dZJ5theZhu30X0X0QULvdHaGEyEoC";
                    if (zA1E3) {
                        zA1E = N1.A1E(this.A04, icyHeaders.A04);
                        if (A07[2].length() != 25) {
                            String[] strArr5 = A07;
                            strArr5[1] = "4CCF8H7kr34MtfYiTjDNzJjNGh";
                            strArr5[4] = "u0Grbcu5l5FMz4mkqOaA0zRQaQ";
                            if (zA1E) {
                                if (this.A05 != icyHeaders.A05) {
                                }
                            }
                        } else if (zA1E) {
                            if (this.A05 != icyHeaders.A05) {
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((((((((17 * 31) + this.A00) * 31) + (this.A02 != null ? this.A02.hashCode() : 0)) * 31) + (this.A03 != null ? this.A03.hashCode() : 0)) * 31) + (this.A04 != null ? this.A04.hashCode() : 0)) * 31) + (this.A05 ? 1 : 0)) * 31;
        String[] strArr = A07;
        if (strArr[0].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A07[2] = "jo4bIXacV69BRUxSfoYGijRE2uUlXO";
        return iHashCode + this.A01;
    }

    public final String toString() {
        return A00(40, 18, 124) + this.A03 + A00(11, 10, 114) + this.A02 + A00(0, 11, 60) + this.A00 + A00(21, 19, 38) + this.A01;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.A00);
        parcel.writeString(this.A02);
        parcel.writeString(this.A03);
        parcel.writeString(this.A04);
        N1.A0w(parcel, this.A05);
        parcel.writeInt(this.A01);
    }
}
