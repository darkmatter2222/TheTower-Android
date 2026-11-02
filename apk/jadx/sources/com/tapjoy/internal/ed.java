package com.tapjoy.internal;

import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class ed extends dz {
    public ed(ea.b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.tapjoy.internal.ea, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public final void onPostExecute(String str) {
        dd ddVarA = dd.a();
        if (ddVarA != null) {
            for (cx cxVar : Collections.unmodifiableCollection(ddVarA.a)) {
                if (this.a.contains(cxVar.f)) {
                    du duVar = cxVar.c;
                    if (this.c >= duVar.d && duVar.c != du.a.c) {
                        duVar.c = du.a.c;
                        dh.a().b(duVar.c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        return this.b.toString();
    }
}
