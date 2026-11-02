package com.unity3d.ads.core.extensions;

import com.ironsource.C3635i2;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.List;
import okio.ByteString;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: StringExtensions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u001a\f\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0001\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"getSHA256Hash", "", "guessMimeType", "VERSION_REGEX", "Lkotlin/text/Regex;", "compareVersion", "", C3635i2.d, "unity-ads_defaultRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class StringExtensionsKt {
    private static final Regex VERSION_REGEX = new Regex("[0-9.]+");

    public static final int compareVersion(String str, String other) {
        Integer intOrNull;
        Integer intOrNull2;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (str.length() == 0 || other.length() == 0) {
            return -1;
        }
        String strRemovePrefix = StringsKt.removePrefix(StringsKt.removePrefix(str, (CharSequence) "v"), (CharSequence) "V");
        String strRemovePrefix2 = StringsKt.removePrefix(StringsKt.removePrefix(other, (CharSequence) "v"), (CharSequence) "V");
        String str2 = strRemovePrefix;
        Regex regex = VERSION_REGEX;
        if (regex.matches(str2)) {
            String str3 = strRemovePrefix2;
            if (regex.matches(str3) && !StringsKt.contains$default((CharSequence) str2, (CharSequence) "..", false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str3, (CharSequence) "..", false, 2, (Object) null)) {
                List listSplit$default = StringsKt.split$default((CharSequence) str2, new String[]{"."}, false, 0, 6, (Object) null);
                List listSplit$default2 = StringsKt.split$default((CharSequence) str3, new String[]{"."}, false, 0, 6, (Object) null);
                int iMax = Math.max(listSplit$default.size(), listSplit$default2.size());
                for (int i = 0; i < iMax; i++) {
                    String str4 = (String) CollectionsKt.getOrNull(listSplit$default, i);
                    int iIntValue = (str4 == null || (intOrNull2 = StringsKt.toIntOrNull(str4)) == null) ? 0 : intOrNull2.intValue();
                    String str5 = (String) CollectionsKt.getOrNull(listSplit$default2, i);
                    int iIntValue2 = (str5 == null || (intOrNull = StringsKt.toIntOrNull(str5)) == null) ? 0 : intOrNull.intValue();
                    if (iIntValue != iIntValue2) {
                        return Intrinsics.compare(iIntValue, iIntValue2);
                    }
                }
                return 0;
            }
        }
        return -1;
    }

    public static final String getSHA256Hash(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bytes = str.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        String strHex = ByteString.of(Arrays.copyOf(bytes, bytes.length)).sha256().hex();
        Intrinsics.checkNotNullExpressionValue(strHex, "hex(...)");
        return strHex;
    }

    public static final String guessMimeType(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return URLConnection.guessContentTypeFromName(str);
    }
}
