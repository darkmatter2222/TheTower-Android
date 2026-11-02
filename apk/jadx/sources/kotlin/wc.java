package kotlin;

import com.google.android.libraries.ads.mobile.sdk.common.PrecisionType;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class wc {
    public static xc a(JsonObject json) {
        PrecisionType precisionType;
        Intrinsics.checkNotNullParameter(json, "json");
        ds1 ds1Var = ds1.a;
        try {
            yc ycVar = zc.b;
            ds1 ds1Var2 = ds1.a;
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter("type_num", C3510b4.i.W);
            int asInt = json.get("type_num").getAsInt();
            ycVar.getClass();
            zc zcVarA = yc.a(asInt);
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter("value", C3510b4.i.W);
            long asLong = json.get("value").getAsLong();
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter("precision_num", C3510b4.i.W);
            int asInt2 = json.get("precision_num").getAsInt();
            if (asInt2 == 1) {
                precisionType = PrecisionType.ESTIMATED;
            } else if (asInt2 != 2) {
                precisionType = asInt2 != 3 ? PrecisionType.UNKNOWN : PrecisionType.PRECISE;
            } else {
                precisionType = PrecisionType.PUBLISHER_PROVIDED;
            }
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter("currency", C3510b4.i.W);
            String asString = json.get("currency").getAsString();
            Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
            return new xc(zcVarA, asLong, precisionType, asString);
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0059  */
    /* JADX WARN: Code duplicated, block: B:39:0x0095  */
    public static xc b(JsonObject json) {
        zc zcVar;
        PrecisionType precisionType;
        Intrinsics.checkNotNullParameter(json, "json");
        ds1 ds1Var = ds1.a;
        String strA = ds1.a(json, "type", "");
        String strA2 = ds1.a(json, "precision", "");
        String strA3 = ds1.a(json, "currency", "");
        long jG = ds1.g(json, "value");
        int iHashCode = strA.hashCode();
        if (iHashCode != 66934) {
            if (iHashCode != 66944) {
                if (iHashCode == 1349395245 && strA.equals("ONE_PIXEL")) {
                    jG /= (long) 1000;
                    zcVar = zc.ONE_PIXEL;
                } else {
                    zcVar = zc.UNKNOWN;
                }
            } else if (strA.equals("CPM")) {
                zcVar = zc.CPM;
            } else {
                zcVar = zc.UNKNOWN;
            }
        } else if (strA.equals("CPC")) {
            zcVar = zc.CPC;
        } else {
            zcVar = zc.UNKNOWN;
        }
        zc zcVar2 = zcVar;
        long j = jG;
        int iHashCode2 = strA2.hashCode();
        if (iHashCode2 != -2131980260) {
            if (iHashCode2 != 399232571) {
                if (iHashCode2 == 1271254246 && strA2.equals("PUBLISHER_PROVIDED")) {
                    precisionType = PrecisionType.PUBLISHER_PROVIDED;
                } else {
                    precisionType = PrecisionType.UNKNOWN;
                }
            } else if (strA2.equals("PRECISE")) {
                precisionType = PrecisionType.PRECISE;
            } else {
                precisionType = PrecisionType.UNKNOWN;
            }
        } else if (strA2.equals("ESTIMATED")) {
            precisionType = PrecisionType.ESTIMATED;
        } else {
            precisionType = PrecisionType.UNKNOWN;
        }
        return new xc(zcVar2, j, precisionType, strA3);
    }
}
