package com.ironsource;

import com.unity3d.mediation.LevelPlay;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import p005kotlin.Result;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3871v0 implements K3 {
    private final C3936yb a;
    private final Map<LevelPlay.AdFormat, C3832t> b;

    public C3871v0(C3936yb tools, Map<LevelPlay.AdFormat, C3832t> adFormatsConfigurations) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adFormatsConfigurations, "adFormatsConfigurations");
        this.a = tools;
        this.b = adFormatsConfigurations;
    }

    private final void a(InterfaceC3842t7.a aVar, String str, C3832t.b bVar) throws JSONException {
        H3 h3B = bVar.b();
        if (h3B != null) {
            N3 n3 = N3.ShowCount;
            a(aVar.a(str, n3, new E3(h3B.a(), h3B.b(), h3B.c())), str, n3);
        }
    }

    private final void a(Object obj, String str, N3 n3) throws JSONException {
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(obj);
        if (thM3025exceptionOrNullimpl != null) {
            this.a.a(str, new I3().a(n3), thM3025exceptionOrNullimpl.getMessage());
        }
    }

    private final void b(InterfaceC3842t7.a aVar, String str, C3832t.b bVar) throws JSONException {
        C3628hd c3628hdE = bVar.e();
        if (c3628hdE != null) {
            N3 n3 = N3.Pacing;
            a(aVar.a(str, n3, new E3(c3628hdE.a(), c3628hdE.b(), c3628hdE.c())), str, n3);
        }
    }

    @Override // com.ironsource.K3
    public void a(InterfaceC3842t7.a cappingService) {
        Intrinsics.checkNotNullParameter(cappingService, "cappingService");
        Iterator<Map.Entry<LevelPlay.AdFormat, C3832t>> it = this.b.entrySet().iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, C3832t.b> entry : it.next().getValue().a().entrySet()) {
                String key = entry.getKey();
                C3832t.b value = entry.getValue();
                a(cappingService, key, value);
                b(cappingService, key, value);
            }
        }
    }
}
