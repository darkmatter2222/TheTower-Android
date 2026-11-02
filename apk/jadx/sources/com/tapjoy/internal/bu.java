package com.tapjoy.internal;

import java.io.InputStream;
import java.net.URI;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class bu<Result> {
    public static ExecutorService a;
    public static bx b;
    private Future<?> c;

    public abstract Result a(URI uri, InputStream inputStream);

    public Map<String, Object> a() {
        return Collections.emptyMap();
    }

    public final synchronized void a(@Nullable bz<Result> bzVar, ExecutorService executorService) {
        Future<?> future = this.c;
        if (!(future == null || future.isDone())) {
            throw new IllegalStateException("Call has not completed");
        }
        this.c = executorService.submit(new bw(this, bzVar));
    }

    public abstract String b();

    public abstract String c();

    public String d() {
        return null;
    }

    public Map<String, Object> e() {
        return new LinkedHashMap();
    }

    protected Result f() {
        return (Result) b.a(this);
    }
}
