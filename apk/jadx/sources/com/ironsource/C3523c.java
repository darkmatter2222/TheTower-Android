package com.ironsource;

import com.ironsource.sdk.utils.IronSourceStorageUtils;
import org.json.JSONObject;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3523c implements InterfaceC3673k5<JSONObject> {
    private final InterfaceC3530c6 a;
    private final String b;
    private final C7 c;
    private final Function1<Result<? extends JSONObject>, Unit> d;
    private D8 e;

    /* JADX WARN: Multi-variable type inference failed */
    public C3523c(InterfaceC3530c6 fileUrl, String destinationPath, C7 downloadManager, Function1<? super Result<? extends JSONObject>, Unit> onFinish) {
        Intrinsics.checkNotNullParameter(fileUrl, "fileUrl");
        Intrinsics.checkNotNullParameter(destinationPath, "destinationPath");
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        this.a = fileUrl;
        this.b = destinationPath;
        this.c = downloadManager;
        this.d = onFinish;
        this.e = new D8(c(), C3510b4.i);
    }

    private final JSONObject c(D8 d8) {
        return new JSONObject(IronSourceStorageUtils.readFile(d8));
    }

    @Override // com.ironsource.Vc
    public void a(D8 file) {
        Intrinsics.checkNotNullParameter(file, "file");
        if (Intrinsics.areEqual(file.getName(), C3510b4.i)) {
            try {
                JSONObject jSONObjectC = c(file);
                Function1<Result<? extends JSONObject>, Unit> function1I = i();
                Result.Companion companion = Result.INSTANCE;
                function1I.invoke(Result.m3021boximpl(Result.m3022constructorimpl(jSONObjectC)));
            } catch (Exception e) {
                C3801r4.d().a(e);
                Function1<Result<? extends JSONObject>, Unit> function1I2 = i();
                Result.Companion companion2 = Result.INSTANCE;
                function1I2.invoke(Result.m3021boximpl(Result.m3022constructorimpl(ResultKt.createFailure(e))));
            }
        }
    }

    @Override // com.ironsource.Vc
    public void a(D8 d8, C3861u8 error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Function1<Result<? extends JSONObject>, Unit> function1I = i();
        Result.Companion companion = Result.INSTANCE;
        function1I.invoke(Result.m3021boximpl(Result.m3022constructorimpl(ResultKt.createFailure(new Exception("Unable to download abTestMap.json: " + error.b())))));
    }

    @Override // com.ironsource.InterfaceC3673k5
    public void b(D8 d8) {
        Intrinsics.checkNotNullParameter(d8, "<set-?>");
        this.e = d8;
    }

    @Override // com.ironsource.InterfaceC3673k5
    public String c() {
        return this.b;
    }

    @Override // com.ironsource.InterfaceC3673k5
    public InterfaceC3530c6 d() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3673k5
    public Function1<Result<? extends JSONObject>, Unit> i() {
        return this.d;
    }

    @Override // com.ironsource.InterfaceC3673k5
    public D8 k() {
        return this.e;
    }

    @Override // com.ironsource.InterfaceC3673k5
    public C7 l() {
        return this.c;
    }
}
