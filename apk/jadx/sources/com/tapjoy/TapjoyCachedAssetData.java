package com.tapjoy;

import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TapjoyCachedAssetData implements Serializable {
    private long a;
    private long b;
    private String c;
    private String d;
    private String e;
    private long f;
    private String g;
    private String h;

    public TapjoyCachedAssetData(String str, String str2, long j) {
        this(str, str2, j, System.currentTimeMillis() / 1000);
    }

    public TapjoyCachedAssetData(String str, String str2, long j, long j2) {
        setAssetURL(str);
        setLocalFilePath(str2);
        this.b = j;
        this.a = j2;
        this.f = j2 + j;
    }

    public static TapjoyCachedAssetData fromJSONObject(JSONObject jSONObject) {
        TapjoyCachedAssetData tapjoyCachedAssetData;
        try {
            tapjoyCachedAssetData = new TapjoyCachedAssetData(jSONObject.getString("assetURL"), jSONObject.getString("localFilePath"), jSONObject.getLong(TapjoyConstants.TJC_TIME_TO_LIVE), jSONObject.getLong("timestamp"));
            try {
                tapjoyCachedAssetData.setOfferID(jSONObject.optString("offerID"));
                return tapjoyCachedAssetData;
            } catch (JSONException unused) {
                TapjoyLog.i("TapjoyCachedAssetData", "Can not build TapjoyVideoObject -- not enough data.");
                return tapjoyCachedAssetData;
            }
        } catch (JSONException unused2) {
            tapjoyCachedAssetData = null;
        }
    }

    public static TapjoyCachedAssetData fromRawJSONString(String str) {
        try {
            return fromJSONObject(new JSONObject(str));
        } catch (JSONException unused) {
            TapjoyLog.i("TapjoyCachedAssetData", "Can not build TapjoyVideoObject -- error reading json string");
            return null;
        }
    }

    public String getAssetURL() {
        return this.c;
    }

    public String getLocalFilePath() {
        return this.d;
    }

    public String getLocalURL() {
        return this.e;
    }

    public String getMimeType() {
        return this.g;
    }

    public String getOfferId() {
        return this.h;
    }

    public long getTimeOfDeathInSeconds() {
        return this.f;
    }

    public long getTimeToLiveInSeconds() {
        return this.b;
    }

    public long getTimestampInSeconds() {
        return this.a;
    }

    public void resetTimeToLive(long j) {
        this.b = j;
        this.f = (System.currentTimeMillis() / 1000) + j;
    }

    public void setAssetURL(String str) {
        this.c = str;
        this.g = TapjoyUtil.determineMimeType(str);
    }

    public void setLocalFilePath(String str) {
        this.d = str;
        this.e = "file://".concat(String.valueOf(str));
    }

    public void setOfferID(String str) {
        this.h = str;
    }

    public JSONObject toJSON() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("timestamp", getTimestampInSeconds());
            jSONObject.put(TapjoyConstants.TJC_TIME_TO_LIVE, getTimeToLiveInSeconds());
            jSONObject.put("assetURL", getAssetURL());
            jSONObject.put("localFilePath", getLocalFilePath());
            jSONObject.put("offerID", getOfferId());
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public String toRawJSONString() {
        return toJSON().toString();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("\nURL=");
        sb.append(this.e).append("\nAssetURL=");
        sb.append(this.c).append("\nMimeType=");
        sb.append(this.g).append("\nTimestamp=");
        sb.append(getTimestampInSeconds()).append("\nTimeOfDeath=");
        sb.append(this.f).append("\nTimeToLive=");
        sb.append(this.b).append("\n");
        return sb.toString();
    }
}
