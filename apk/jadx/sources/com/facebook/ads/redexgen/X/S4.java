package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.emsg.EventMessage;
import com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyInfo;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.PrivateCommand;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.SpliceInsertCommand;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.SpliceNullCommand;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.SpliceScheduleCommand;
import com.facebook.ads.androidx.media3.extractor.metadata.scte35.TimeSignalCommand;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class S4 implements TQ {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 63);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{116, 65, 65, 80, 88, 69, 65, 80, 81, Ascii.NAK, 65, 90, Ascii.NAK, 86, 71, 80, 84, 65, 80, Ascii.NAK, 81, 80, 86, 90, 81, 80, 71, Ascii.NAK, 83, 90, 71, Ascii.NAK, SignedBytes.MAX_POWER_OF_TWO, 91, 70, SignedBytes.MAX_POWER_OF_TWO, 69, 69, 90, 71, 65, 80, 81, Ascii.NAK, 120, 124, 120, 112, Ascii.NAK, 65, 76, 69, 80, Ascii.SI, Ascii.NAK, Ascii.FF, Ascii.GS, Ascii.GS, 1, 4, Ascii.SO, Ascii.FF, Ascii.EM, 4, 2, 3, 66, 4, 9, 94, 19, 2, 2, Ascii.RS, Ascii.ESC, 17, 19, 6, Ascii.ESC, Ascii.GS, Ascii.FS, 93, 10, 95, Ascii.ETB, Ascii.US, 1, Ascii.NAK, 35, 50, 50, 46, 43, 33, 35, 54, 43, 45, 44, 109, 58, 111, 43, 33, 59, 51, 34, 34, 62, 59, 49, 51, 38, 59, Base64.padSymbol, 60, 125, 42, 127, 33, 49, 38, 55, 97, 103};
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:6:0x000b  */
    @Override // com.facebook.ads.redexgen.X.TQ
    public final InterfaceC2056Zi A5s(VC vc) {
        byte b;
        String str = vc.A0W;
        if (str != null) {
            switch (str.hashCode()) {
                case -1348231605:
                    if (!str.equals(A00(88, 17, 125))) {
                        b = -1;
                    } else {
                        b = 3;
                    }
                    break;
                case -1248341703:
                    if (!str.equals(A00(55, 15, 82))) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 1154383568:
                    if (!str.equals(A00(70, 18, 77))) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                case 1652648887:
                    if (!str.equals(A00(105, 20, 109))) {
                        b = -1;
                    } else {
                        b = 2;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    return new C8V();
                case 1:
                    return new AbstractC1818Pn() { // from class: com.facebook.ads.redexgen.X.8d
                        private final EventMessage A00(C1744Mk c1744Mk) {
                            return new EventMessage((String) AbstractC1722Ln.A01(c1744Mk.A0U()), (String) AbstractC1722Ln.A01(c1744Mk.A0U()), c1744Mk.A0P(), c1744Mk.A0P(), Arrays.copyOfRange(c1744Mk.A0l(), c1744Mk.A09(), c1744Mk.A0A()));
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC1818Pn
                        public final Metadata A0R(C13968e c13968e, ByteBuffer byteBuffer) {
                            return new Metadata(A00(new C1744Mk(byteBuffer.array(), byteBuffer.limit())));
                        }
                    };
                case 2:
                    return new AbstractC1818Pn() { // from class: com.facebook.ads.redexgen.X.8O
                        public static String[] A03 = {"n3oSDOjILC8nkK5MDeJcfvd5oZ0pMGYd", "8IIKAqVl32mc7rvtt79c8", "7cqAUWop00", "jl1NLvbQZHp5M49mY1w", "LW8wdKMMkXQQjNMcwxf6tEQUjrCCIDcM", "IaGaQJUZcnrByaVErsY8RqppJ8ZqdxUO", "7be1BZH3Acn4CZRXBqTo9OU", "bpF8bHI2ZO8AAE1EATMBc5FWdgCLYhKc"};
                        public C1752Ms A00;
                        public final C1744Mk A02 = new C1744Mk();
                        public final C1743Mj A01 = new C1743Mj();

                        @Override // com.facebook.ads.redexgen.X.AbstractC1818Pn
                        public final Metadata A0R(C13968e c13968e, ByteBuffer byteBuffer) {
                            if (this.A00 == null || c13968e.A00 != this.A00.A04()) {
                                this.A00 = new C1752Ms(c13968e.A01);
                                this.A00.A05(c13968e.A01 - c13968e.A00);
                            }
                            byte[] bArrArray = byteBuffer.array();
                            int iLimit = byteBuffer.limit();
                            this.A02.A0j(bArrArray, iLimit);
                            this.A01.A0E(bArrArray, iLimit);
                            this.A01.A09(39);
                            long jA04 = (((long) this.A01.A04(1)) << 32) | ((long) this.A01.A04(32));
                            this.A01.A09(20);
                            int iA04 = this.A01.A04(12);
                            int iA05 = this.A01.A04(8);
                            Metadata.Entry spliceNullCommand = null;
                            this.A02.A0g(14);
                            switch (iA05) {
                                case 0:
                                    spliceNullCommand = new SpliceNullCommand();
                                    break;
                                case 4:
                                    spliceNullCommand = SpliceScheduleCommand.A00(this.A02);
                                    break;
                                case 5:
                                    C1744Mk c1744Mk = this.A02;
                                    if (A03[6].length() == 8) {
                                        String[] strArr = A03;
                                        strArr[5] = "N0llC2hhCUiYKwfEbG1UWX2Qu12EVLOO";
                                        strArr[7] = "nGztm6VWCjrvHD3EpfBx23VS1fLgIjH1";
                                        spliceNullCommand = SpliceInsertCommand.A00(c1744Mk, jA04, this.A00);
                                    } else {
                                        A03[2] = "JI47Zgd8Jt";
                                        spliceNullCommand = SpliceInsertCommand.A00(c1744Mk, jA04, this.A00);
                                    }
                                    break;
                                case 6:
                                    spliceNullCommand = TimeSignalCommand.A01(this.A02, jA04, this.A00);
                                    break;
                                case 255:
                                    spliceNullCommand = PrivateCommand.A00(this.A02, iA04, jA04);
                                    break;
                            }
                            String[] strArr2 = A03;
                            if (strArr2[5].charAt(15) != strArr2[7].charAt(15)) {
                                throw new RuntimeException();
                            }
                            A03[6] = "jcyPVlcDX1DJIP38";
                            return spliceNullCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(spliceNullCommand);
                        }
                    };
                case 3:
                    return new AbstractC1818Pn() { // from class: com.facebook.ads.redexgen.X.8c
                        public static byte[] A02;
                        public static String[] A03 = {"ORhDGRCfm6ji9bBYM9TfwHjExpKLrjiC", "urTTImJSFhm1bLt6", "I4XPTFyDLwRuAuwsqLrx1rwv5", "QcAIKtpHrYMdobtRMd98", "sEetp07C1F3FvLBnnYv9gPHrnpBZK9mL", "w4eoNYAe", "GteP5to6gbvwc9bhn3Sa", "ooDzhzhSJUfGbMBNMhdRTCSemPznLcyQ"};
                        public static final Pattern A04;
                        public final CharsetDecoder A01 = XA.A05.newDecoder();
                        public final CharsetDecoder A00 = XA.A00.newDecoder();

                        static {
                            A02();
                            A04 = Pattern.compile(A00(0, 14, 41), 32);
                        }

                        public static String A00(int i, int i2, int i3) {
                            byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                            for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                                bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 24);
                            }
                            return new String(bArrCopyOfRange);
                        }

                        private String A01(ByteBuffer byteBuffer) {
                            try {
                                String string = this.A01.decode(byteBuffer).toString();
                                this.A01.reset();
                                byteBuffer.rewind();
                                return string;
                            } catch (CharacterCodingException unused) {
                                this.A01.reset();
                                byteBuffer.rewind();
                                try {
                                    return this.A00.decode(byteBuffer).toString();
                                } catch (CharacterCodingException unused2) {
                                    return null;
                                } finally {
                                    this.A00.reset();
                                    byteBuffer.rewind();
                                }
                            } catch (Throwable th) {
                                this.A01.reset();
                                byteBuffer.rewind();
                                throw th;
                            }
                        }

                        public static void A02() {
                            A02 = new byte[]{Ascii.EM, Ascii.US, Ascii.SUB, Ascii.SO, Ascii.CAN, Ascii.FF, Ascii.SYN, Ascii.EM, Ascii.US, Ascii.ESC, Ascii.SO, Ascii.CAN, Ascii.SYN, 10, 95, 88, 94, 73, 77, 65, 88, 69, 88, SignedBytes.MAX_POWER_OF_TWO, 73, 84, 83, 85, 66, 70, 74, 82, 85, 75};
                        }

                        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
                        /* JADX WARN: Code duplicated, block: B:17:0x0065  */
                        @Override // com.facebook.ads.redexgen.X.AbstractC1818Pn
                        public final Metadata A0R(C13968e c13968e, ByteBuffer byteBuffer) {
                            byte b2;
                            String strA01 = A01(byteBuffer);
                            byte[] bArr = new byte[byteBuffer.limit()];
                            byteBuffer.get(bArr);
                            if (strA01 == null) {
                                return new Metadata(new IcyInfo(bArr, null, null));
                            }
                            String str2 = null;
                            String str3 = null;
                            String[] strArr = A03;
                            if (strArr[6].length() != strArr[3].length()) {
                                throw new RuntimeException();
                            }
                            A03[5] = "PyFrCZXe0xAxDdfiClsBOvQlSK";
                            Matcher matcher = A04.matcher(strA01);
                            for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
                                String strGroup = matcher.group(1);
                                String strGroup2 = matcher.group(2);
                                if (strGroup != null) {
                                    String strA02 = XC.A01(strGroup);
                                    switch (strA02.hashCode()) {
                                        case -315603473:
                                            if (strA02.equals(A00(25, 9, 63))) {
                                                b2 = 1;
                                            } else {
                                                b2 = -1;
                                            }
                                            break;
                                        case 1646559960:
                                            if (strA02.equals(A00(14, 11, 52))) {
                                                b2 = 0;
                                            } else {
                                                b2 = -1;
                                            }
                                            break;
                                        default:
                                            b2 = -1;
                                            break;
                                    }
                                    switch (b2) {
                                        case 0:
                                            str2 = strGroup2;
                                            break;
                                        case 1:
                                            str3 = strGroup2;
                                            break;
                                    }
                                }
                            }
                            return new Metadata(new IcyInfo(bArr, str2, str3));
                        }
                    };
            }
        }
        throw new IllegalArgumentException(A00(0, 55, 10) + str);
    }

    @Override // com.facebook.ads.redexgen.X.TQ
    public final boolean ALg(VC vc) {
        String str = vc.A0W;
        return A00(55, 15, 82).equals(str) || A00(70, 18, 77).equals(str) || A00(105, 20, 109).equals(str) || A00(88, 17, 125).equals(str);
    }
}
