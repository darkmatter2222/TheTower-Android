package com.ironsource;

import com.unity3d.mediation.LevelPlay;
import java.util.Map;
import org.json.JSONException;
import p005kotlin.Result;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.pd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3775pd {
    private final C3936yb a;
    private final Map<LevelPlay.AdFormat, C3832t> b;

    public C3775pd(C3936yb tools, Map<LevelPlay.AdFormat, C3832t> adFormatsConfigurations) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        Intrinsics.checkNotNullParameter(adFormatsConfigurations, "adFormatsConfigurations");
        this.a = tools;
        this.b = adFormatsConfigurations;
    }

    private final void a(O7.a aVar, String str, LevelPlay.AdFormat adFormat, C3832t.b bVar) throws JSONException {
        H3 h3B = bVar.b();
        if (h3B != null) {
            N3 n3 = N3.ShowCount;
            a(aVar.a(str, adFormat, n3, new E3(h3B.a(), h3B.b(), h3B.c())), str, adFormat, n3);
        }
    }

    private final void a(Object obj, String str, LevelPlay.AdFormat adFormat, N3 n3) throws JSONException {
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(obj);
        if (thM3025exceptionOrNullimpl != null) {
            this.a.a(str, adFormat, new I3().a(n3), thM3025exceptionOrNullimpl.getMessage());
        }
    }

    private final void b(O7.a aVar, String str, LevelPlay.AdFormat adFormat, C3832t.b bVar) throws JSONException {
        N3 n3 = N3.Delivery;
        Q4 q4C = bVar.c();
        a(aVar.a(str, adFormat, n3, new E3(q4C != null ? Boolean.valueOf(q4C.a()) : null, null, null, 6, null)), str, adFormat, n3);
    }

    private final void c(O7.a aVar, String str, LevelPlay.AdFormat adFormat, C3832t.b bVar) throws JSONException {
        C3628hd c3628hdE = bVar.e();
        if (c3628hdE != null) {
            N3 n3 = N3.Pacing;
            a(aVar.a(str, adFormat, n3, new E3(c3628hdE.a(), c3628hdE.b(), M3.Second)), str, adFormat, n3);
        }
    }

    public final void a(O7.a cappingService) {
        Intrinsics.checkNotNullParameter(cappingService, "cappingService");
        for (Map.Entry<LevelPlay.AdFormat, C3832t> entry : this.b.entrySet()) {
            LevelPlay.AdFormat key = entry.getKey();
            for (Map.Entry<String, C3832t.b> entry2 : entry.getValue().c().entrySet()) {
                String key2 = entry2.getKey();
                C3832t.b value = entry2.getValue();
                b(cappingService, key2, key, value);
                a(cappingService, key2, key, value);
                c(cappingService, key2, key, value);
            }
        }
    }
}
