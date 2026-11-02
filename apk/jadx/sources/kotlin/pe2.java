package kotlin;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.util.Log;
import android.view.WindowManager;
import com.ironsource.C3510b4;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class pe2 {
    public static final ExecutorService a = Executors.newSingleThreadExecutor();
    public static WindowManager b = null;
    public static volatile Point c = null;
    public static oe2 d = null;
    public static final String[] e = {"x", "y", "width", "height"};
    public static float f = Resources.getSystem().getDisplayMetrics().density;

    public static Point a() {
        if (b == null) {
            return null;
        }
        Point point = new Point(0, 0);
        b.getDefaultDisplay().getRealSize(point);
        return point;
    }

    public static HashMap a(JSONObject jSONObject) {
        try {
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    map.put(next, (String) obj);
                }
            }
            return map;
        } catch (Exception e2) {
            throw new RuntimeException("Failed to parse JSON to Map", e2);
        }
    }

    public static JSONObject a(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", i / f);
            jSONObject.put("y", i2 / f);
            jSONObject.put("width", i3 / f);
            jSONObject.put("height", i4 / f);
            return jSONObject;
        } catch (JSONException e2) {
            bf2.a("Error with creating viewStateObject", e2);
            return jSONObject;
        }
    }

    public static void a(Context context) {
        f = context.getResources().getDisplayMetrics().density;
        b = (WindowManager) context.getSystemService("window");
        c = null;
        a.submit(new ne2());
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            oe2 oe2Var = d;
            if (oe2Var != null) {
                displayManager.unregisterDisplayListener(oe2Var);
                d = null;
            }
            oe2 oe2Var2 = new oe2();
            d = oe2Var2;
            displayManager.registerDisplayListener(oe2Var2, null);
        }
    }

    public static void a(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e2) {
            Log.e("OMIDLIB", "JSONException during JSONObject.put for name [" + str + C3510b4.j.e, e2);
        }
    }

    public static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
                jSONObject.put("childViews", jSONArrayOptJSONArray);
            }
            jSONArrayOptJSONArray.put(jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    public static void b(JSONObject jSONObject) {
        float f2;
        float f3;
        if (b == null) {
            f2 = 0.0f;
            f3 = 0.0f;
        } else {
            Point pointA = c;
            if (pointA == null) {
                pointA = a();
                c = pointA;
            }
            if (pointA != null) {
                float f4 = pointA.x;
                float f5 = f;
                f2 = f4 / f5;
                f3 = pointA.y / f5;
            } else {
                f2 = 0.0f;
                f3 = 0.0f;
            }
        }
        try {
            jSONObject.put("width", f2);
            jSONObject.put("height", f3);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean b(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
            return true;
        }
        if (!(jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) && (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray2 == null || jSONArrayOptJSONArray.length() != jSONArrayOptJSONArray2.length())) {
            return false;
        }
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            if (!c(jSONArrayOptJSONArray.optJSONObject(i), jSONArrayOptJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00aa A[RETURN] */
    public static boolean c(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject != null && jSONObject2 != null) {
            for (String str : e) {
                if (jSONObject.optDouble(str) == jSONObject2.optDouble(str)) {
                }
            }
            if (jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", "")) && Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice"))) && Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")))) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
                JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
                if (jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) {
                    if (b(jSONObject, jSONObject2)) {
                        return true;
                    }
                } else if ((jSONArrayOptJSONArray == null && jSONArrayOptJSONArray2 == null) || (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray.length() == jSONArrayOptJSONArray2.length())) {
                    for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                        if (jSONArrayOptJSONArray.optString(i, "").equals(jSONArrayOptJSONArray2.optString(i, ""))) {
                        }
                    }
                    if (b(jSONObject, jSONObject2)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
