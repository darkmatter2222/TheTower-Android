package com.ironsource;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class E1 {
    public static final E1 a = new E1();
    private static final String b = "\"main\"";
    private static final String c = "at ";
    private static final String d = "|";
    private static final String e = "- ";
    private static final String f = "\"";
    private static final String g = "Native method";
    private static final int h = 256;
    private static final int i = 20000;
    private static final int j = -1;

    private E1() {
    }

    private final String a(String str) {
        if (Intrinsics.areEqual(str, g)) {
            return null;
        }
        return StringsKt.contains$default((CharSequence) str, AbstractJsonLexerKt.COLON, false, 2, (Object) null) ? StringsKt.substringBeforeLast$default(str, AbstractJsonLexerKt.COLON, (String) null, 2, (Object) null) : str;
    }

    private final int b(String str) {
        Integer intOrNull;
        if (!StringsKt.contains$default((CharSequence) str, AbstractJsonLexerKt.COLON, false, 2, (Object) null) || (intOrNull = StringsKt.toIntOrNull(StringsKt.substringAfterLast$default(str, AbstractJsonLexerKt.COLON, (String) null, 2, (Object) null))) == null) {
            return -1;
        }
        return intOrNull.intValue();
    }

    private final StackTraceElement[] b(BufferedReader bufferedReader) throws IOException {
        StackTraceElement stackTraceElementC;
        ArrayList arrayList = new ArrayList();
        String line = bufferedReader.readLine();
        while (line != null && arrayList.size() < 256) {
            String string = StringsKt.trim((CharSequence) line).toString();
            if (string.length() == 0) {
                return (StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]);
            }
            if (StringsKt.startsWith$default(string, f, false, 2, (Object) null)) {
                return (StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]);
            }
            if (!StringsKt.startsWith$default(string, d, false, 2, (Object) null) && !StringsKt.startsWith$default(string, e, false, 2, (Object) null) && StringsKt.startsWith$default(string, c, false, 2, (Object) null) && (stackTraceElementC = c(string)) != null) {
                arrayList.add(stackTraceElementC);
            }
            line = bufferedReader.readLine();
        }
        return (StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]);
    }

    private final StackTraceElement c(String str) {
        int iIndexOf$default = StringsKt.indexOf$default((CharSequence) str, '(', 0, false, 6, (Object) null);
        int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str, ')', 0, false, 6, (Object) null);
        if (iIndexOf$default > 3 && iLastIndexOf$default >= iIndexOf$default) {
            String strSubstring = str.substring(3, iIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            String string = StringsKt.trim((CharSequence) strSubstring).toString();
            int iLastIndexOf$default2 = StringsKt.lastIndexOf$default((CharSequence) string, '.', 0, false, 6, (Object) null);
            if (iLastIndexOf$default2 > 0 && iLastIndexOf$default2 != string.length() - 1) {
                String strSubstring2 = string.substring(0, iLastIndexOf$default2);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                String strSubstring3 = string.substring(iLastIndexOf$default2 + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                String strSubstring4 = str.substring(iIndexOf$default + 1, iLastIndexOf$default);
                Intrinsics.checkNotNullExpressionValue(strSubstring4, "substring(...)");
                return new StackTraceElement(strSubstring2, strSubstring3, a(strSubstring4), b(strSubstring4));
            }
        }
        return null;
    }

    public final StackTraceElement[] a(BufferedReader reader) throws IOException {
        Intrinsics.checkNotNullParameter(reader, "reader");
        String line = reader.readLine();
        int i2 = 0;
        while (line != null) {
            int i3 = i2 + 1;
            if (i2 >= 20000) {
                break;
            }
            if (StringsKt.startsWith$default(StringsKt.trimStart((CharSequence) line).toString(), b, false, 2, (Object) null)) {
                return b(reader);
            }
            line = reader.readLine();
            i2 = i3;
        }
        return new StackTraceElement[0];
    }

    public final StackTraceElement[] a(InputStream input) {
        Intrinsics.checkNotNullParameter(input, "input");
        Reader inputStreamReader = new InputStreamReader(input, Charsets.UTF_8);
        BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
        try {
            StackTraceElement[] stackTraceElementArrA = a.a(bufferedReader);
            CloseableKt.closeFinally(bufferedReader, null);
            return stackTraceElementArrA;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(bufferedReader, th);
                throw th2;
            }
        }
    }
}
