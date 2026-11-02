package kotlin;

import android.webkit.WebResourceResponse;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.ironsource.C3510b4;
import java.io.ByteArrayInputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class i81 {
    /* JADX WARN: Code duplicated, block: B:42:0x00c2 A[PHI: r0
  0x00c2: PHI (r0v5 java.lang.String) = 
  (r0v4 java.lang.String)
  (r0v11 java.lang.String)
  (r0v11 java.lang.String)
  (r0v11 java.lang.String)
  (r0v11 java.lang.String)
  (r0v11 java.lang.String)
 binds: [B:14:0x003f, B:31:0x0097, B:33:0x009f, B:35:0x00a9, B:37:0x00b6, B:39:0x00bc] A[DONT_GENERATE, DONT_INLINE]] */
    public static final WebResourceResponse a(h81 h81Var) {
        Object next;
        String str;
        String str2;
        Object next2;
        String strSubstringAfter;
        String string;
        Intrinsics.checkNotNullParameter(h81Var, "<this>");
        Iterator it = h81Var.c.entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!StringsKt.equals((String) ((Map.Entry) next).getKey(), "Content-Type", true));
        Map.Entry entry = (Map.Entry) next;
        String str3 = entry != null ? (String) entry.getValue() : null;
        String str4 = "text/html";
        if (str3 != null) {
            List listSplit$default = StringsKt.split$default((CharSequence) str3, new String[]{";"}, false, 0, 6, (Object) null);
            String str5 = (String) CollectionsKt.firstOrNull(listSplit$default);
            String string2 = str5 != null ? StringsKt.trim((CharSequence) str5).toString() : null;
            if (string2 != null && StringsKt.contains$default((CharSequence) string2, (CharSequence) DomExceptionUtils.SEPARATOR, false, 2, (Object) null)) {
                str4 = string2;
            }
            Iterator it2 = CollectionsKt.drop(listSplit$default, 1).iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
            } while (!StringsKt.startsWith(StringsKt.trim((CharSequence) next2).toString(), "charset=", true));
            String str6 = (String) next2;
            if (str6 == null || (strSubstringAfter = StringsKt.substringAfter(str6, C3510b4.j.b, str6)) == null || (string = StringsKt.trim((CharSequence) strSubstringAfter).toString()) == null) {
                str = str4;
                str2 = "UTF-8";
            } else {
                String upperCase = string.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                if (upperCase == null || upperCase.length() == 0) {
                    str = str4;
                    str2 = "UTF-8";
                } else {
                    str = str4;
                    str2 = upperCase;
                }
            }
        } else {
            str = str4;
            str2 = "UTF-8";
        }
        String str7 = h81Var.b;
        String str8 = (str7 == null || StringsKt.isBlank(str7)) ? "OK" : h81Var.b;
        int i = h81Var.a;
        Map map = h81Var.c;
        p53 p53Var = h81Var.d;
        return new WebResourceResponse(str, str2, i, str8, map, p53Var != null ? new ByteArrayInputStream(p53Var.a) : null);
    }
}
