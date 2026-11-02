package com.ironsource;

import org.json.JSONObject;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Lb {
    private final int a;
    private final int b;
    private final int c;
    private final boolean d;

    public Lb(JSONObject applicationLogger) {
        Intrinsics.checkNotNullParameter(applicationLogger, "applicationLogger");
        this.a = applicationLogger.optInt(Mb.a, 3);
        this.b = applicationLogger.optInt(Mb.b, 3);
        this.c = applicationLogger.optInt("console", 3);
        this.d = applicationLogger.optBoolean(Mb.d, false);
    }

    public final int a() {
        return this.c;
    }

    public final int b() {
        return this.b;
    }

    public final int c() {
        return this.a;
    }

    public final boolean d() {
        return this.d;
    }
}
