package kotlin;

import com.google.common.base.Ascii;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
abstract class hx3 {
    private static final c a;
    static final boolean b;

    public static class a {
        private static char a(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws np1 {
            if (!a(b2)) {
                if ((((b2 + 112) + (b << Ascii.FS)) >> 30) == 0 && !a(b3) && !a(b4)) {
                    int iE = ((b & 7) << 18) | (e(b2) << 12) | (e(b3) << 6) | e(b4);
                    cArr[i] = a(iE);
                    cArr[i + 1] = b(iE);
                    return;
                }
            }
            throw np1.d();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void a(byte b, byte b2, byte b3, char[] cArr, int i) throws np1 {
            if (a(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || a(b3)))) {
                throw np1.d();
            }
            cArr[i] = (char) (((b & Ascii.SI) << 12) | (e(b2) << 6) | e(b3));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void a(byte b, byte b2, char[] cArr, int i) throws np1 {
            if (b < -62 || a(b2)) {
                throw np1.d();
            }
            cArr[i] = (char) (((b & Ascii.US) << 6) | e(b2));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void a(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        private static boolean a(byte b) {
            return b > -65;
        }

        private static char b(int i) {
            return (char) ((i & IronSourceError.ERROR_RV_SHOW_CALLED_WRONG_STATE) + 56320);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(byte b) {
            return b >= 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean c(byte b) {
            return b < -16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean d(byte b) {
            return b < -32;
        }

        private static int e(byte b) {
            return b & 63;
        }
    }

    public static final class b extends c {
        @Override // ads_mobile_sdk.hx3.c
        public int a(String str, byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            char cCharAt;
            int length = str.length();
            int i5 = i + i2;
            int i6 = 0;
            while (i6 < length && (i4 = i6 + i) < i5 && (cCharAt = str.charAt(i6)) < 128) {
                bArr[i4] = (byte) cCharAt;
                i6++;
            }
            if (i6 == length) {
                return i + length;
            }
            int i7 = i + i6;
            while (i6 < length) {
                char cCharAt2 = str.charAt(i6);
                if (cCharAt2 < 128 && i7 < i5) {
                    bArr[i7] = (byte) cCharAt2;
                    i7++;
                } else if (cCharAt2 < 2048 && i7 <= i5 - 2) {
                    int i8 = i7 + 1;
                    bArr[i7] = (byte) ((cCharAt2 >>> 6) | 960);
                    i7 += 2;
                    bArr[i8] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i7 > i5 - 3) {
                        if (i7 > i5 - 4) {
                            if (55296 > cCharAt2 || cCharAt2 > 57343 || ((i3 = i6 + 1) != str.length() && Character.isSurrogatePair(cCharAt2, str.charAt(i3)))) {
                                throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
                            }
                            return b(str, bArr, i, i2);
                        }
                        i6++;
                        if (i6 != str.length()) {
                            char cCharAt3 = str.charAt(i6);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                                bArr[i7 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i9 = i7 + 3;
                                bArr[i7 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i7 += 4;
                                bArr[i9] = (byte) ((codePoint & 63) | 128);
                            }
                        }
                        return b(str, bArr, i, i2);
                    }
                    bArr[i7] = (byte) ((cCharAt2 >>> '\f') | 480);
                    int i10 = i7 + 2;
                    bArr[i7 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    i7 += 3;
                    bArr[i10] = (byte) ((cCharAt2 & '?') | 128);
                }
                i6++;
            }
            return i7;
        }

        @Override // ads_mobile_sdk.hx3.c
        public String a(byte[] bArr, int i, int i2) throws np1 {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                if (!a.b(b)) {
                    break;
                }
                i++;
                a.a(b, cArr, i4);
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = bArr[i];
                if (a.b(b2)) {
                    a.a(b2, cArr, i5);
                    i5++;
                    i = i6;
                    while (i < i3) {
                        byte b3 = bArr[i];
                        if (!a.b(b3)) {
                            break;
                        }
                        i++;
                        a.a(b3, cArr, i5);
                        i5++;
                    }
                } else if (a.d(b2)) {
                    if (i6 >= i3) {
                        throw np1.d();
                    }
                    i += 2;
                    a.a(b2, bArr[i6], cArr, i5);
                    i5++;
                } else if (a.c(b2)) {
                    if (i6 >= i3 - 1) {
                        throw np1.d();
                    }
                    int i7 = i + 2;
                    i += 3;
                    a.a(b2, bArr[i6], bArr[i7], cArr, i5);
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw np1.d();
                    }
                    byte b4 = bArr[i6];
                    int i8 = i + 3;
                    byte b5 = bArr[i + 2];
                    i += 4;
                    a.a(b2, b4, b5, bArr[i8], cArr, i5);
                    i5 += 2;
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // ads_mobile_sdk.hx3.c
        public boolean a() {
            return false;
        }
    }

    public static abstract class c {
        public int a(String str) {
            int length = str.length();
            int i = 0;
            while (i < length && str.charAt(i) < 128) {
                i++;
            }
            int iA = length;
            while (i < length) {
                char cCharAt = str.charAt(i);
                if (cCharAt >= 2048) {
                    try {
                        iA += hx3.a(str, i);
                        break;
                    } catch (f unused) {
                        return str.getBytes(StandardCharsets.UTF_8).length;
                    }
                }
                iA += (127 - cCharAt) >>> 31;
                i++;
            }
            if (iA >= length) {
                return iA;
            }
            throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) iA) + 4294967296L));
        }

        public abstract int a(String str, byte[] bArr, int i, int i2);

        public abstract String a(byte[] bArr, int i, int i2) throws np1;

        public abstract boolean a();

        public int b(String str, byte[] bArr, int i, int i2) {
            byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
            if (bytes.length - i > i2) {
                throw new ArrayIndexOutOfBoundsException("Not enough space in output buffer to encode UTF-8 string");
            }
            System.arraycopy(bytes, 0, bArr, i, bytes.length);
            return i + bytes.length;
        }
    }

    public static class d extends c {
        @Override // ads_mobile_sdk.hx3.c
        public int a(String str, byte[] bArr, int i, int i2) {
            return b(str, bArr, i, i2);
        }

        @Override // ads_mobile_sdk.hx3.c
        public String a(byte[] bArr, int i, int i2) throws np1 {
            Charset charset = StandardCharsets.UTF_8;
            String str = new String(bArr, i, i2, charset);
            if (str.indexOf(65533) >= 0 && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i, i2 + i))) {
                throw np1.d();
            }
            return str;
        }

        @Override // ads_mobile_sdk.hx3.c
        public boolean a() {
            return true;
        }
    }

    public static final class e extends d {
        private static final Method a = b();

        private static Method b() {
            try {
                return String.class.getMethod("encodedLength", Charset.class);
            } catch (ReflectiveOperationException unused) {
                return null;
            }
        }

        public static boolean c() {
            return a != null;
        }

        @Override // ads_mobile_sdk.hx3.c
        public int a(String str) {
            try {
                return ((Integer) a.invoke(str, StandardCharsets.UTF_8)).intValue();
            } catch (ReflectiveOperationException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public static class f extends Exception {
        public f(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    static {
        c cVarA = a();
        a = cVarA;
        b = cVarA.a();
    }

    public static int a(String str) {
        return a.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int a(String str, int i) throws f {
        int length = str.length();
        int i2 = 0;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 2048) {
                i2 += (127 - cCharAt) >>> 31;
            } else {
                i2 += 2;
                if (55296 <= cCharAt && cCharAt <= 57343) {
                    if (Character.codePointAt(str, i) < 65536) {
                        throw new f(i, length);
                    }
                    i++;
                }
            }
            i++;
        }
        return i2;
    }

    public static int a(String str, byte[] bArr, int i, int i2) {
        return a.a(str, bArr, i, i2);
    }

    private static c a() {
        if (gi.b()) {
            return new b();
        }
        try {
            if (System.getenv("PROTOBUF_FORCE_MOBILE_UTF8_PROCESSOR_FOR_TESTING") != null) {
                return new b();
            }
        } catch (SecurityException unused) {
        }
        return e.c() ? new e() : new d();
    }

    public static String a(byte[] bArr, int i, int i2) throws np1 {
        return i2 == 0 ? "" : a.a(bArr, i, i2);
    }

    public static boolean a(byte[] bArr) {
        return c(bArr, 0, bArr.length);
    }

    public static boolean b(byte[] bArr, int i, int i2) {
        return c(bArr, i, i2);
    }

    private static boolean c(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            return true;
        }
        return d(bArr, i, i2);
    }

    private static boolean d(byte[] bArr, int i, int i2) {
        while (i < i2) {
            int i3 = i + 1;
            byte b2 = bArr[i];
            if (b2 < 0) {
                if (b2 < -32) {
                    if (i3 < i2 && b2 >= -62) {
                        i += 2;
                        if (bArr[i3] > -65) {
                        }
                    }
                    return false;
                }
                if (b2 < -16) {
                    if (i3 >= i2 - 1) {
                        return false;
                    }
                    int i4 = i + 2;
                    byte b3 = bArr[i3];
                    if (b3 <= -65 && ((b2 != -32 || b3 >= -96) && (b2 != -19 || b3 < -96))) {
                        i += 3;
                        if (bArr[i4] > -65) {
                        }
                    }
                    return false;
                }
                if (i3 >= i2 - 2) {
                    return false;
                }
                int i5 = i + 2;
                byte b4 = bArr[i3];
                if (b4 <= -65) {
                    if ((((b4 + 112) + (b2 << Ascii.FS)) >> 30) == 0) {
                        int i6 = i + 3;
                        if (bArr[i5] <= -65) {
                            i += 4;
                            if (bArr[i6] > -65) {
                            }
                        }
                    }
                }
                return false;
            }
            i = i3;
        }
        return true;
    }
}
