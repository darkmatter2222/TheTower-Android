package com.applovin.impl.sdk;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.impl.c5;
import com.applovin.impl.h2;
import com.applovin.impl.i6;
import com.applovin.impl.j2;
import com.applovin.impl.n5;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.applovin.impl.v7;
import com.applovin.impl.x6;
import com.applovin.sdk.AppLovinAdType;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private static final File b = new File(l.p().getFilesDir(), "al/persisted-ads");
    private final l a;

    public static class a implements v4 {
        private final String a;
        private final AppLovinAdType b;
        private final boolean c;
        private final long d;
        private final long e;

        public a(String str, AppLovinAdType appLovinAdType, boolean z, long j, long j2) {
            this.a = str;
            this.b = appLovinAdType;
            this.c = z;
            this.d = j;
            this.e = j2;
        }

        public static a a(com.applovin.impl.sdk.ad.b bVar) {
            return a(bVar, 0L, 0L);
        }

        public static a a(com.applovin.impl.sdk.ad.b bVar, long j, long j2) {
            if (bVar == null) {
                return null;
            }
            return new a(StringUtils.isValidString(bVar.getMediationServeId()) ? bVar.getMediationServeId() : UUID.randomUUID().toString(), bVar.getType(), bVar instanceof com.applovin.impl.sdk.ad.a, SystemClock.elapsedRealtime() + j, j2);
        }

        public static a a(JSONObject jSONObject, l lVar) {
            String string = JsonUtils.getString(jSONObject, "id", "");
            String string2 = JsonUtils.getString(jSONObject, "type", "");
            Boolean bool = JsonUtils.getBoolean(jSONObject, "is_ad_server_ad", null);
            long j = JsonUtils.getLong(jSONObject, "expiry_time_millis", 0L);
            long j2 = JsonUtils.getLong(jSONObject, "app_launch_timestamp", 0L);
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || bool == null) {
                return null;
            }
            return new a(string, AppLovinAdType.fromString(string2), bool.booleanValue(), j, j2);
        }

        @Override // com.applovin.impl.v4
        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putString(jSONObject, "id", this.a);
            JsonUtils.putString(jSONObject, "type", this.b.toString());
            JsonUtils.putBoolean(jSONObject, "is_ad_server_ad", this.c);
            JsonUtils.putLong(jSONObject, "expiry_time_millis", this.d);
            JsonUtils.putLong(jSONObject, "app_launch_timestamp", this.e);
            return jSONObject;
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public long b() {
            return this.e;
        }

        public long c() {
            return this.d;
        }

        public String d() {
            return this.a + "_" + this.b;
        }

        public String e() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this)) {
                return false;
            }
            String strE = e();
            String strE2 = aVar.e();
            if (strE != null ? !strE.equals(strE2) : strE2 != null) {
                return false;
            }
            AppLovinAdType appLovinAdTypeF = f();
            AppLovinAdType appLovinAdTypeF2 = aVar.f();
            return appLovinAdTypeF != null ? appLovinAdTypeF.equals(appLovinAdTypeF2) : appLovinAdTypeF2 == null;
        }

        public AppLovinAdType f() {
            return this.b;
        }

        public boolean g() {
            return this.c;
        }

        public int hashCode() {
            String strE = e();
            int iHashCode = strE == null ? 43 : strE.hashCode();
            AppLovinAdType appLovinAdTypeF = f();
            return ((iHashCode + 59) * 59) + (appLovinAdTypeF != null ? appLovinAdTypeF.hashCode() : 43);
        }

        public String toString() {
            return "AdPersistenceFileService.PersistedAdFilePath(id=" + e() + ", type=" + f() + ", isAdServerAd=" + g() + ", expiryTimeMillis=" + c() + ", appLaunchTimestamp=" + b() + ")";
        }
    }

    public interface b {
        void a(a aVar);
    }

    public interface c {
        void a(com.applovin.impl.sdk.ad.b bVar, String str);
    }

    public d(l lVar) {
        this.a = lVar;
    }

    private File a(a aVar) {
        if (aVar == null) {
            return null;
        }
        return new File(b.getAbsolutePath() + DomExceptionUtils.SEPARATOR + aVar.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        a aVarA = a.a(bVar, ((Long) this.a.a(c5.g1)).longValue(), l.o());
        File fileA = a(aVarA);
        if (fileA == null) {
            a("Could not persist incompatible ad", bVar, bVar2);
            return;
        }
        try {
            JSONObject jSONObjectA = bVar.a();
            if (jSONObjectA == null) {
                a("Could not serialize ad for persistence", bVar, bVar2);
                return;
            }
            if (this.a.I().a((InputStream) new ByteArrayInputStream(jSONObjectA.toString().getBytes("UTF-8")), fileA, true)) {
                a(aVarA, bVar, bVar2);
            } else {
                a("Failed to write persisted ad to disk", bVar, bVar2);
            }
        } catch (Throwable th) {
            a("Ad could not be persisted", bVar, bVar2);
            this.a.E().a("AdPersistenceFileService", th, CollectionUtils.map("error_message", "Ad could not be persisted"));
        }
    }

    private void a(a aVar, com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        if (bVar2 == null) {
            return;
        }
        this.a.Q();
        if (p.a()) {
            this.a.Q().a("AdPersistenceFileService", "Ad was persisted successfully");
        }
        bVar2.a(aVar);
        this.a.g().a(h2.Y, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(File file, c cVar, a aVar) throws Throwable {
        String strF = this.a.I().f(file);
        if (strF == null) {
            cVar.a(null, "Persisted ad could not be retrieved: Read failed");
            return;
        }
        try {
            JSONObject jSONObjectJsonObjectFromJsonString = JsonUtils.jsonObjectFromJsonString(strF, new JSONObject());
            JsonUtils.putBoolean(JsonUtils.getJSONObject(jSONObjectJsonObjectFromJsonString, "full_response", new JSONObject()), "is_persisted_ad", true);
            com.applovin.impl.sdk.ad.b bVarA = aVar.g() ? com.applovin.impl.sdk.ad.a.a(jSONObjectJsonObjectFromJsonString, this.a) : v7.a(jSONObjectJsonObjectFromJsonString, this.a);
            if (bVarA == null) {
                cVar.a(null, "Persisted ad could not be retrieved: Deserialization failed");
            } else {
                cVar.a(bVarA, null);
            }
        } catch (Throwable th) {
            cVar.a(null, "Persisted ad could not be retrieved: Deserialization failed");
            this.a.E().a("AdPersistenceFileService", th, CollectionUtils.map("error_message", "Persisted ad could not be retrieved: Deserialization failed"));
        }
    }

    private void a(String str, com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        if (bVar2 == null) {
            return;
        }
        this.a.Q();
        if (p.a()) {
            this.a.Q().a("AdPersistenceFileService", str);
        }
        bVar2.a(null);
        Map mapA = j2.a((AppLovinAdImpl) bVar);
        CollectionUtils.putStringIfValid("error_message", str, mapA);
        this.a.g().d(h2.Z, mapA);
    }

    private boolean b() {
        File file = b;
        if (file.exists()) {
            return true;
        }
        return file.mkdir();
    }

    public void a() {
        File[] fileArrListFiles;
        File file = b;
        if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
        }
    }

    public void a(final a aVar, final c cVar) {
        final File fileA = a(aVar);
        if (fileA == null || !fileA.exists()) {
            cVar.a(null, "Persisted ad could not be retrieved: Retrieval failed");
        } else {
            this.a.s0().a((n5) new x6(this.a, "retrievePersistedAd", new Runnable() { // from class: com.applovin.impl.sdk.d$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    this.f$0.a(fileA, cVar, aVar);
                }
            }), i6.b.OTHER);
        }
    }

    public void a(List list) {
        File[] fileArrListFiles = b.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        boolean z = false;
        for (File file : fileArrListFiles) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((a) it.next()).d().equals(file.getName())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                file.delete();
            }
        }
    }

    public void b(final com.applovin.impl.sdk.ad.b bVar, final b bVar2) {
        if (b()) {
            this.a.s0().a((n5) new x6(this.a, "persistAd", new Runnable() { // from class: com.applovin.impl.sdk.d$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.a(bVar, bVar2);
                }
            }), i6.b.CACHING);
        } else {
            a("Ad Persistence directory could not be created", bVar, bVar2);
        }
    }

    public void b(a aVar) {
        File fileA = a(aVar);
        if (fileA != null) {
            fileA.delete();
        }
    }
}
