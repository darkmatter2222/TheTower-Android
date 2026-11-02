package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.sdk.controller.FeaturesManager;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONObject;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.TuplesKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ef, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3576ef implements R8, R8.a {
    private Map<String, C3906x> a = new LinkedHashMap();
    private final C3865uc b = new C3865uc();
    private final ReadWriteLock c = new ReentrantReadWriteLock();

    /* JADX INFO: renamed from: com.ironsource.ef$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC3558df.values().length];
            try {
                iArr[EnumC3558df.CurrentlyLoadedAdsAndFullHistory.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnumC3558df.CurrentlyLoadedAds.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnumC3558df.Off.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    private final void b() {
        C3539cf sessionHistoryConfig = FeaturesManager.getInstance().getSessionHistoryConfig();
        C3865uc c3865uc = this.b;
        Intrinsics.checkNotNull(sessionHistoryConfig);
        c3865uc.a(a(sessionHistoryConfig));
        this.b.a(a());
    }

    @Override // com.ironsource.R8
    public int a(IronSource.a adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.c.readLock().lock();
        try {
            C3906x c3906x = this.a.get(adFormat.toString());
            return c3906x != null ? c3906x.a() : 0;
        } finally {
            this.c.readLock().unlock();
        }
    }

    @Override // com.ironsource.R8
    public List<String> a() {
        this.c.readLock().lock();
        try {
            Map<String, C3906x> map = this.a;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, C3906x> entry : map.entrySet()) {
                if (entry.getValue().b()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            return CollectionsKt.toList(linkedHashMap.keySet());
        } finally {
            this.c.readLock().unlock();
        }
    }

    @Override // com.ironsource.R8
    public Map<String, JSONObject> a(C3539cf configuration) {
        Map<String, JSONObject> mapMutableMapOf;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.c.readLock().lock();
        try {
            int i = a.a[configuration.a().ordinal()];
            if (i == 1) {
                mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(R6.z1, a(EnumC3755of.FullHistory)), TuplesKt.to(R6.A1, a(EnumC3755of.CurrentlyLoadedAds)));
            } else if (i == 2) {
                mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(R6.A1, a(EnumC3755of.CurrentlyLoadedAds)));
            } else {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                mapMutableMapOf = MapsKt.emptyMap();
            }
            this.c.readLock().unlock();
            return mapMutableMapOf;
        } catch (Throwable th) {
            this.c.readLock().unlock();
            throw th;
        }
    }

    @Override // com.ironsource.R8
    public JSONObject a(EnumC3755of mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        this.c.readLock().lock();
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, C3906x> entry : this.a.entrySet()) {
                String key = entry.getKey();
                JSONObject jSONObjectA = entry.getValue().a(mode);
                if (jSONObjectA.length() > 0) {
                    jSONObject.put(key, jSONObjectA);
                }
            }
            this.c.readLock().unlock();
            return jSONObject;
        } catch (Throwable th) {
            this.c.readLock().unlock();
            throw th;
        }
    }

    @Override // com.ironsource.R8.a
    public void a(AbstractC3594ff historyRecord) {
        Intrinsics.checkNotNullParameter(historyRecord, "historyRecord");
        this.c.writeLock().lock();
        try {
            O oA = historyRecord.a();
            String strValueOf = String.valueOf(oA != null ? oA.b() : null);
            Map<String, C3906x> map = this.a;
            C3906x c3906x = map.get(strValueOf);
            if (c3906x == null) {
                c3906x = new C3906x();
                map.put(strValueOf, c3906x);
            }
            c3906x.a(historyRecord.a(new C3701lf()));
            this.c.writeLock().unlock();
            b();
        } catch (Throwable th) {
            this.c.writeLock().unlock();
            throw th;
        }
    }
}
