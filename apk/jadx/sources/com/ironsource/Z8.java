package com.ironsource;

import android.graphics.drawable.Drawable;
import android.webkit.URLUtil;
import java.io.File;
import java.io.InputStream;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Z8 implements InterfaceC3454a9 {
    private final U3 a;

    /* JADX WARN: Multi-variable type inference failed */
    public Z8() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public Z8(U3 connectionFactory) {
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        this.a = connectionFactory;
    }

    public /* synthetic */ Z8(U3 u3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? L4.a : u3);
    }

    private final Object b(String str) {
        File file = new File(str);
        if (!file.exists()) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(new Exception("file does not exists")));
        }
        Drawable drawableCreateFromPath = Drawable.createFromPath(file.getPath());
        if (drawableCreateFromPath == null) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(new Exception("failed to create a drawable")));
        }
        Result.Companion companion3 = Result.INSTANCE;
        return Result.m3022constructorimpl(drawableCreateFromPath);
    }

    private final Object c(String str) {
        InputStream inputStreamA = this.a.a(str);
        try {
            Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamA, new File(str).getName());
            CloseableKt.closeFinally(inputStreamA, null);
            if (drawableCreateFromStream == null) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m3022constructorimpl(ResultKt.createFailure(new Exception("failed to create a drawable")));
            }
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m3022constructorimpl(drawableCreateFromStream);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(inputStreamA, th);
                throw th2;
            }
        }
    }

    private final boolean d(String str) {
        return URLUtil.isHttpsUrl(str);
    }

    @Override // com.ironsource.InterfaceC3454a9
    public Object a(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            return d(url) ? c(url) : b(url);
        } catch (Exception e) {
            C3801r4.d().a(e);
            Result.Companion companion = Result.INSTANCE;
            return Result.m3022constructorimpl(ResultKt.createFailure(e));
        }
    }
}
