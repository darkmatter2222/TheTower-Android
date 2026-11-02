package com.ironsource.mediationsdk;

import com.ironsource.C3533c9;
import com.ironsource.C3643ia;
import com.ironsource.C3927y2;
import com.ironsource.Db;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.impressionData.ImpressionDataListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class k {
    private HashSet<ImpressionDataListener> a;
    protected com.ironsource.r b;
    protected C3643ia c;
    protected AdInfo d;

    public k(HashSet<ImpressionDataListener> hashSet, C3643ia c3643ia) {
        new HashSet();
        this.a = hashSet;
        this.b = new com.ironsource.r();
        this.c = c3643ia;
    }

    protected String a() {
        return "fallback_" + System.currentTimeMillis();
    }

    public void a(C3533c9 c3533c9, Db db) {
        if (c3533c9 != null) {
            this.d = new AdInfo(c3533c9, db);
        }
    }

    public void a(C3643ia c3643ia) {
        this.c = c3643ia;
    }

    protected void a(IronSource.a aVar) {
        this.b.a(aVar, false);
    }

    public void a(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.add(impressionDataListener);
        }
    }

    protected void a(C3927y2 c3927y2, String str) {
        HashSet<ImpressionDataListener> hashSet;
        if (c3927y2 == null) {
            IronLog.INTERNAL.verbose("no auctionResponseItem or listener");
            return;
        }
        C3533c9 c3533c9A = c3927y2.a(str);
        if (c3533c9A != null) {
            synchronized (this) {
                hashSet = (HashSet) this.a.clone();
            }
            for (ImpressionDataListener impressionDataListener : hashSet) {
                IronLog.CALLBACK.info("onImpressionSuccess " + impressionDataListener.getClass().getSimpleName() + ": " + c3533c9A);
                impressionDataListener.onImpressionSuccess(c3533c9A);
            }
        }
    }

    protected void a(JSONObject jSONObject, IronSource.a aVar) {
        this.b.a(aVar, jSONObject != null ? jSONObject.optBoolean(d.f, false) : false);
    }

    public void b() {
        synchronized (this) {
            this.a.clear();
        }
    }

    public void b(ImpressionDataListener impressionDataListener) {
        synchronized (this) {
            this.a.remove(impressionDataListener);
        }
    }

    public void c() {
        this.d = null;
    }
}
