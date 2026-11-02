package kotlin;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Regex;

/* JADX INFO: loaded from: classes.dex */
public abstract class vm {
    public static String a(jm currentAppSettings, String adUnitId, String format) {
        Regex regex;
        String lowerCase;
        Intrinsics.checkNotNullParameter(currentAppSettings, "currentAppSettings");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(format, "format");
        Map mapY = currentAppSettings.y();
        String lowerCase2 = format.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        mc mcVar = (mc) mapY.get(lowerCase2);
        if (mcVar == null) {
            return "";
        }
        for (hc hcVar : mcVar.v()) {
            List<String> listX = hcVar.x();
            Intrinsics.checkNotNullExpressionValue(listX, "getIncludingRegexesList(...)");
            if (!(listX instanceof Collection) || !listX.isEmpty()) {
                for (String str : listX) {
                    Intrinsics.checkNotNull(str);
                    Regex regex2 = new Regex(str);
                    String lowerCase3 = adUnitId.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                    if (regex2.matches(lowerCase3)) {
                        List listW = hcVar.w();
                        Intrinsics.checkNotNullExpressionValue(listW, "getExcludingRegexesList(...)");
                        if (!(listW instanceof Collection) || !listW.isEmpty()) {
                            Iterator it = listW.iterator();
                            do {
                                if (it.hasNext()) {
                                    String str2 = (String) it.next();
                                    Intrinsics.checkNotNull(str2);
                                    regex = new Regex(str2);
                                    lowerCase = adUnitId.toLowerCase(Locale.ROOT);
                                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                }
                            } while (!regex.matches(lowerCase));
                        }
                        String strV = hcVar.v();
                        Intrinsics.checkNotNullExpressionValue(strV, "getEffectiveAdUnitId(...)");
                        String lowerCase4 = strV.toLowerCase(Locale.ROOT);
                        Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                        return lowerCase4;
                    }
                }
            }
        }
        return "";
    }
}
