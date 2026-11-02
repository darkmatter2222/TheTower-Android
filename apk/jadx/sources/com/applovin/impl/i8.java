package com.applovin.impl;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i8 implements v4 {
    private List a;
    private List b;
    private int c;
    private Uri d;
    private final Set e;
    private b8 f;
    private final Map g;

    private i8() {
        List list = Collections.EMPTY_LIST;
        this.a = list;
        this.b = list;
        this.e = new HashSet();
        this.g = new HashMap();
    }

    private i8(z7 z7Var) {
        List list = Collections.EMPTY_LIST;
        this.a = list;
        this.b = list;
        this.e = new HashSet();
        this.g = new HashMap();
        this.b = z7Var.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(j8 j8Var, j8 j8Var2) {
        return Long.compare(j8Var.b(), j8Var2.b());
    }

    private static int a(String str, com.applovin.impl.sdk.l lVar) {
        try {
            List<String> listExplode = CollectionUtils.explode(str, ":");
            if (listExplode.size() == 3) {
                return (int) (TimeUnit.HOURS.toSeconds(StringUtils.parseInt(listExplode.get(0))) + TimeUnit.MINUTES.toSeconds(StringUtils.parseInt(listExplode.get(1))) + ((long) StringUtils.parseInt(listExplode.get(2))));
            }
        } catch (Throwable unused) {
            lVar.Q();
            if (com.applovin.impl.sdk.p.a()) {
                lVar.Q().b("VastVideoCreative", "Unable to parse duration from \"" + str + "\"");
            }
        }
        return 0;
    }

    public static i8 a(u8 u8Var, i8 i8Var, z7 z7Var, com.applovin.impl.sdk.l lVar) {
        u8 u8VarC;
        b8 b8VarA;
        List listA;
        u8 u8VarC2;
        List listA2;
        u8 u8VarC3;
        int iA;
        if (u8Var == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (z7Var == null) {
            throw new IllegalArgumentException("No context specified.");
        }
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        if (i8Var == null) {
            try {
                i8Var = new i8(z7Var);
            } catch (Throwable th) {
                lVar.Q();
                if (com.applovin.impl.sdk.p.a()) {
                    lVar.Q().a("VastVideoCreative", "Error occurred while initializing", th);
                }
                lVar.E().a("VastVideoCreative", th);
                return null;
            }
        }
        if (i8Var.c == 0 && (u8VarC3 = u8Var.c("Duration")) != null && (iA = a(u8VarC3.d(), lVar)) > 0) {
            i8Var.c = iA;
        }
        u8 u8VarC4 = u8Var.c("MediaFiles");
        if (u8VarC4 != null && (listA2 = a(u8VarC4, lVar)) != null && listA2.size() > 0) {
            List list = i8Var.a;
            if (list != null) {
                listA2.addAll(list);
            }
            i8Var.a = listA2;
        }
        u8 u8VarC5 = u8Var.c("VideoClicks");
        if (u8VarC5 != null) {
            if (i8Var.d == null && (u8VarC2 = u8VarC5.c("ClickThrough")) != null) {
                String strD = u8VarC2.d();
                if (StringUtils.isValidString(strD)) {
                    i8Var.d = Uri.parse(strD);
                }
            }
            h8.a(u8VarC5.a("ClickTracking"), i8Var.e, z7Var, lVar);
        }
        u8 u8VarC6 = u8Var.c("Icons");
        if (u8VarC6 != null && (b8VarA = b8.a((u8VarC = u8VarC6.c("Icon")), lVar)) != null) {
            u8 u8VarC7 = u8VarC.c("IconClicks");
            if (u8VarC7 != null && (listA = u8VarC7.a("IconClickTracking")) != null) {
                h8.a(listA, b8VarA.a, z7Var, lVar);
            }
            List listA3 = u8VarC.a("IconViewTracking");
            if (listA3 != null) {
                h8.a(listA3, b8VarA.b, z7Var, lVar);
            }
            i8Var.f = b8VarA;
        }
        h8.a(u8Var, i8Var.g, z7Var, lVar);
        return i8Var;
    }

    public static i8 a(JSONObject jSONObject, com.applovin.impl.sdk.l lVar) {
        if (jSONObject == null) {
            return null;
        }
        i8 i8Var = new i8();
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "video_files", new JSONArray());
        i8Var.a = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            j8 j8VarA = j8.a(JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null), lVar);
            if (j8VarA != null) {
                i8Var.a.add(j8VarA);
            }
        }
        i8Var.b = JsonUtils.getStringList(jSONObject, "preferred_video_file_types", Collections.EMPTY_LIST);
        i8Var.c = JsonUtils.getInt(jSONObject, "duration_seconds", 0);
        String string = JsonUtils.getString(jSONObject, "destination_uri", null);
        i8Var.d = StringUtils.isValidString(string) ? Uri.parse(string) : null;
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            f8 f8VarA = f8.a(JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null), lVar);
            if (f8VarA != null) {
                i8Var.e.add(f8VarA);
            }
        }
        i8Var.f = b8.a(JsonUtils.getJSONObject(jSONObject, "industry_icon", (JSONObject) null), lVar);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "event_trackers", new JSONObject());
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            HashSet hashSet = new HashSet();
            String next = itKeys.next();
            JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject2, next, new JSONArray());
            for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                f8 f8VarA2 = f8.a(JsonUtils.getJSONObject(jSONArray3, i3, (JSONObject) null), lVar);
                if (f8VarA2 != null) {
                    hashSet.add(f8VarA2);
                }
            }
            i8Var.g.put(next, hashSet);
        }
        return i8Var;
    }

    private static List a(u8 u8Var, com.applovin.impl.sdk.l lVar) {
        List listA = u8Var.a("MediaFile");
        ArrayList arrayList = new ArrayList(listA.size());
        List<String> listExplode = CollectionUtils.explode((String) lVar.a(c5.f5));
        List<String> listExplode2 = CollectionUtils.explode((String) lVar.a(c5.e5));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            j8 j8VarA = j8.a((u8) it.next(), lVar);
            if (j8VarA != null) {
                try {
                    String strC = j8VarA.c();
                    if (!StringUtils.isValidString(strC) || listExplode.contains(strC)) {
                        if (((Boolean) lVar.a(c5.g5)).booleanValue()) {
                            String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(j8VarA.e().toString());
                            if (StringUtils.isValidString(fileExtensionFromUrl) && !listExplode2.contains(fileExtensionFromUrl)) {
                                arrayList.add(j8VarA);
                            }
                        }
                        lVar.Q();
                        if (com.applovin.impl.sdk.p.a()) {
                            lVar.Q().k("VastVideoCreative", "Video file not supported: " + j8VarA);
                        }
                    } else {
                        arrayList.add(j8VarA);
                    }
                } catch (Throwable th) {
                    lVar.Q();
                    if (com.applovin.impl.sdk.p.a()) {
                        lVar.Q().a("VastVideoCreative", "Failed to validate video file: " + j8VarA, th);
                    }
                }
            }
        }
        return arrayList;
    }

    public j8 a(long j) {
        List list = this.a;
        j8 j8Var = null;
        if (list == null || list.size() == 0) {
            return null;
        }
        List<j8> arrayList = new ArrayList(3);
        for (String str : this.b) {
            for (j8 j8Var2 : this.a) {
                String strC = j8Var2.c();
                if (StringUtils.isValidString(strC) && str.equalsIgnoreCase(strC)) {
                    arrayList.add(j8Var2);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList = this.a;
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.applovin.impl.i8$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return i8.a((j8) obj, (j8) obj2);
            }
        });
        for (j8 j8Var3 : arrayList) {
            if (j8Var3.b() > j) {
                break;
            }
            j8Var = j8Var3;
        }
        return j8Var != null ? j8Var : (j8) arrayList.get(0);
    }

    @Override // com.applovin.impl.v4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        List list = this.a;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                jSONArray.put(((j8) it.next()).a());
            }
        }
        JsonUtils.putJsonArray(jSONObject, "video_files", jSONArray);
        JsonUtils.putJsonArray(jSONObject, "preferred_video_file_types", new JSONArray((Collection) this.b));
        JsonUtils.putInt(jSONObject, "duration_seconds", this.c);
        Uri uri = this.d;
        JsonUtils.putString(jSONObject, "destination_uri", uri == null ? null : uri.toString());
        JSONArray jSONArray2 = new JSONArray();
        Iterator it2 = this.e.iterator();
        while (it2.hasNext()) {
            jSONArray2.put(((f8) it2.next()).a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray2);
        b8 b8Var = this.f;
        if (b8Var != null) {
            JsonUtils.putJSONObject(jSONObject, "industry_icon", b8Var.a());
        }
        JSONObject jSONObject2 = new JSONObject();
        for (String str : this.g.keySet()) {
            Set set = (Set) this.g.get(str);
            if (set != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator it3 = set.iterator();
                while (it3.hasNext()) {
                    jSONArray3.put(((f8) it3.next()).a());
                }
                JsonUtils.putJsonArray(jSONObject2, str, jSONArray3);
            }
        }
        JsonUtils.putJSONObject(jSONObject, "event_trackers", jSONObject2);
        return jSONObject;
    }

    public Set b() {
        return this.e;
    }

    public Uri c() {
        return this.d;
    }

    public int d() {
        return this.c;
    }

    public Map e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i8)) {
            return false;
        }
        i8 i8Var = (i8) obj;
        if (this.c != i8Var.c) {
            return false;
        }
        List list = this.a;
        if (list == null ? i8Var.a != null : !list.equals(i8Var.a)) {
            return false;
        }
        Uri uri = this.d;
        if (uri == null ? i8Var.d != null : !uri.equals(i8Var.d)) {
            return false;
        }
        Set set = this.e;
        if (set == null ? i8Var.e != null : !set.equals(i8Var.e)) {
            return false;
        }
        Map map = this.g;
        Map map2 = i8Var.g;
        if (map != null) {
            return map.equals(map2);
        }
        return map2 == null;
    }

    public b8 f() {
        return this.f;
    }

    public List g() {
        return this.a;
    }

    public int hashCode() {
        List list = this.a;
        int iHashCode = (((list != null ? list.hashCode() : 0) * 31) + this.c) * 31;
        Uri uri = this.d;
        int iHashCode2 = (iHashCode + (uri != null ? uri.hashCode() : 0)) * 31;
        Set set = this.e;
        int iHashCode3 = (iHashCode2 + (set != null ? set.hashCode() : 0)) * 31;
        Map map = this.g;
        return iHashCode3 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        return "VastVideoCreative{videoFiles=" + this.a + ", durationSeconds=" + this.c + ", destinationUri=" + this.d + ", clickTrackers=" + this.e + ", eventTrackers=" + this.g + ", industryIcon=" + this.f + AbstractJsonLexerKt.END_OBJ;
    }
}
