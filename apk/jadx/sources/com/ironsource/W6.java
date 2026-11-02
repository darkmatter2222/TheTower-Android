package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import java.util.ArrayList;
import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class W6 {
    private final C3516ba a;

    public W6(C3516ba globalDataWriter) {
        Intrinsics.checkNotNullParameter(globalDataWriter, "globalDataWriter");
        this.a = globalDataWriter;
    }

    public final void a(JSONObject metaDataJson) {
        Intrinsics.checkNotNullParameter(metaDataJson, "metaDataJson");
        if (metaDataJson.has(com.ironsource.mediationsdk.metadata.a.j)) {
            try {
                Object objRemove = metaDataJson.remove(com.ironsource.mediationsdk.metadata.a.j);
                Intrinsics.checkNotNull(objRemove, "null cannot be cast to non-null type java.util.ArrayList<*>");
                ArrayList arrayList = (ArrayList) objRemove;
                if (arrayList.isEmpty()) {
                    return;
                }
                Object obj = arrayList.get(0);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                this.a.e((String) obj);
            } catch (ClassCastException e) {
                C3801r4.d().a(e);
                IronLog.INTERNAL.error("got the following error " + e.getMessage());
            }
        }
    }
}
