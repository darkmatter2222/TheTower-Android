package com.tapjoy.internal;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes5.dex */
public final class bi extends bh {
    public static final bh.a a = new bh.a() { // from class: com.tapjoy.internal.bi.1
        @Override // com.tapjoy.internal.bh.a
        public final bh a(Reader reader) {
            return new bi(reader);
        }

        @Override // com.tapjoy.internal.bh.a
        public final bh a(String str) {
            return new bi(new StringReader(str));
        }
    };
    private final Reader c;
    private bm k;
    private String l;
    private String m;
    private int n;
    private int o;
    private boolean p;
    private final cd b = new cd();
    private boolean d = false;
    private final char[] e = new char[1024];
    private int f = 0;
    private int g = 0;
    private int h = 1;
    private int i = 1;
    private final List<bk> j = new ArrayList();

    /* JADX INFO: renamed from: com.tapjoy.internal.bi$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[bk.values().length];
            a = iArr;
            try {
                iArr[bk.EMPTY_DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[bk.EMPTY_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[bk.NONEMPTY_ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[bk.EMPTY_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[bk.DANGLING_NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[bk.NONEMPTY_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[bk.NONEMPTY_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[bk.CLOSED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public bi(Reader reader) {
        a(bk.EMPTY_DOCUMENT);
        this.p = false;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.c = reader;
    }

    private void A() {
        char c;
        do {
            if (this.f >= this.g && !a(1)) {
                return;
            }
            char[] cArr = this.e;
            int i = this.f;
            this.f = i + 1;
            c = cArr[i];
            if (c == '\r') {
                return;
            }
        } while (c != '\n');
    }

    private char B() throws IOException {
        if (this.f == this.g && !a(1)) {
            throw e("Unterminated escape sequence");
        }
        char[] cArr = this.e;
        int i = this.f;
        this.f = i + 1;
        char c = cArr[i];
        if (c == 'b') {
            return '\b';
        }
        if (c == 'f') {
            return '\f';
        }
        if (c == 'n') {
            return '\n';
        }
        if (c == 'r') {
            return '\r';
        }
        if (c == 't') {
            return '\t';
        }
        if (c != 'u') {
            return c;
        }
        if (i + 5 > this.g && !a(4)) {
            throw e("Unterminated escape sequence");
        }
        String strA = this.b.a(this.e, this.f, 4);
        this.f += 4;
        return (char) Integer.parseInt(strA, 16);
    }

    private bm C() throws IOException {
        this.m = c(true);
        if (this.o == 0) {
            throw e("Expected literal value");
        }
        bm bmVarD = D();
        this.k = bmVarD;
        if (bmVarD == bm.STRING) {
            z();
        }
        return this.k;
    }

    private bm D() {
        char[] cArr;
        char c;
        char[] cArr2;
        char c2;
        char[] cArr3;
        char c3;
        int i = this.n;
        if (i == -1) {
            return bm.STRING;
        }
        int i2 = this.o;
        if (i2 == 4 && (('n' == (c3 = (cArr3 = this.e)[i]) || 'N' == c3) && (('u' == cArr3[i + 1] || 'U' == cArr3[i + 1]) && (('l' == cArr3[i + 2] || 'L' == cArr3[i + 2]) && ('l' == cArr3[i + 3] || 'L' == cArr3[i + 3]))))) {
            this.m = AbstractJsonLexerKt.NULL;
            return bm.NULL;
        }
        if (i2 == 4 && (('t' == (c2 = (cArr2 = this.e)[i]) || 'T' == c2) && (('r' == cArr2[i + 1] || 'R' == cArr2[i + 1]) && (('u' == cArr2[i + 2] || 'U' == cArr2[i + 2]) && ('e' == cArr2[i + 3] || 'E' == cArr2[i + 3]))))) {
            this.m = "true";
            return bm.BOOLEAN;
        }
        if (i2 == 5 && (('f' == (c = (cArr = this.e)[i]) || 'F' == c) && (('a' == cArr[i + 1] || 'A' == cArr[i + 1]) && (('l' == cArr[i + 2] || 'L' == cArr[i + 2]) && (('s' == cArr[i + 3] || 'S' == cArr[i + 3]) && ('e' == cArr[i + 4] || 'E' == cArr[i + 4])))))) {
            this.m = "false";
            return bm.BOOLEAN;
        }
        this.m = this.b.a(this.e, i, i2);
        return a(this.e, this.n, this.o);
    }

    private bm a(boolean z) throws IOException {
        if (z) {
            b(bk.NONEMPTY_ARRAY);
        } else {
            int iY = y();
            if (iY != 44) {
                if (iY != 59) {
                    if (iY != 93) {
                        throw e("Unterminated array");
                    }
                    u();
                    bm bmVar = bm.END_ARRAY;
                    this.k = bmVar;
                    return bmVar;
                }
                z();
            }
        }
        int iY2 = y();
        if (iY2 != 44 && iY2 != 59) {
            if (iY2 != 93) {
                this.f--;
                return v();
            }
            if (z) {
                u();
                bm bmVar2 = bm.END_ARRAY;
                this.k = bmVar2;
                return bmVar2;
            }
        }
        z();
        this.f--;
        this.m = AbstractJsonLexerKt.NULL;
        bm bmVar3 = bm.NULL;
        this.k = bmVar3;
        return bmVar3;
    }

    private static bm a(char[] cArr, int i, int i2) {
        int i3;
        int i4;
        char c;
        char c2 = cArr[i];
        if (c2 == '-') {
            int i5 = i + 1;
            i3 = i5;
            c2 = cArr[i5];
        } else {
            i3 = i;
        }
        if (c2 == '0') {
            i4 = i3 + 1;
            c = cArr[i4];
        } else {
            if (c2 < '1' || c2 > '9') {
                return bm.STRING;
            }
            i4 = i3 + 1;
            c = cArr[i4];
            while (c >= '0' && c <= '9') {
                i4++;
                c = cArr[i4];
            }
        }
        if (c == '.') {
            i4++;
            c = cArr[i4];
            while (c >= '0' && c <= '9') {
                i4++;
                c = cArr[i4];
            }
        }
        if (c == 'e' || c == 'E') {
            int i6 = i4 + 1;
            char c3 = cArr[i6];
            if (c3 == '+' || c3 == '-') {
                i6 = i4 + 2;
                c3 = cArr[i6];
            }
            if (c3 < '0' || c3 > '9') {
                return bm.STRING;
            }
            int i7 = i6 + 1;
            char c4 = cArr[i7];
            i4 = i7;
            while (c4 >= '0' && c4 <= '9') {
                i4++;
                c4 = cArr[i4];
            }
        }
        return i4 == i + i2 ? bm.NUMBER : bm.STRING;
    }

    private String a(char c) throws IOException {
        StringBuilder sb = null;
        do {
            int i = this.f;
            while (true) {
                int i2 = this.f;
                if (i2 < this.g) {
                    char[] cArr = this.e;
                    int i3 = i2 + 1;
                    this.f = i3;
                    char c2 = cArr[i2];
                    if (c2 == c) {
                        if (this.p) {
                            return "skipped!";
                        }
                        if (sb == null) {
                            return this.b.a(cArr, i, (i3 - i) - 1);
                        }
                        sb.append(cArr, i, (i3 - i) - 1);
                        return sb.toString();
                    }
                    if (c2 == '\\') {
                        if (sb == null) {
                            sb = new StringBuilder();
                        }
                        sb.append(this.e, i, (this.f - i) - 1);
                        sb.append(B());
                        i = this.f;
                    }
                }
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(this.e, i, this.f - i);
        } while (a(1));
        throw e("Unterminated string");
    }

    private void a(bk bkVar) {
        this.j.add(bkVar);
    }

    private void a(bm bmVar) throws IOException {
        k();
        if (this.k != bmVar) {
            throw new IllegalStateException("Expected " + bmVar + " but was " + k());
        }
        t();
    }

    private boolean a(int i) throws IOException {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        while (true) {
            i2 = this.f;
            if (i5 >= i2) {
                break;
            }
            if (this.e[i5] == '\n') {
                this.h++;
                this.i = 1;
            } else {
                this.i++;
            }
            i5++;
        }
        int i6 = this.g;
        if (i6 != i2) {
            int i7 = i6 - i2;
            this.g = i7;
            char[] cArr = this.e;
            System.arraycopy(cArr, i2, cArr, 0, i7);
        } else {
            this.g = 0;
        }
        this.f = 0;
        do {
            Reader reader = this.c;
            char[] cArr2 = this.e;
            int i8 = this.g;
            int i9 = reader.read(cArr2, i8, cArr2.length - i8);
            if (i9 == -1) {
                return false;
            }
            i3 = this.g + i9;
            this.g = i3;
            if (this.h == 1 && (i4 = this.i) == 1 && i3 > 0 && this.e[0] == 65279) {
                this.f++;
                this.i = i4 - 1;
            }
        } while (i3 < i);
        return true;
    }

    private bm b(boolean z) throws IOException {
        if (!z) {
            int iY = y();
            if (iY != 44 && iY != 59) {
                if (iY != 125) {
                    throw e("Unterminated object");
                }
                u();
                bm bmVar = bm.END_OBJECT;
                this.k = bmVar;
                return bmVar;
            }
        } else {
            if (y() == 125) {
                u();
                bm bmVar2 = bm.END_OBJECT;
                this.k = bmVar2;
                return bmVar2;
            }
            this.f--;
        }
        int iY2 = y();
        if (iY2 == 34) {
            this.l = a((char) iY2);
        } else if (iY2 != 39) {
            z();
            this.f--;
            String strC = c(false);
            this.l = strC;
            if (strC.length() == 0) {
                throw e("Expected name");
            }
        } else {
            z();
            this.l = a((char) iY2);
        }
        b(bk.DANGLING_NAME);
        bm bmVar3 = bm.NAME;
        this.k = bmVar3;
        return bmVar3;
    }

    private void b(bk bkVar) {
        List<bk> list = this.j;
        list.set(list.size() - 1, bkVar);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x004a. Please report as an issue. */
    private String c(boolean z) throws IOException {
        this.n = -1;
        int i = 0;
        this.o = 0;
        String string = null;
        int i2 = 0;
        StringBuilder sb = null;
        while (true) {
            int i3 = this.f;
            if (i3 + i2 < this.g) {
                char c = this.e[i3 + i2];
                if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                    if (c != '#') {
                        if (c != ',') {
                            if (c != '/' && c != '=') {
                                if (c != '{' && c != '}' && c != ':') {
                                    if (c != ';') {
                                        switch (c) {
                                            case '[':
                                            case ']':
                                                break;
                                            case '\\':
                                                break;
                                            default:
                                                i2++;
                                                break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    z();
                }
                i = i2;
            } else if (i2 >= this.e.length) {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(this.e, this.f, i2);
                this.o += i2;
                this.f += i2;
                if (a(1)) {
                    i2 = 0;
                }
            } else if (!a(i2 + 1)) {
                this.e[this.g] = 0;
                i = i2;
            }
            if (z && sb == null) {
                this.n = this.f;
            } else if (this.p) {
                string = "skipped!";
            } else if (sb == null) {
                string = this.b.a(this.e, this.f, i);
            } else {
                sb.append(this.e, this.f, i);
                string = sb.toString();
            }
            this.o += i;
            this.f += i;
            return string;
        }
    }

    private boolean d(String str) {
        while (true) {
            if (this.f + str.length() > this.g && !a(str.length())) {
                return false;
            }
            for (int i = 0; i < str.length(); i++) {
                if (this.e[this.f + i] != str.charAt(i)) {
                    this.f++;
                }
            }
            return true;
        }
    }

    private IOException e(String str) throws bo {
        throw new bo(str + " at line " + w() + " column " + x());
    }

    private bm t() throws IOException {
        k();
        bm bmVar = this.k;
        this.k = null;
        this.m = null;
        this.l = null;
        return bmVar;
    }

    private bk u() {
        List<bk> list = this.j;
        return list.remove(list.size() - 1);
    }

    private bm v() throws IOException {
        int iY = y();
        if (iY != 34) {
            if (iY != 39) {
                if (iY == 91) {
                    a(bk.EMPTY_ARRAY);
                    bm bmVar = bm.BEGIN_ARRAY;
                    this.k = bmVar;
                    return bmVar;
                }
                if (iY != 123) {
                    this.f--;
                    return C();
                }
                a(bk.EMPTY_OBJECT);
                bm bmVar2 = bm.BEGIN_OBJECT;
                this.k = bmVar2;
                return bmVar2;
            }
            z();
        }
        this.m = a((char) iY);
        bm bmVar3 = bm.STRING;
        this.k = bmVar3;
        return bmVar3;
    }

    private int w() {
        int i = this.h;
        for (int i2 = 0; i2 < this.f; i2++) {
            if (this.e[i2] == '\n') {
                i++;
            }
        }
        return i;
    }

    private int x() {
        int i = this.i;
        for (int i2 = 0; i2 < this.f; i2++) {
            i = this.e[i2] == '\n' ? 1 : i + 1;
        }
        return i;
    }

    private int y() throws IOException {
        while (true) {
            if (this.f >= this.g && !a(1)) {
                throw new EOFException("End of input");
            }
            char[] cArr = this.e;
            int i = this.f;
            int i2 = i + 1;
            this.f = i2;
            char c = cArr[i];
            if (c != '\t' && c != '\n' && c != '\r' && c != ' ') {
                if (c != '#') {
                    if (c == '/' && (i2 != this.g || a(1))) {
                        z();
                        char[] cArr2 = this.e;
                        int i3 = this.f;
                        char c2 = cArr2[i3];
                        if (c2 == '*') {
                            this.f = i3 + 1;
                            if (!d("*/")) {
                                throw e("Unterminated comment");
                            }
                            this.f += 2;
                        } else if (c2 == '/') {
                            this.f = i3 + 1;
                            A();
                        }
                    }
                    return c;
                }
                z();
                A();
            }
        }
    }

    private void z() throws IOException {
        if (!this.d) {
            throw e("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    @Override // com.tapjoy.internal.bj, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.m = null;
        this.k = null;
        this.j.clear();
        this.j.add(bk.CLOSED);
        this.c.close();
    }

    @Override // com.tapjoy.internal.bj
    public final void f() throws IOException {
        a(bm.BEGIN_ARRAY);
    }

    @Override // com.tapjoy.internal.bj
    public final void g() throws IOException {
        a(bm.END_ARRAY);
    }

    @Override // com.tapjoy.internal.bj
    public final void h() throws IOException {
        a(bm.BEGIN_OBJECT);
    }

    @Override // com.tapjoy.internal.bj
    public final void i() throws IOException {
        a(bm.END_OBJECT);
    }

    @Override // com.tapjoy.internal.bj
    public final boolean j() throws IOException {
        k();
        return (this.k == bm.END_OBJECT || this.k == bm.END_ARRAY) ? false : true;
    }

    @Override // com.tapjoy.internal.bj
    public final bm k() throws IOException {
        bm bmVar = this.k;
        if (bmVar != null) {
            return bmVar;
        }
        int[] iArr = AnonymousClass2.a;
        List<bk> list = this.j;
        switch (iArr[list.get(list.size() - 1).ordinal()]) {
            case 1:
                b(bk.NONEMPTY_DOCUMENT);
                bm bmVarV = v();
                if (this.d || this.k == bm.BEGIN_ARRAY || this.k == bm.BEGIN_OBJECT) {
                    return bmVarV;
                }
                throw new IOException("Expected JSON document to start with '[' or '{' but was " + this.k);
            case 2:
                return a(true);
            case 3:
                return a(false);
            case 4:
                return b(true);
            case 5:
                int iY = y();
                if (iY != 58) {
                    if (iY != 61) {
                        throw e("Expected ':'");
                    }
                    z();
                    if (this.f < this.g || a(1)) {
                        char[] cArr = this.e;
                        int i = this.f;
                        if (cArr[i] == '>') {
                            this.f = i + 1;
                        }
                    }
                }
                b(bk.NONEMPTY_OBJECT);
                return v();
            case 6:
                return b(false);
            case 7:
                try {
                    bm bmVarV2 = v();
                    if (this.d) {
                        return bmVarV2;
                    }
                    throw e("Expected EOF");
                } catch (EOFException unused) {
                    bm bmVar2 = bm.END_DOCUMENT;
                    this.k = bmVar2;
                    return bmVar2;
                }
            case 8:
                throw new IllegalStateException("JsonReader is closed");
            default:
                throw new AssertionError();
        }
    }

    @Override // com.tapjoy.internal.bj
    public final String l() throws IOException {
        k();
        if (this.k != bm.NAME) {
            throw new IllegalStateException("Expected a name but was " + k());
        }
        String str = this.l;
        t();
        return str;
    }

    @Override // com.tapjoy.internal.bj
    public final String m() throws IOException {
        k();
        if (this.k != bm.STRING && this.k != bm.NUMBER) {
            throw new IllegalStateException("Expected a string but was " + k());
        }
        String str = this.m;
        t();
        return str;
    }

    @Override // com.tapjoy.internal.bj
    public final boolean n() throws IOException {
        k();
        if (this.k != bm.BOOLEAN) {
            throw new IllegalStateException("Expected a boolean but was " + this.k);
        }
        boolean z = this.m == "true";
        t();
        return z;
    }

    @Override // com.tapjoy.internal.bj
    public final void o() throws IOException {
        k();
        if (this.k != bm.NULL) {
            throw new IllegalStateException("Expected null but was " + this.k);
        }
        t();
    }

    @Override // com.tapjoy.internal.bj
    public final double p() throws IOException {
        k();
        if (this.k != bm.STRING && this.k != bm.NUMBER) {
            throw new IllegalStateException("Expected a double but was " + this.k);
        }
        double d = Double.parseDouble(this.m);
        t();
        return d;
    }

    @Override // com.tapjoy.internal.bj
    public final long q() throws IOException {
        long j;
        k();
        if (this.k != bm.STRING && this.k != bm.NUMBER) {
            throw new IllegalStateException("Expected a long but was " + this.k);
        }
        try {
            j = Long.parseLong(this.m);
        } catch (NumberFormatException unused) {
            double d = Double.parseDouble(this.m);
            long j2 = (long) d;
            if (j2 != d) {
                throw new NumberFormatException(this.m);
            }
            j = j2;
        }
        t();
        return j;
    }

    @Override // com.tapjoy.internal.bj
    public final int r() throws IOException {
        int i;
        k();
        if (this.k != bm.STRING && this.k != bm.NUMBER) {
            throw new IllegalStateException("Expected an int but was " + this.k);
        }
        try {
            i = Integer.parseInt(this.m);
        } catch (NumberFormatException unused) {
            double d = Double.parseDouble(this.m);
            int i2 = (int) d;
            if (i2 != d) {
                throw new NumberFormatException(this.m);
            }
            i = i2;
        }
        t();
        return i;
    }

    @Override // com.tapjoy.internal.bj
    public final void s() throws IOException {
        k();
        if (this.k == bm.END_ARRAY || this.k == bm.END_OBJECT) {
            throw new IllegalStateException("Expected a value but was " + this.k);
        }
        this.p = true;
        int i = 0;
        do {
            try {
                bm bmVarT = t();
                if (bmVarT == bm.BEGIN_ARRAY || bmVarT == bm.BEGIN_OBJECT) {
                    i++;
                } else if (bmVarT == bm.END_ARRAY || bmVarT == bm.END_OBJECT) {
                    i--;
                }
            } finally {
                this.p = false;
            }
        } while (i != 0);
    }

    public final String toString() {
        StringBuilder sbAppend = new StringBuilder().append(getClass().getSimpleName()).append(" near ");
        StringBuilder sb = new StringBuilder();
        int iMin = Math.min(this.f, 20);
        sb.append(this.e, this.f - iMin, iMin);
        sb.append(this.e, this.f, Math.min(this.g - this.f, 20));
        return sbAppend.append((Object) sb).toString();
    }
}
