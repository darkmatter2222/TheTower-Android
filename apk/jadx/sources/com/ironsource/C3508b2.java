package com.ironsource;

import android.text.TextUtils;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.b2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3508b2 {
    private final E0 a;

    public C3508b2(E0 e0) {
        this.a = e0;
    }

    String a(int i, int i2, int i3, int i4) {
        StringBuilder sb = new StringBuilder("interstitial=");
        sb.append(i).append(";rewarded=").append(i2).append(";banner=").append(i3).append(";native=").append(i4);
        return sb.toString();
    }

    public void a(int i, String str) {
        HashMap map = new HashMap();
        map.put("errorCode", Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(B0.AUCTION_FAILED_NO_CANDIDATES, map);
    }

    public void a(long j, int i, String str) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put("errorCode", Integer.valueOf(i));
        if (!TextUtils.isEmpty(str)) {
            map.put("reason", str);
        }
        this.a.a(B0.AUCTION_FAILED, map);
    }

    public void a(long j, String str) {
        HashMap map = new HashMap();
        map.put("duration", Long.valueOf(j));
        map.put(IronSourceConstants.EVENTS_EXT1, str);
        this.a.a(B0.AUCTION_SUCCESS, map);
    }

    public void a(Double d) {
        HashMap map;
        if (d != null) {
            map = new HashMap();
            map.put(IronSourceConstants.EVENTS_EXT1, "flooring=" + d);
        } else {
            map = null;
        }
        this.a.a(B0.AUCTION_REQUEST, map);
    }

    public void a(String str) {
        HashMap map = new HashMap();
        map.put("auctionId", str);
        this.a.a(B0.AD_FORMAT_CAPPED, map);
    }

    public void b(String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, str);
        this.a.a(B0.AUCTION_REQUEST_WATERFALL, map);
    }

    public void c(String str) {
        HashMap map = new HashMap();
        map.put(IronSourceConstants.EVENTS_EXT1, str);
        this.a.a(B0.AUCTION_RESULT_WATERFALL, map);
    }
}
