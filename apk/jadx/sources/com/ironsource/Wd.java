package com.ironsource;

import java.util.Map;
import org.json.JSONException;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Wd {
    private final C3936yb a;
    private final Map<String, C3832t.b> b;
    private final Map<String, C3832t.b> c;

    public Wd(C3936yb tools, Map<String, C3832t.b> map, Map<String, C3832t.b> map2) {
        Intrinsics.checkNotNullParameter(tools, "tools");
        this.a = tools;
        this.b = map;
        this.c = map2;
    }

    private final Object a(String str, Integer num) {
        if (str == null || num == null) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(new Exception("name - " + str + " or amount - " + num + " is not provided or invalid")));
        }
        Result.Companion companion2 = Result.INSTANCE;
        return Result.m3022constructorimpl(Unit.INSTANCE);
    }

    private final void a(S7.a aVar, String str, String str2, Integer num) throws JSONException {
        Object objA = a(str2, num);
        if (Result.m3029isSuccessimpl(objA)) {
            Intrinsics.checkNotNull(str2);
            Intrinsics.checkNotNull(num);
            aVar.b(str, str2, num.intValue());
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objA);
        if (thM3025exceptionOrNullimpl != null) {
            this.a.b(str, 3004, thM3025exceptionOrNullimpl.getMessage());
        }
    }

    private final void b(S7.a aVar, String str, String str2, Integer num) throws JSONException {
        Object objA = a(str2, num);
        if (Result.m3029isSuccessimpl(objA)) {
            Intrinsics.checkNotNull(str2);
            Intrinsics.checkNotNull(num);
            aVar.a(str, str2, num.intValue());
        }
        Throwable thM3025exceptionOrNullimpl = Result.m3025exceptionOrNullimpl(objA);
        if (thM3025exceptionOrNullimpl != null) {
            this.a.b(str, 3004, thM3025exceptionOrNullimpl.getMessage());
        }
    }

    public final void a(S7.a rewardService) {
        Intrinsics.checkNotNullParameter(rewardService, "rewardService");
        Map<String, C3832t.b> map = this.c;
        if (map != null && (r0 = map.entrySet().iterator()) != null) {
            for (Map.Entry<String, C3832t.b> entry : map.entrySet()) {
                String key = entry.getKey();
                Ud udF = entry.getValue().f();
                if (udF != null) {
                    b(rewardService, key, udF.b(), udF.a());
                }
            }
        }
        Map<String, C3832t.b> map2 = this.b;
        if (map2 == null || (r0 = map2.entrySet().iterator()) == null) {
            return;
        }
        for (Map.Entry<String, C3832t.b> entry2 : map2.entrySet()) {
            String key2 = entry2.getKey();
            Ud udA = entry2.getValue().a();
            if (udA != null) {
                a(rewardService, key2, udA.b(), udA.a());
            }
        }
    }
}
