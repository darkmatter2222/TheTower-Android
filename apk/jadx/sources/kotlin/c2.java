package kotlin;

import android.net.Uri;
import android.os.Bundle;
import com.appsflyer.AdRevenueScheme;
import com.google.common.base.Splitter;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.UnaryOperator;
import kotlinx.coroutines.Deferred;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class c2 {
    public static int a(String str) {
        f2[] f2VarArr = f2.a;
        if (Intrinsics.areEqual(str, "landscape")) {
            return 6;
        }
        return Intrinsics.areEqual(str, "portrait") ? 7 : -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [T, com.google.gson.JsonObject] */
    /* JADX WARN: Type inference failed for: r3v99, types: [T, com.google.gson.JsonObject, java.lang.Object] */
    public static i2 a(JsonObject json, int i, Deferred deferred) {
        i2 i2Var;
        bc bcVar;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        ArrayList arrayList10;
        ArrayList arrayList11;
        ArrayList arrayList12;
        ArrayList arrayList13;
        ArrayList arrayList14;
        ArrayList arrayList15;
        ArrayList arrayList16;
        ArrayList arrayList17;
        JsonArray jsonArrayE;
        Intrinsics.checkNotNullParameter(json, "json");
        ds1 ds1Var = ds1.a;
        try {
            ArrayList arrayList18 = new ArrayList();
            bc bcVar2 = bc.UNKNOWN;
            ArrayList arrayList19 = new ArrayList();
            ArrayList arrayList20 = new ArrayList();
            ArrayList arrayList21 = new ArrayList();
            e2 e2Var = e2.FORMAT_DEFAULT;
            ArrayList arrayList22 = new ArrayList();
            ArrayList arrayList23 = new ArrayList();
            ArrayList arrayList24 = new ArrayList();
            ArrayList arrayList25 = new ArrayList();
            ArrayList arrayList26 = new ArrayList();
            ArrayList arrayList27 = new ArrayList();
            i2Var = null;
            try {
                ArrayList arrayList28 = new ArrayList();
                ArrayList arrayList29 = new ArrayList();
                ArrayList arrayList30 = new ArrayList();
                ArrayList arrayList31 = new ArrayList();
                ArrayList arrayList32 = arrayList28;
                ArrayList arrayList33 = new ArrayList();
                ArrayList arrayList34 = new ArrayList();
                ArrayList arrayList35 = arrayList27;
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                objectRef.element = new JsonObject();
                JsonObject jsonObject = new JsonObject();
                JsonObject jsonObject2 = new JsonObject();
                Duration.Companion companion = Duration.INSTANCE;
                long jM4458getZEROUwyO8pc = companion.m4458getZEROUwyO8pc();
                dg2 dg2Var = new dg2(cg2.UNKNOWN, xh2.d, false, "", "");
                h2 h2Var = h2.FORMAT_DEFAULT;
                long jM4458getZEROUwyO8pc2 = companion.m4458getZEROUwyO8pc();
                JsonObject jsonObject3 = new JsonObject();
                ArrayList arrayList36 = new ArrayList();
                Bundle bundle = Bundle.EMPTY;
                o93 o93Var = new o93();
                st2 st2Var = st2.FIFO;
                JsonObject jsonObject4 = new JsonObject();
                long jM4458getZEROUwyO8pc3 = companion.m4458getZEROUwyO8pc();
                String str = "";
                bc bcVar3 = bcVar2;
                e2 e2Var2 = e2Var;
                String str2 = "json";
                JsonObject jsonObject5 = new JsonObject();
                long j = jM4458getZEROUwyO8pc;
                dg2 dg2Var2 = dg2Var;
                long j2 = jM4458getZEROUwyO8pc2;
                JsonObject jsonObject6 = jsonObject3;
                Bundle bundle2 = bundle;
                o93 o93Var2 = o93Var;
                st2 st2Var2 = st2Var;
                JsonObject jsonObject7 = jsonObject4;
                long j3 = jM4458getZEROUwyO8pc3;
                ArrayList arrayList37 = arrayList33;
                String str3 = str;
                String str4 = str3;
                String str5 = str4;
                String str6 = str5;
                String str7 = str6;
                String str8 = str7;
                String str9 = str8;
                String str10 = str9;
                String str11 = str10;
                String str12 = str11;
                String str13 = str12;
                String str14 = str13;
                String str15 = str14;
                String str16 = str15;
                String str17 = str16;
                String str18 = str17;
                double d = 0.0d;
                xc xcVarA = null;
                String asString = null;
                vc1 vc1Var = null;
                String asString2 = null;
                JsonArray asJsonArray = null;
                l63 l63VarA = null;
                qb2 qb2VarA = null;
                qm3 qm3VarA = null;
                uo2 uo2VarA = null;
                ga2 ga2Var = null;
                String asString3 = null;
                String asString4 = null;
                String asString5 = null;
                boolean asBoolean = false;
                boolean asBoolean2 = false;
                boolean asBoolean3 = false;
                boolean asBoolean4 = false;
                int iA = -1;
                boolean asBoolean5 = false;
                boolean asBoolean6 = false;
                boolean asBoolean7 = false;
                boolean asBoolean8 = false;
                boolean asBoolean9 = false;
                boolean asBoolean10 = false;
                boolean asBoolean11 = false;
                boolean asBoolean12 = false;
                boolean asBoolean13 = false;
                boolean asBoolean14 = false;
                boolean z = false;
                boolean asBoolean15 = false;
                boolean asBoolean16 = false;
                int asInt = 0;
                boolean asBoolean17 = false;
                ArrayList arrayList38 = arrayList34;
                JsonObject jsonObject8 = jsonObject2;
                JsonObject jsonObject9 = jsonObject;
                String str19 = str18;
                String str20 = str19;
                boolean asBoolean18 = false;
                boolean asBoolean19 = false;
                for (Map.Entry<String, JsonElement> entry : json.entrySet()) {
                    Intrinsics.checkNotNull(entry);
                    String key = entry.getKey();
                    ArrayList arrayList39 = arrayList29;
                    JsonElement value = entry.getValue();
                    if (key != null) {
                        arrayList = arrayList25;
                        arrayList2 = arrayList26;
                        switch (key.hashCode()) {
                            case -2138196627:
                                arrayList30 = arrayList30;
                                str = str;
                                arrayList3 = arrayList35;
                                arrayList32 = arrayList32;
                                str2 = str2;
                                arrayList36 = arrayList36;
                                arrayList18 = arrayList18;
                                str9 = str9;
                                arrayList19 = arrayList19;
                                arrayList4 = arrayList37;
                                if (key.equals("ad_source_instance_name")) {
                                    String asString6 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString6, "getAsString(...)");
                                    p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                                    str8 = asString6;
                                } else {
                                    Splitter splitter = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit2 = p005kotlin.Unit.INSTANCE;
                                }
                                arrayList37 = arrayList4;
                                arrayList32 = arrayList32;
                                arrayList19 = arrayList19;
                                arrayList36 = arrayList36;
                                arrayList25 = arrayList;
                                arrayList26 = arrayList2;
                                str9 = str9;
                                arrayList35 = arrayList3;
                                arrayList18 = arrayList18;
                                str = str;
                                str2 = str2;
                                arrayList30 = arrayList30;
                                arrayList29 = arrayList39;
                                break;
                            case -1980587809:
                                arrayList30 = arrayList30;
                                String str21 = str;
                                arrayList3 = arrayList35;
                                arrayList32 = arrayList32;
                                str2 = str2;
                                arrayList36 = arrayList36;
                                arrayList18 = arrayList18;
                                str9 = str9;
                                arrayList19 = arrayList19;
                                arrayList4 = arrayList37;
                                if (key.equals("debug_signals")) {
                                    JsonObject asJsonObject = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                                    p005kotlin.Unit unit3 = p005kotlin.Unit.INSTANCE;
                                    jsonObject9 = asJsonObject;
                                    str = str21;
                                } else {
                                    str = str21;
                                    Splitter splitter2 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit4 = p005kotlin.Unit.INSTANCE;
                                }
                                arrayList37 = arrayList4;
                                arrayList32 = arrayList32;
                                arrayList19 = arrayList19;
                                arrayList36 = arrayList36;
                                arrayList25 = arrayList;
                                arrayList26 = arrayList2;
                                str9 = str9;
                                arrayList35 = arrayList3;
                                arrayList18 = arrayList18;
                                str = str;
                                str2 = str2;
                                arrayList30 = arrayList30;
                                arrayList29 = arrayList39;
                                break;
                            case -1965512151:
                                ArrayList arrayList40 = arrayList35;
                                arrayList36 = arrayList36;
                                arrayList5 = arrayList40;
                                arrayList30 = arrayList30;
                                arrayList32 = arrayList32;
                                str2 = str2;
                                arrayList18 = arrayList18;
                                str9 = str9;
                                arrayList19 = arrayList19;
                                arrayList4 = arrayList37;
                                if (key.equals("omid_settings")) {
                                    JsonObject asJsonObject2 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject2, "getAsJsonObject(...)");
                                    Intrinsics.checkNotNullParameter(asJsonObject2, str2);
                                    ds1 ds1Var2 = ds1.a;
                                    int iA2 = ds1.a(asJsonObject2, "media_type", -1);
                                    cg2 cg2Var = iA2 != 0 ? iA2 != 1 ? cg2.UNKNOWN : cg2.VIDEO : cg2.DISPLAY;
                                    String str22 = str;
                                    dg2 dg2Var3 = new dg2(cg2Var, bg2.a[cg2Var.ordinal()] == 1 ? xh2.d : xh2.c, ds1.a(asJsonObject2, "javascript_session_service_enabled", true), ds1.a(asJsonObject2, "omid_partner_name", str22), ds1.a(asJsonObject2, "omid_html", str22));
                                    p005kotlin.Unit unit5 = p005kotlin.Unit.INSTANCE;
                                    arrayList35 = arrayList5;
                                    arrayList36 = arrayList36;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    str = str22;
                                    arrayList19 = arrayList19;
                                    arrayList29 = arrayList39;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    dg2Var2 = dg2Var3;
                                    str9 = str9;
                                    arrayList18 = arrayList18;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                } else {
                                    arrayList3 = arrayList5;
                                    Splitter splitter3 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit6 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1964744830:
                                ArrayList arrayList41 = arrayList35;
                                arrayList36 = arrayList36;
                                arrayList5 = arrayList41;
                                arrayList30 = arrayList30;
                                arrayList32 = arrayList32;
                                str2 = str2;
                                arrayList18 = arrayList18;
                                str9 = str9;
                                arrayList19 = arrayList19;
                                arrayList4 = arrayList37;
                                if (key.equals("offline_ad_config")) {
                                    JsonObject asJsonObject3 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject3, "getAsJsonObject(...)");
                                    qb2VarA = nb2.a(asJsonObject3);
                                    p005kotlin.Unit unit7 = p005kotlin.Unit.INSTANCE;
                                    str = str;
                                    arrayList3 = arrayList5;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList3 = arrayList5;
                                    Splitter splitter4 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit8 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1882692970:
                                ArrayList arrayList42 = arrayList35;
                                arrayList36 = arrayList36;
                                arrayList5 = arrayList42;
                                arrayList30 = arrayList30;
                                arrayList32 = arrayList32;
                                str2 = str2;
                                arrayList18 = arrayList18;
                                str9 = str9;
                                arrayList19 = arrayList19;
                                arrayList4 = arrayList37;
                                if (key.equals("swipeable_interstitial_ad_config")) {
                                    JsonObject asJsonObject4 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject4, "getAsJsonObject(...)");
                                    qm3VarA = pm3.a(asJsonObject4);
                                    p005kotlin.Unit unit9 = p005kotlin.Unit.INSTANCE;
                                    str = str;
                                    arrayList3 = arrayList5;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList3 = arrayList5;
                                    Splitter splitter5 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit10 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1843156475:
                                ArrayList arrayList43 = arrayList35;
                                arrayList36 = arrayList36;
                                arrayList5 = arrayList43;
                                arrayList30 = arrayList30;
                                arrayList32 = arrayList32;
                                str2 = str2;
                                arrayList18 = arrayList18;
                                str9 = str9;
                                arrayList19 = arrayList19;
                                arrayList4 = arrayList37;
                                if (key.equals("is_consent")) {
                                    asBoolean16 = value.getAsBoolean();
                                    p005kotlin.Unit unit11 = p005kotlin.Unit.INSTANCE;
                                    str = str;
                                    arrayList3 = arrayList5;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList3 = arrayList5;
                                    Splitter splitter6 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit12 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1840512279:
                                ArrayList arrayList44 = arrayList35;
                                arrayList36 = arrayList36;
                                arrayList5 = arrayList44;
                                arrayList30 = arrayList30;
                                str2 = str2;
                                arrayList18 = arrayList18;
                                str9 = str9;
                                arrayList19 = arrayList19;
                                arrayList4 = arrayList37;
                                if (key.equals("presentation_urls")) {
                                    ds1 ds1Var3 = ds1.a;
                                    JsonArray asJsonArray2 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray2, "getAsJsonArray(...)");
                                    int i2 = 0;
                                    for (JsonElement jsonElement : asJsonArray2) {
                                        int i3 = i2 + 1;
                                        if (i2 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement2 = jsonElement;
                                        Intrinsics.checkNotNull(jsonElement2);
                                        String asString7 = jsonElement2.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString7, "getAsString(...)");
                                        Uri uri = Uri.parse(asString7);
                                        if (uri != null) {
                                            arrayList6 = arrayList32;
                                            arrayList6.add(uri);
                                            p005kotlin.Unit unit13 = p005kotlin.Unit.INSTANCE;
                                        } else {
                                            arrayList6 = arrayList32;
                                        }
                                        arrayList32 = arrayList6;
                                        i2 = i3;
                                    }
                                    arrayList32 = arrayList32;
                                    p005kotlin.Unit unit14 = p005kotlin.Unit.INSTANCE;
                                    str = str;
                                    arrayList3 = arrayList5;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList32 = arrayList32;
                                    arrayList3 = arrayList5;
                                    Splitter splitter7 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit15 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1828733410:
                                arrayList7 = arrayList35;
                                if (key.equals("network_ping_config")) {
                                    Intrinsics.checkNotNull(value);
                                    String str23 = str2;
                                    Intrinsics.checkNotNullParameter(value, str23);
                                    if (value.isJsonObject()) {
                                        arrayList36 = arrayList36;
                                        if (value.getAsJsonObject().has("ping_strategy")) {
                                            JsonElement jsonElement3 = value.getAsJsonObject().get("ping_strategy");
                                            if (jsonElement3.isJsonObject()) {
                                                JsonObject asJsonObject5 = jsonElement3.getAsJsonObject();
                                                Intrinsics.checkNotNullExpressionValue(asJsonObject5, "getAsJsonObject(...)");
                                                Intrinsics.checkNotNullParameter(asJsonObject5, str23);
                                                ds1 ds1Var4 = ds1.a;
                                                ga2Var = new ga2(new ha2(ds1.a(asJsonObject5, "max_attempts", 1), ds1.a(asJsonObject5, "initial_backoff_ms", 0), ds1.a(asJsonObject5, "buffer_after_max_attempts", false), ds1.a(asJsonObject5, "backoff_multiplier", 1.0d)));
                                            }
                                            p005kotlin.Unit unit16 = p005kotlin.Unit.INSTANCE;
                                            str2 = str23;
                                            arrayList3 = arrayList7;
                                            arrayList4 = arrayList37;
                                            arrayList32 = arrayList32;
                                            arrayList37 = arrayList4;
                                            arrayList32 = arrayList32;
                                            arrayList19 = arrayList19;
                                            arrayList36 = arrayList36;
                                            arrayList25 = arrayList;
                                            arrayList26 = arrayList2;
                                            str9 = str9;
                                            arrayList35 = arrayList3;
                                            arrayList18 = arrayList18;
                                            str = str;
                                            str2 = str2;
                                            arrayList30 = arrayList30;
                                            arrayList29 = arrayList39;
                                            break;
                                        }
                                    } else {
                                        arrayList36 = arrayList36;
                                    }
                                    ga2Var = null;
                                    p005kotlin.Unit unit17 = p005kotlin.Unit.INSTANCE;
                                    str2 = str23;
                                    arrayList3 = arrayList7;
                                    arrayList4 = arrayList37;
                                    arrayList32 = arrayList32;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                arrayList30 = arrayList30;
                                arrayList3 = arrayList7;
                                arrayList19 = arrayList19;
                                arrayList4 = arrayList37;
                                Splitter splitter8 = f01.a;
                                f01.a(new b2(key));
                                p005kotlin.Unit unit18 = p005kotlin.Unit.INSTANCE;
                                arrayList37 = arrayList4;
                                arrayList32 = arrayList32;
                                arrayList19 = arrayList19;
                                arrayList36 = arrayList36;
                                arrayList25 = arrayList;
                                arrayList26 = arrayList2;
                                str9 = str9;
                                arrayList35 = arrayList3;
                                arrayList18 = arrayList18;
                                str = str;
                                str2 = str2;
                                arrayList30 = arrayList30;
                                arrayList29 = arrayList39;
                                break;
                            case -1812055556:
                                arrayList7 = arrayList35;
                                if (key.equals("play_prewarm_options")) {
                                    JsonObject asJsonObject6 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject6, "getAsJsonObject(...)");
                                    uo2VarA = to2.a(asJsonObject6);
                                    p005kotlin.Unit unit19 = p005kotlin.Unit.INSTANCE;
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    Splitter splitter9 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit110 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1785028569:
                                arrayList7 = arrayList35;
                                if (key.equals("parallel_key")) {
                                    asString2 = value.getAsString();
                                    p005kotlin.Unit unit20 = p005kotlin.Unit.INSTANCE;
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    Splitter splitter10 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit111 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1776946669:
                                arrayList7 = arrayList35;
                                if (key.equals("ad_source_name")) {
                                    String asString8 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString8, "getAsString(...)");
                                    p005kotlin.Unit unit21 = p005kotlin.Unit.INSTANCE;
                                    str6 = asString8;
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    Splitter splitter11 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit112 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1732897806:
                                arrayList7 = arrayList35;
                                if (key.equals("post_click_lifecycle_interaction_macroed_params")) {
                                    asString4 = value.getAsString();
                                    p005kotlin.Unit unit22 = p005kotlin.Unit.INSTANCE;
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    Splitter splitter12 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit113 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1620552059:
                                arrayList7 = arrayList35;
                                if (key.equals("preload_sort_type")) {
                                    rt2 rt2Var = st2.a;
                                    int asInt2 = value.getAsInt();
                                    rt2Var.getClass();
                                    st2 st2VarA = rt2.a(asInt2);
                                    p005kotlin.Unit unit23 = p005kotlin.Unit.INSTANCE;
                                    st2Var2 = st2VarA;
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    Splitter splitter13 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit114 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1620470467:
                                arrayList7 = arrayList35;
                                if (key.equals("backend_query_id")) {
                                    String asString9 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString9, "getAsString(...)");
                                    p005kotlin.Unit unit24 = p005kotlin.Unit.INSTANCE;
                                    str14 = asString9;
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    Splitter splitter14 = f01.a;
                                    f01.a(new b2(key));
                                    p005kotlin.Unit unit115 = p005kotlin.Unit.INSTANCE;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1550155393:
                                if (key.equals("nofill_urls")) {
                                    ds1 ds1Var5 = ds1.a;
                                    JsonArray asJsonArray3 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray3, "getAsJsonArray(...)");
                                    int i4 = 0;
                                    for (JsonElement jsonElement4 : asJsonArray3) {
                                        int i5 = i4 + 1;
                                        if (i4 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement5 = jsonElement4;
                                        Intrinsics.checkNotNull(jsonElement5);
                                        String asString10 = jsonElement5.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString10, "getAsString(...)");
                                        Uri uri2 = Uri.parse(asString10);
                                        if (uri2 != null) {
                                            arrayList8 = arrayList35;
                                            arrayList8.add(uri2);
                                            p005kotlin.Unit unit25 = p005kotlin.Unit.INSTANCE;
                                        } else {
                                            arrayList8 = arrayList35;
                                        }
                                        arrayList35 = arrayList8;
                                        i4 = i5;
                                    }
                                    arrayList7 = arrayList35;
                                    p005kotlin.Unit unit26 = p005kotlin.Unit.INSTANCE;
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList7;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1538424578:
                                if (key.equals("enable_lock_screen_ad")) {
                                    asBoolean4 = value.getAsBoolean();
                                    p005kotlin.Unit unit27 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1456307492:
                                if (key.equals("post_click_lifecycle_interaction_label")) {
                                    asString3 = value.getAsString();
                                    p005kotlin.Unit unit28 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1440104884:
                                if (key.equals("is_custom_close_blocked")) {
                                    asBoolean7 = value.getAsBoolean();
                                    p005kotlin.Unit unit29 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1439500848:
                                if (key.equals("orientation")) {
                                    List list = i2.J0;
                                    String asString11 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString11, "getAsString(...)");
                                    iA = a(asString11);
                                    p005kotlin.Unit unit30 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1428969291:
                                arrayList9 = arrayList38;
                                if (key.equals("enable_omid")) {
                                    asBoolean8 = value.getAsBoolean();
                                    p005kotlin.Unit unit31 = p005kotlin.Unit.INSTANCE;
                                    arrayList38 = arrayList9;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                arrayList38 = arrayList9;
                                break;
                            case -1406227629:
                                arrayList9 = arrayList38;
                                if (key.equals("buffer_click_url_as_ready_to_ping")) {
                                    asBoolean = value.getAsBoolean();
                                    p005kotlin.Unit unit32 = p005kotlin.Unit.INSTANCE;
                                    arrayList38 = arrayList9;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                arrayList38 = arrayList9;
                                break;
                            case -1403779768:
                                arrayList9 = arrayList38;
                                if (key.equals("showable_impression_type")) {
                                    g2 g2Var = h2.b;
                                    int asInt3 = value.getAsInt();
                                    g2Var.getClass();
                                    h2 h2VarA = g2.a(asInt3);
                                    p005kotlin.Unit unit33 = p005kotlin.Unit.INSTANCE;
                                    h2Var = h2VarA;
                                    arrayList38 = arrayList9;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList38 = arrayList9;
                                }
                                break;
                            case -1360811658:
                                if (key.equals("ad_sizes")) {
                                    ds1 ds1Var6 = ds1.a;
                                    JsonArray asJsonArray4 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray4, "getAsJsonArray(...)");
                                    int i6 = 0;
                                    for (JsonElement jsonElement6 : asJsonArray4) {
                                        int i7 = i6 + 1;
                                        if (i6 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement7 = jsonElement6;
                                        Intrinsics.checkNotNull(jsonElement7);
                                        JsonObject asJsonObject7 = jsonElement7.getAsJsonObject();
                                        Intrinsics.checkNotNullExpressionValue(asJsonObject7, "getAsJsonObject(...)");
                                        p2 p2VarA = o2.a(asJsonObject7);
                                        if (p2VarA != null) {
                                            arrayList10 = arrayList38;
                                            arrayList10.add(p2VarA);
                                            p005kotlin.Unit unit34 = p005kotlin.Unit.INSTANCE;
                                        } else {
                                            arrayList10 = arrayList38;
                                        }
                                        arrayList38 = arrayList10;
                                        i6 = i7;
                                    }
                                    arrayList9 = arrayList38;
                                    p005kotlin.Unit unit35 = p005kotlin.Unit.INSTANCE;
                                    arrayList38 = arrayList9;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1306015996:
                                if (key.equals("adapters")) {
                                    ds1 ds1Var7 = ds1.a;
                                    JsonArray asJsonArray5 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray5, "getAsJsonArray(...)");
                                    int i8 = 0;
                                    for (JsonElement jsonElement8 : asJsonArray5) {
                                        int i9 = i8 + 1;
                                        if (i8 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement9 = jsonElement8;
                                        Intrinsics.checkNotNull(jsonElement9);
                                        String asString12 = jsonElement9.getAsString();
                                        if (asString12 != null) {
                                            arrayList11 = arrayList37;
                                            arrayList11.add(asString12);
                                            p005kotlin.Unit unit36 = p005kotlin.Unit.INSTANCE;
                                        } else {
                                            arrayList11 = arrayList37;
                                        }
                                        arrayList37 = arrayList11;
                                        i8 = i9;
                                    }
                                    p005kotlin.Unit unit37 = p005kotlin.Unit.INSTANCE;
                                    arrayList30 = arrayList30;
                                    arrayList3 = arrayList35;
                                    str2 = str2;
                                    arrayList36 = arrayList36;
                                    arrayList18 = arrayList18;
                                    arrayList4 = arrayList37;
                                    arrayList32 = arrayList32;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1303332046:
                                arrayList12 = arrayList39;
                                if (key.equals("test_mode_enabled")) {
                                    asBoolean13 = value.getAsBoolean();
                                    p005kotlin.Unit unit38 = p005kotlin.Unit.INSTANCE;
                                    arrayList39 = arrayList12;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                arrayList39 = arrayList12;
                                break;
                            case -1289032093:
                                arrayList12 = arrayList39;
                                if (key.equals(HandleInvocationsFromAdViewer.KEY_EXTRAS)) {
                                    JsonObject asJsonObject8 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject8, "getAsJsonObject(...)");
                                    p005kotlin.Unit unit39 = p005kotlin.Unit.INSTANCE;
                                    jsonObject8 = asJsonObject8;
                                    arrayList39 = arrayList12;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                arrayList39 = arrayList12;
                                break;
                            case -1240082064:
                                arrayList12 = arrayList39;
                                if (key.equals("ad_event_value")) {
                                    JsonObject asJsonObject9 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject9, "getAsJsonObject(...)");
                                    xcVarA = wc.a(asJsonObject9);
                                    p005kotlin.Unit unit40 = p005kotlin.Unit.INSTANCE;
                                    arrayList39 = arrayList12;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList39 = arrayList12;
                                }
                                break;
                            case -1234181075:
                                arrayList12 = arrayList39;
                                if (key.equals("allow_pub_rendered_attribution")) {
                                    asBoolean19 = value.getAsBoolean();
                                    p005kotlin.Unit unit41 = p005kotlin.Unit.INSTANCE;
                                    arrayList39 = arrayList12;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList39 = arrayList12;
                                }
                                break;
                            case -1168140544:
                                if (key.equals("presentation_error_urls")) {
                                    ds1 ds1Var8 = ds1.a;
                                    JsonArray asJsonArray6 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray6, "getAsJsonArray(...)");
                                    int i10 = 0;
                                    for (JsonElement jsonElement10 : asJsonArray6) {
                                        int i11 = i10 + 1;
                                        if (i10 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement11 = jsonElement10;
                                        Intrinsics.checkNotNull(jsonElement11);
                                        String asString13 = jsonElement11.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString13, "getAsString(...)");
                                        Uri uri3 = Uri.parse(asString13);
                                        if (uri3 != null) {
                                            arrayList13 = arrayList39;
                                            arrayList13.add(uri3);
                                            p005kotlin.Unit unit42 = p005kotlin.Unit.INSTANCE;
                                        } else {
                                            arrayList13 = arrayList39;
                                        }
                                        arrayList39 = arrayList13;
                                        i10 = i11;
                                    }
                                    arrayList12 = arrayList39;
                                    p005kotlin.Unit unit43 = p005kotlin.Unit.INSTANCE;
                                    arrayList39 = arrayList12;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1152230954:
                                arrayList14 = arrayList;
                                if (key.equals(AdRevenueScheme.AD_TYPE)) {
                                    ac acVar = bc.a;
                                    String asString14 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString14, "getAsString(...)");
                                    String upperCase = asString14.toUpperCase(Locale.ROOT);
                                    Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                                    acVar.getClass();
                                    bc bcVarA = ac.a(upperCase);
                                    p005kotlin.Unit unit44 = p005kotlin.Unit.INSTANCE;
                                    bcVar3 = bcVarA;
                                    arrayList = arrayList14;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                arrayList = arrayList14;
                                break;
                            case -1146534047:
                                arrayList14 = arrayList;
                                if (key.equals("is_scroll_aware")) {
                                    asBoolean9 = value.getAsBoolean();
                                    p005kotlin.Unit unit45 = p005kotlin.Unit.INSTANCE;
                                    arrayList = arrayList14;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList = arrayList14;
                                }
                                break;
                            case -1115838944:
                                if (key.equals("fill_urls")) {
                                    ds1 ds1Var9 = ds1.a;
                                    JsonArray asJsonArray7 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray7, "getAsJsonArray(...)");
                                    int i12 = 0;
                                    for (JsonElement jsonElement12 : asJsonArray7) {
                                        int i13 = i12 + 1;
                                        if (i12 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement13 = jsonElement12;
                                        Intrinsics.checkNotNull(jsonElement13);
                                        String asString15 = jsonElement13.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString15, "getAsString(...)");
                                        Uri uri4 = Uri.parse(asString15);
                                        if (uri4 != null) {
                                            arrayList15 = arrayList;
                                            arrayList15.add(uri4);
                                            p005kotlin.Unit unit46 = p005kotlin.Unit.INSTANCE;
                                        } else {
                                            arrayList15 = arrayList;
                                        }
                                        arrayList = arrayList15;
                                        i12 = i13;
                                    }
                                    arrayList14 = arrayList;
                                    p005kotlin.Unit unit47 = p005kotlin.Unit.INSTANCE;
                                    arrayList = arrayList14;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1081936678:
                                arrayList16 = arrayList2;
                                if (key.equals("allocation_id")) {
                                    String asString16 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString16, "getAsString(...)");
                                    p005kotlin.Unit unit48 = p005kotlin.Unit.INSTANCE;
                                    str5 = asString16;
                                    arrayList2 = arrayList16;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                } else {
                                    arrayList2 = arrayList16;
                                }
                                break;
                            case -1079896384:
                                if (key.equals("ad_quality_urls")) {
                                    ds1 ds1Var10 = ds1.a;
                                    JsonArray asJsonArray8 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray8, "getAsJsonArray(...)");
                                    int i14 = 0;
                                    for (JsonElement jsonElement14 : asJsonArray8) {
                                        int i15 = i14 + 1;
                                        if (i14 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement15 = jsonElement14;
                                        Intrinsics.checkNotNull(jsonElement15);
                                        String asString17 = jsonElement15.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString17, "getAsString(...)");
                                        Uri uri5 = Uri.parse(asString17);
                                        if (uri5 != null) {
                                            arrayList17 = arrayList2;
                                            arrayList17.add(uri5);
                                            p005kotlin.Unit unit49 = p005kotlin.Unit.INSTANCE;
                                        } else {
                                            arrayList17 = arrayList2;
                                        }
                                        arrayList2 = arrayList17;
                                        i14 = i15;
                                    }
                                    arrayList16 = arrayList2;
                                    p005kotlin.Unit unit50 = p005kotlin.Unit.INSTANCE;
                                    arrayList2 = arrayList16;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1078050970:
                                if (key.equals("video_complete_urls")) {
                                    ds1 ds1Var11 = ds1.a;
                                    JsonArray asJsonArray9 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray9, "getAsJsonArray(...)");
                                    int i16 = 0;
                                    for (JsonElement jsonElement16 : asJsonArray9) {
                                        int i17 = i16 + 1;
                                        if (i16 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement17 = jsonElement16;
                                        Intrinsics.checkNotNull(jsonElement17);
                                        String asString18 = jsonElement17.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString18, "getAsString(...)");
                                        Uri uri6 = Uri.parse(asString18);
                                        if (uri6 != null) {
                                            arrayList24.add(uri6);
                                            p005kotlin.Unit unit51 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i16 = i17;
                                    }
                                    p005kotlin.Unit unit52 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -1051269058:
                                if (key.equals("active_view")) {
                                    String string = value.toString();
                                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                                    p005kotlin.Unit unit53 = p005kotlin.Unit.INSTANCE;
                                    str3 = string;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -982608540:
                                if (key.equals("valid_from_timestamp")) {
                                    String asString19 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString19, "getAsString(...)");
                                    p005kotlin.Unit unit54 = p005kotlin.Unit.INSTANCE;
                                    str16 = asString19;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -972056451:
                                if (key.equals("ad_source_instance_id")) {
                                    String asString20 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString20, "getAsString(...)");
                                    p005kotlin.Unit unit55 = p005kotlin.Unit.INSTANCE;
                                    arrayList30 = arrayList30;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList32 = arrayList32;
                                    str2 = str2;
                                    arrayList18 = arrayList18;
                                    str9 = asString20;
                                    str = str;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                }
                                arrayList37 = arrayList4;
                                arrayList32 = arrayList32;
                                arrayList19 = arrayList19;
                                arrayList36 = arrayList36;
                                arrayList25 = arrayList;
                                arrayList26 = arrayList2;
                                str9 = str9;
                                arrayList35 = arrayList3;
                                arrayList18 = arrayList18;
                                str = str;
                                str2 = str2;
                                arrayList30 = arrayList30;
                                arrayList29 = arrayList39;
                                break;
                            case -776859333:
                                if (key.equals("click_urls")) {
                                    ds1 ds1Var12 = ds1.a;
                                    JsonArray asJsonArray10 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray10, "getAsJsonArray(...)");
                                    int i18 = 0;
                                    for (JsonElement jsonElement18 : asJsonArray10) {
                                        int i19 = i18 + 1;
                                        if (i18 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement19 = jsonElement18;
                                        Intrinsics.checkNotNull(jsonElement19);
                                        String asString21 = jsonElement19.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString21, "getAsString(...)");
                                        Uri uri7 = Uri.parse(asString21);
                                        if (uri7 != null) {
                                            arrayList19.add(uri7);
                                            p005kotlin.Unit unit56 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i18 = i19;
                                    }
                                    p005kotlin.Unit unit57 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -544216775:
                                if (key.equals("safe_browsing")) {
                                    JsonObject asJsonObject10 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject10, "getAsJsonObject(...)");
                                    o93 o93VarA = n93.a(asJsonObject10);
                                    p005kotlin.Unit unit58 = p005kotlin.Unit.INSTANCE;
                                    o93Var2 = o93VarA;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -437057161:
                                if (key.equals("imp_urls")) {
                                    ds1 ds1Var13 = ds1.a;
                                    JsonArray asJsonArray11 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray11, "getAsJsonArray(...)");
                                    int i20 = 0;
                                    for (JsonElement jsonElement20 : asJsonArray11) {
                                        int i21 = i20 + 1;
                                        if (i20 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement21 = jsonElement20;
                                        Intrinsics.checkNotNull(jsonElement21);
                                        String asString22 = jsonElement21.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString22, "getAsString(...)");
                                        Uri uri8 = Uri.parse(asString22);
                                        if (uri8 != null) {
                                            arrayList20.add(uri8);
                                            p005kotlin.Unit unit59 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i20 = i21;
                                    }
                                    p005kotlin.Unit unit60 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -404433734:
                                if (key.equals("rtb_native_required_assets")) {
                                    JsonObject asJsonObject11 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject11, "getAsJsonObject(...)");
                                    p005kotlin.Unit unit61 = p005kotlin.Unit.INSTANCE;
                                    jsonObject6 = asJsonObject11;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -404326515:
                                if (key.equals("render_timeout_ms")) {
                                    Duration.Companion companion2 = Duration.INSTANCE;
                                    long duration = DurationKt.toDuration(value.getAsInt(), DurationUnit.MILLISECONDS);
                                    p005kotlin.Unit unit62 = p005kotlin.Unit.INSTANCE;
                                    j = duration;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -388807511:
                                if (key.equals("content_url")) {
                                    asString = value.getAsString();
                                    p005kotlin.Unit unit63 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -213449460:
                                if (key.equals("force_disable_hardware_acceleration")) {
                                    asBoolean3 = value.getAsBoolean();
                                    p005kotlin.Unit unit64 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -213424028:
                                if (key.equals("watermark")) {
                                    String asString23 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString23, "getAsString(...)");
                                    p005kotlin.Unit unit65 = p005kotlin.Unit.INSTANCE;
                                    str18 = asString23;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case -180214626:
                                if (key.equals("native_required_asset_viewability")) {
                                    asBoolean2 = value.getAsBoolean();
                                    p005kotlin.Unit unit66 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 3107:
                                if (key.equals("ad")) {
                                    JsonObject asJsonObject12 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject12, "getAsJsonObject(...)");
                                    vc1 vc1VarA = uc1.a(asJsonObject12, deferred);
                                    JsonObject jsonObject10 = vc1VarA.d;
                                    z = (jsonObject10 == null || (jsonArrayE = ds1.e(jsonObject10, "slots")) == null || jsonArrayE.size() <= 0) ? false : true;
                                    p005kotlin.Unit unit67 = p005kotlin.Unit.INSTANCE;
                                    vc1Var = vc1VarA;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 3355:
                                if (key.equals("id")) {
                                    String asString24 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString24, "getAsString(...)");
                                    p005kotlin.Unit unit68 = p005kotlin.Unit.INSTANCE;
                                    str11 = asString24;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 3076010:
                                if (key.equals("data")) {
                                    ?? asJsonObject13 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject13, "getAsJsonObject(...)");
                                    objectRef.element = asJsonObject13;
                                    p005kotlin.Unit unit69 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 37109963:
                                if (key.equals("request_id")) {
                                    String asString25 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString25, "getAsString(...)");
                                    p005kotlin.Unit unit70 = p005kotlin.Unit.INSTANCE;
                                    str12 = asString25;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 63195984:
                                if (key.equals("render_test_label")) {
                                    asBoolean11 = value.getAsBoolean();
                                    p005kotlin.Unit unit71 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 107433883:
                                if (key.equals("qdata")) {
                                    String asString26 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString26, "getAsString(...)");
                                    p005kotlin.Unit unit72 = p005kotlin.Unit.INSTANCE;
                                    str13 = asString26;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 230323073:
                                if (key.equals("ad_load_urls")) {
                                    ds1 ds1Var14 = ds1.a;
                                    JsonArray asJsonArray12 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray12, "getAsJsonArray(...)");
                                    int i22 = 0;
                                    for (JsonElement jsonElement22 : asJsonArray12) {
                                        int i23 = i22 + 1;
                                        if (i22 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement23 = jsonElement22;
                                        Intrinsics.checkNotNull(jsonElement23);
                                        String asString27 = jsonElement23.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString27, "getAsString(...)");
                                        Uri uri9 = Uri.parse(asString27);
                                        if (uri9 != null) {
                                            arrayList21.add(uri9);
                                            p005kotlin.Unit unit73 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i22 = i23;
                                    }
                                    p005kotlin.Unit unit74 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 418392395:
                                if (key.equals("is_closable_area_disabled")) {
                                    asBoolean5 = value.getAsBoolean();
                                    p005kotlin.Unit unit75 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 542250332:
                                if (key.equals("consent_form_action_identifier")) {
                                    asInt = value.getAsInt();
                                    p005kotlin.Unit unit76 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 549176928:
                                if (key.equals("presentation_error_timeout_ms")) {
                                    Duration.Companion companion3 = Duration.INSTANCE;
                                    long duration2 = DurationKt.toDuration(value.getAsInt(), DurationUnit.MILLISECONDS);
                                    p005kotlin.Unit unit77 = p005kotlin.Unit.INSTANCE;
                                    j2 = duration2;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 597473788:
                                if (key.equals("debug_dialog_string")) {
                                    String asString28 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString28, "getAsString(...)");
                                    p005kotlin.Unit unit78 = p005kotlin.Unit.INSTANCE;
                                    str20 = asString28;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 639133141:
                                if (key.equals("response_info_extras_override")) {
                                    JsonObject jsonObjectA = ds1.a(value);
                                    if (jsonObjectA == null) {
                                        jsonObjectA = new JsonObject();
                                    }
                                    p005kotlin.Unit unit79 = p005kotlin.Unit.INSTANCE;
                                    jsonObject5 = jsonObjectA;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 754887508:
                                if (key.equals("container_sizes")) {
                                    ds1 ds1Var15 = ds1.a;
                                    JsonArray asJsonArray13 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray13, "getAsJsonArray(...)");
                                    int i24 = 0;
                                    for (JsonElement jsonElement24 : asJsonArray13) {
                                        int i25 = i24 + 1;
                                        if (i24 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement25 = jsonElement24;
                                        Intrinsics.checkNotNull(jsonElement25);
                                        JsonObject asJsonObject14 = jsonElement25.getAsJsonObject();
                                        Intrinsics.checkNotNullExpressionValue(asJsonObject14, "getAsJsonObject(...)");
                                        p2 p2VarA2 = o2.a(asJsonObject14);
                                        if (p2VarA2 != null) {
                                            arrayList31.add(p2VarA2);
                                            p005kotlin.Unit unit80 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i24 = i25;
                                    }
                                    p005kotlin.Unit unit81 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 791122864:
                                if (key.equals("impression_type")) {
                                    d2 d2Var = e2.b;
                                    int asInt4 = value.getAsInt();
                                    d2Var.getClass();
                                    e2 e2VarA = d2.a(asInt4);
                                    p005kotlin.Unit unit82 = p005kotlin.Unit.INSTANCE;
                                    e2Var2 = e2VarA;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 805095541:
                                if (key.equals("analytics_event_name_to_parameters_map")) {
                                    ds1 ds1Var16 = ds1.a;
                                    JsonObject asJsonObject15 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject15, "getAsJsonObject(...)");
                                    Bundle bundleB = ds1.b(asJsonObject15);
                                    p005kotlin.Unit unit83 = p005kotlin.Unit.INSTANCE;
                                    bundle2 = bundleB;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1010584092:
                                if (key.equals("transaction_id")) {
                                    String asString29 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString29, "getAsString(...)");
                                    p005kotlin.Unit unit84 = p005kotlin.Unit.INSTANCE;
                                    str15 = asString29;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1100650276:
                                if (key.equals("rewards")) {
                                    Intrinsics.checkNotNull(value);
                                    l63VarA = m63.a(value);
                                    p005kotlin.Unit unit85 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1141602460:
                                if (key.equals("adapter_response_info_key")) {
                                    String asString30 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString30, "getAsString(...)");
                                    p005kotlin.Unit unit86 = p005kotlin.Unit.INSTANCE;
                                    str4 = asString30;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1186014765:
                                if (key.equals("cache_hit_urls")) {
                                    ds1 ds1Var17 = ds1.a;
                                    JsonArray asJsonArray14 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray14, "getAsJsonArray(...)");
                                    int i26 = 0;
                                    for (JsonElement jsonElement26 : asJsonArray14) {
                                        int i27 = i26 + 1;
                                        if (i26 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement27 = jsonElement26;
                                        Intrinsics.checkNotNull(jsonElement27);
                                        String asString31 = jsonElement27.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString31, "getAsString(...)");
                                        Uri uri10 = Uri.parse(asString31);
                                        if (uri10 != null) {
                                            arrayList36.add(uri10);
                                            p005kotlin.Unit unit87 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i26 = i27;
                                    }
                                    p005kotlin.Unit unit88 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1303622534:
                                if (key.equals("preload_sort_value")) {
                                    double asDouble = value.getAsDouble();
                                    p005kotlin.Unit unit89 = p005kotlin.Unit.INSTANCE;
                                    d = asDouble;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1320579560:
                                if (key.equals("base_creative_conversion_url")) {
                                    asString5 = value.getAsString();
                                    p005kotlin.Unit unit90 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1321720943:
                                if (key.equals("allow_pub_owned_ad_view")) {
                                    asBoolean18 = value.getAsBoolean();
                                    p005kotlin.Unit unit91 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1364100807:
                                if (key.equals("recursive_request_parameters")) {
                                    JsonObject asJsonObject16 = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject16, "getAsJsonObject(...)");
                                    p005kotlin.Unit unit92 = p005kotlin.Unit.INSTANCE;
                                    jsonObject7 = asJsonObject16;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1422388341:
                                if (key.equals("is_collapsible")) {
                                    asBoolean6 = value.getAsBoolean();
                                    p005kotlin.Unit unit93 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1437255331:
                                if (key.equals("ad_source_id")) {
                                    String asString32 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString32, "getAsString(...)");
                                    p005kotlin.Unit unit94 = p005kotlin.Unit.INSTANCE;
                                    str7 = asString32;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1556932485:
                                if (key.equals("post_click_lifecycle_monitoring_duration_ms")) {
                                    Duration.Companion companion4 = Duration.INSTANCE;
                                    long duration3 = DurationKt.toDuration(value.getAsInt(), DurationUnit.MILLISECONDS);
                                    p005kotlin.Unit unit95 = p005kotlin.Unit.INSTANCE;
                                    j3 = duration3;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1565514205:
                                if (key.equals("adapter_only_third_party_impression")) {
                                    asBoolean17 = value.getAsBoolean();
                                    p005kotlin.Unit unit96 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1637553475:
                                if (key.equals("bid_response")) {
                                    String asString33 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString33, "getAsString(...)");
                                    p005kotlin.Unit unit97 = p005kotlin.Unit.INSTANCE;
                                    str10 = asString33;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1638957285:
                                if (key.equals("video_start_urls")) {
                                    ds1 ds1Var18 = ds1.a;
                                    JsonArray asJsonArray15 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray15, "getAsJsonArray(...)");
                                    int i28 = 0;
                                    for (JsonElement jsonElement28 : asJsonArray15) {
                                        int i29 = i28 + 1;
                                        if (i28 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement29 = jsonElement28;
                                        Intrinsics.checkNotNull(jsonElement29);
                                        String asString34 = jsonElement29.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString34, "getAsString(...)");
                                        Uri uri11 = Uri.parse(asString34);
                                        if (uri11 != null) {
                                            arrayList22.add(uri11);
                                            p005kotlin.Unit unit98 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i28 = i29;
                                    }
                                    p005kotlin.Unit unit99 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1686319423:
                                if (key.equals("ad_network_class_name")) {
                                    String asString35 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString35, "getAsString(...)");
                                    p005kotlin.Unit unit100 = p005kotlin.Unit.INSTANCE;
                                    str19 = asString35;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1688341040:
                                if (key.equals("video_reward_urls")) {
                                    ds1 ds1Var19 = ds1.a;
                                    JsonArray asJsonArray16 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray16, "getAsJsonArray(...)");
                                    int i30 = 0;
                                    for (JsonElement jsonElement30 : asJsonArray16) {
                                        int i31 = i30 + 1;
                                        if (i30 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement31 = jsonElement30;
                                        Intrinsics.checkNotNull(jsonElement31);
                                        String asString36 = jsonElement31.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString36, "getAsString(...)");
                                        Uri uri12 = Uri.parse(asString36);
                                        if (uri12 != null) {
                                            arrayList23.add(uri12);
                                            p005kotlin.Unit unit101 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i30 = i31;
                                    }
                                    p005kotlin.Unit unit102 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1799285870:
                                if (key.equals("use_third_party_container_height")) {
                                    asBoolean14 = value.getAsBoolean();
                                    p005kotlin.Unit unit103 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1839650832:
                                if (key.equals("renderers")) {
                                    ds1 ds1Var20 = ds1.a;
                                    JsonArray asJsonArray17 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray17, "getAsJsonArray(...)");
                                    int i32 = 0;
                                    for (JsonElement jsonElement32 : asJsonArray17) {
                                        int i33 = i32 + 1;
                                        if (i32 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement33 = jsonElement32;
                                        Intrinsics.checkNotNull(jsonElement33);
                                        String asString37 = jsonElement33.getAsString();
                                        if (asString37 != null) {
                                            arrayList18.add(asString37);
                                            p005kotlin.Unit unit104 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i32 = i33;
                                    }
                                    p005kotlin.Unit unit105 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 1875425491:
                                if (key.equals("is_analytics_logging_enabled")) {
                                    asBoolean12 = value.getAsBoolean();
                                    p005kotlin.Unit unit106 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 2004337096:
                                if (key.equals("recursive_signal_collection")) {
                                    asJsonArray = value.getAsJsonArray();
                                    p005kotlin.Unit unit107 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 2068142375:
                                if (key.equals("rule_line_external_id")) {
                                    String asString38 = value.getAsString();
                                    Intrinsics.checkNotNullExpressionValue(asString38, "getAsString(...)");
                                    p005kotlin.Unit unit108 = p005kotlin.Unit.INSTANCE;
                                    str17 = asString38;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 2072888499:
                                if (key.equals("manual_tracking_urls")) {
                                    ds1 ds1Var21 = ds1.a;
                                    JsonArray asJsonArray18 = value.getAsJsonArray();
                                    Intrinsics.checkNotNullExpressionValue(asJsonArray18, "getAsJsonArray(...)");
                                    int i34 = 0;
                                    for (JsonElement jsonElement34 : asJsonArray18) {
                                        int i35 = i34 + 1;
                                        if (i34 < 0) {
                                            CollectionsKt.throwIndexOverflow();
                                        }
                                        JsonElement jsonElement35 = jsonElement34;
                                        Intrinsics.checkNotNull(jsonElement35);
                                        String asString39 = jsonElement35.getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString39, "getAsString(...)");
                                        Uri uri13 = Uri.parse(asString39);
                                        if (uri13 != null) {
                                            arrayList30.add(uri13);
                                            p005kotlin.Unit unit109 = p005kotlin.Unit.INSTANCE;
                                        }
                                        i34 = i35;
                                    }
                                    p005kotlin.Unit unit116 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 2075506442:
                                if (key.equals("render_serially")) {
                                    asBoolean10 = value.getAsBoolean();
                                    p005kotlin.Unit unit117 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            case 2117205836:
                                if (key.equals("flow_control")) {
                                    asBoolean15 = value.getAsBoolean();
                                    p005kotlin.Unit unit118 = p005kotlin.Unit.INSTANCE;
                                    arrayList3 = arrayList35;
                                    arrayList36 = arrayList36;
                                    arrayList19 = arrayList19;
                                    arrayList4 = arrayList37;
                                    arrayList37 = arrayList4;
                                    arrayList32 = arrayList32;
                                    arrayList19 = arrayList19;
                                    arrayList36 = arrayList36;
                                    arrayList25 = arrayList;
                                    arrayList26 = arrayList2;
                                    str9 = str9;
                                    arrayList35 = arrayList3;
                                    arrayList18 = arrayList18;
                                    str = str;
                                    str2 = str2;
                                    arrayList30 = arrayList30;
                                    arrayList29 = arrayList39;
                                }
                                break;
                            default:
                                break;
                        }
                    } else {
                        arrayList = arrayList25;
                        arrayList2 = arrayList26;
                    }
                    arrayList3 = arrayList35;
                    arrayList19 = arrayList19;
                    arrayList4 = arrayList37;
                    Splitter splitter15 = f01.a;
                    f01.a(new b2(key));
                    p005kotlin.Unit unit119 = p005kotlin.Unit.INSTANCE;
                    arrayList37 = arrayList4;
                    arrayList32 = arrayList32;
                    arrayList19 = arrayList19;
                    arrayList36 = arrayList36;
                    arrayList25 = arrayList;
                    arrayList26 = arrayList2;
                    str9 = str9;
                    arrayList35 = arrayList3;
                    arrayList18 = arrayList18;
                    str = str;
                    str2 = str2;
                    arrayList30 = arrayList30;
                    arrayList29 = arrayList39;
                }
                ArrayList arrayList45 = arrayList29;
                ArrayList arrayList46 = arrayList18;
                ArrayList arrayList47 = arrayList30;
                ArrayList arrayList48 = arrayList25;
                ArrayList arrayList49 = arrayList26;
                String str24 = str9;
                ArrayList arrayList50 = arrayList35;
                ArrayList arrayList51 = arrayList32;
                ArrayList arrayList52 = arrayList36;
                ArrayList arrayList53 = arrayList19;
                ArrayList arrayList54 = arrayList37;
                e2 e2Var3 = e2Var2;
                if (e2Var3 != e2.THIRD_PARTY_SDK_CALLBACK) {
                    bcVar = bcVar3;
                    if (bcVar == bc.NATIVE && asBoolean17) {
                    }
                    arrayList54.replaceAll(new UnaryOperator() { // from class: ads_mobile_sdk.c2$$ExternalSyntheticLambda0
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return c2.a(objectRef, (String) obj);
                        }
                    });
                    JsonObject jsonObject11 = (JsonObject) objectRef.element;
                    Intrinsics.checkNotNull(bundle2);
                    return new i2(str3, arrayList54, jsonObject11, str4, arrayList21, str19, arrayList38, str6, str7, str8, str24, bcVar, xcVarA, str5, asBoolean18, asBoolean19, bundle2, str10, asBoolean, arrayList52, asBoolean2, arrayList53, i, asString, arrayList31, str20, jsonObject9, asBoolean4, jsonObject8, arrayList48, arrayList49, asBoolean3, str11, e2Var3, arrayList20, vc1Var, str12, iA, asBoolean5, asBoolean6, asBoolean7, asBoolean8, asBoolean9, arrayList47, arrayList50, dg2Var2, asString2, arrayList51, j2, arrayList45, str13, jsonObject7, asJsonArray, arrayList46, asBoolean10, asBoolean11, j, str14, arrayList23, str15, str16, arrayList24, arrayList22, l63VarA, jsonObject6, str17, o93Var2, asBoolean12, h2Var, asBoolean13, asBoolean14, str18, qb2VarA, qm3VarA, uo2VarA, ga2Var, d, st2Var2, z, asBoolean15, j3, asString3, asString4, asString5, jsonObject5, asBoolean16, asInt, 0);
                }
                bcVar = bcVar3;
                h2Var = h2.THIRD_PARTY_SDK_CALLBACK;
                arrayList54.replaceAll(new UnaryOperator() { // from class: ads_mobile_sdk.c2$$ExternalSyntheticLambda0
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return c2.a(objectRef, (String) obj);
                    }
                });
                JsonObject jsonObject12 = (JsonObject) objectRef.element;
                Intrinsics.checkNotNull(bundle2);
                return new i2(str3, arrayList54, jsonObject12, str4, arrayList21, str19, arrayList38, str6, str7, str8, str24, bcVar, xcVarA, str5, asBoolean18, asBoolean19, bundle2, str10, asBoolean, arrayList52, asBoolean2, arrayList53, i, asString, arrayList31, str20, jsonObject9, asBoolean4, jsonObject8, arrayList48, arrayList49, asBoolean3, str11, e2Var3, arrayList20, vc1Var, str12, iA, asBoolean5, asBoolean6, asBoolean7, asBoolean8, asBoolean9, arrayList47, arrayList50, dg2Var2, asString2, arrayList51, j2, arrayList45, str13, jsonObject7, asJsonArray, arrayList46, asBoolean10, asBoolean11, j, str14, arrayList23, str15, str16, arrayList24, arrayList22, l63VarA, jsonObject6, str17, o93Var2, asBoolean12, h2Var, asBoolean13, asBoolean14, str18, qb2VarA, qm3VarA, uo2VarA, ga2Var, d, st2Var2, z, asBoolean15, j3, asString3, asString4, asString5, jsonObject5, asBoolean16, asInt, 0);
            } catch (Exception e) {
                e = e;
                List list2 = a2.a(e, "t", e).s;
                String message = e.getMessage();
                if (message == null) {
                    message = e.getClass().getName();
                }
                Intrinsics.checkNotNull(message);
                list2.add(message);
                return i2Var;
            }
        } catch (Exception e2) {
            e = e2;
            i2Var = null;
        }
    }

    public static String a(JsonObject adapterData, String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        Intrinsics.checkNotNullParameter(adapterData, "adapterData");
        if (!i2.J0.contains(className)) {
            return className;
        }
        ds1 ds1Var = ds1.a;
        return ds1.a(adapterData, "class_name", className);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String a(Ref.ObjectRef adapterData, String it) {
        Intrinsics.checkNotNullParameter(adapterData, "$adapterData");
        Intrinsics.checkNotNullParameter(it, "it");
        List list = i2.J0;
        return a((JsonObject) adapterData.element, it);
    }
}
