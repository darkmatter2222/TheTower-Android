package kotlin;

import android.content.Context;
import android.media.AudioManager;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3510b4;
import com.ironsource.C3658j8;
import com.tapjoy.TJAdUnitConstants;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class i92 {
    public boolean a;
    public final boolean b;
    public final boolean c;
    public long d;
    public final String e;
    public ey3 f;

    public /* synthetic */ i92() {
        this(false, false, false, 0L, null, null);
    }

    public i92(boolean z, boolean z2, boolean z3, long j, String str, ey3 ey3Var) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = j;
        this.e = str;
        this.f = ey3Var;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x00b5  */
    public final JsonObject a(Context context, String afmaVersion, String adId, km appSettings) {
        float f;
        JsonObject jsonObject;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(appSettings, "appSettings");
        JsonArray jsonArray = new JsonArray();
        PowerManager powerManager = (PowerManager) context.getSystemService(PowerManager.class);
        ey3 ey3Var = this.f;
        if (ey3Var == null) {
            jsonObject = new JsonObject();
        } else {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("afmaVersion", afmaVersion);
            jsonObject2.add("activeViewJSON", new JsonObject());
            jsonObject2.addProperty("timestamp", Long.valueOf(this.d));
            jsonObject2.addProperty("isNative", Boolean.TRUE);
            jsonObject2.addProperty("adFormat", "native");
            jsonObject2.addProperty("isMraid", Boolean.FALSE);
            jsonObject2.addProperty("hashCode", adId);
            jsonObject2.addProperty("isStopped", Boolean.valueOf(this.c));
            jsonObject2.addProperty("isPaused", Boolean.valueOf(this.b));
            jsonObject2.addProperty("isScreenOn", Boolean.valueOf(powerManager.isInteractive()));
            jsonObject2.addProperty("appMuted", Boolean.valueOf(appSettings.d));
            jsonObject2.addProperty("appVolume", Float.valueOf(appSettings.c));
            Intrinsics.checkNotNullParameter(context, "context");
            AudioManager audioManager = (AudioManager) context.getSystemService(AudioManager.class);
            if (audioManager == null) {
                f = 0.0f;
            } else {
                int streamMaxVolume = audioManager.getStreamMaxVolume(3);
                int streamVolume = audioManager.getStreamVolume(3);
                if (streamMaxVolume == 0) {
                    f = 0.0f;
                } else {
                    f = streamVolume / streamMaxVolume;
                }
            }
            jsonObject2.addProperty(C3510b4.j.P, Float.valueOf(f));
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            jsonObject2.addProperty("windowVisibility", Integer.valueOf(ey3Var.c));
            jsonObject2.addProperty("isAttachedToWindow", Boolean.valueOf(ey3Var.e));
            JsonObject jsonObject3 = new JsonObject();
            jsonObject3.addProperty(TJAdUnitConstants.String.TOP, Integer.valueOf(ey3Var.f.top));
            jsonObject3.addProperty(TJAdUnitConstants.String.BOTTOM, Integer.valueOf(ey3Var.f.bottom));
            jsonObject3.addProperty(TJAdUnitConstants.String.LEFT, Integer.valueOf(ey3Var.f.left));
            jsonObject3.addProperty(TJAdUnitConstants.String.RIGHT, Integer.valueOf(ey3Var.f.right));
            p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            jsonObject2.add("viewBox", jsonObject3);
            JsonObject jsonObject4 = new JsonObject();
            jsonObject4.addProperty(TJAdUnitConstants.String.TOP, Integer.valueOf(ey3Var.d.top));
            jsonObject4.addProperty(TJAdUnitConstants.String.BOTTOM, Integer.valueOf(ey3Var.d.bottom));
            jsonObject4.addProperty(TJAdUnitConstants.String.LEFT, Integer.valueOf(ey3Var.d.left));
            jsonObject4.addProperty(TJAdUnitConstants.String.RIGHT, Integer.valueOf(ey3Var.d.right));
            jsonObject2.add("adBox", jsonObject4);
            JsonObject jsonObject5 = new JsonObject();
            jsonObject5.addProperty(TJAdUnitConstants.String.TOP, Integer.valueOf(ey3Var.g.top));
            jsonObject5.addProperty(TJAdUnitConstants.String.BOTTOM, Integer.valueOf(ey3Var.g.bottom));
            jsonObject5.addProperty(TJAdUnitConstants.String.LEFT, Integer.valueOf(ey3Var.g.left));
            jsonObject5.addProperty(TJAdUnitConstants.String.RIGHT, Integer.valueOf(ey3Var.g.right));
            jsonObject2.add("globalVisibleBox", jsonObject5);
            jsonObject2.addProperty("globalVisibleBoxVisible", Boolean.valueOf(ey3Var.h));
            JsonObject jsonObject6 = new JsonObject();
            jsonObject6.addProperty(TJAdUnitConstants.String.TOP, Integer.valueOf(ey3Var.i.top));
            jsonObject6.addProperty(TJAdUnitConstants.String.BOTTOM, Integer.valueOf(ey3Var.i.bottom));
            jsonObject6.addProperty(TJAdUnitConstants.String.LEFT, Integer.valueOf(ey3Var.i.left));
            jsonObject6.addProperty(TJAdUnitConstants.String.RIGHT, Integer.valueOf(ey3Var.i.right));
            jsonObject2.add("localVisibleBox", jsonObject6);
            jsonObject2.addProperty("localVisibleBoxVisible", Boolean.valueOf(ey3Var.j));
            JsonObject jsonObject7 = new JsonObject();
            jsonObject7.addProperty(TJAdUnitConstants.String.TOP, Integer.valueOf(ey3Var.k.top));
            jsonObject7.addProperty(TJAdUnitConstants.String.BOTTOM, Integer.valueOf(ey3Var.k.bottom));
            jsonObject7.addProperty(TJAdUnitConstants.String.LEFT, Integer.valueOf(ey3Var.k.left));
            jsonObject7.addProperty(TJAdUnitConstants.String.RIGHT, Integer.valueOf(ey3Var.k.right));
            jsonObject2.add("hitBox", jsonObject7);
            jsonObject2.addProperty("screenDensity", Float.valueOf(displayMetrics.density));
            jsonObject2.addProperty(C3658j8.k, Boolean.valueOf(this.a));
            String str = this.e;
            if (str != null && str.length() != 0) {
                jsonObject2.addProperty("doneReasonCode", "u");
            }
            jsonObject = jsonObject2;
        }
        jsonArray.add(jsonObject);
        JsonObject jsonObject8 = new JsonObject();
        jsonObject8.add("units", jsonArray);
        return jsonObject8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i92)) {
            return false;
        }
        i92 i92Var = (i92) obj;
        return this.a == i92Var.a && this.b == i92Var.b && this.c == i92Var.c && this.d == i92Var.d && Intrinsics.areEqual(this.e, i92Var.e) && Intrinsics.areEqual(this.f, i92Var.f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    public final int hashCode() {
        boolean z = this.a;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        int i = r0 * 31;
        boolean z2 = this.b;
        ?? r2 = z2;
        if (z2) {
            r2 = 1;
        }
        int i2 = (i + r2) * 31;
        boolean z3 = this.c;
        int iHashCode = (Long.hashCode(this.d) + ((i2 + (z3 ? 1 : z3)) * 31)) * 31;
        String str = this.e;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        ey3 ey3Var = this.f;
        return iHashCode2 + (ey3Var != null ? ey3Var.hashCode() : 0);
    }

    public final String toString() {
        return "NativeVideoViewabilityState(isVisible=" + this.a + ", isPaused=" + this.b + ", isStopped=" + this.c + ", timestamp=" + this.d + ", doneReason=" + this.e + ", viewabilityEvent=" + this.f + ")";
    }
}
