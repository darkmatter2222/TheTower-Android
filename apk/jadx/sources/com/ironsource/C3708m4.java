package com.ironsource;

import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.m4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3708m4 implements InterfaceC3673k5<D8> {
    private final InterfaceC3530c6 a;
    private final String b;
    private final C7 c;
    private final Function1<Result<? extends D8>, Unit> d;
    private D8 e;

    /* JADX WARN: Multi-variable type inference failed */
    public C3708m4(InterfaceC3530c6 fileUrl, String destinationPath, C7 downloadManager, Function1<? super Result<? extends D8>, Unit> onFinish) {
        Intrinsics.checkNotNullParameter(fileUrl, "fileUrl");
        Intrinsics.checkNotNullParameter(destinationPath, "destinationPath");
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        this.a = fileUrl;
        this.b = destinationPath;
        this.c = downloadManager;
        this.d = onFinish;
        this.e = new D8(c());
    }

    @Override // com.ironsource.Vc
    public void a(D8 file) {
        Intrinsics.checkNotNullParameter(file, "file");
        Function1<Result<? extends D8>, Unit> function1I = i();
        Result.Companion companion = Result.INSTANCE;
        function1I.invoke(Result.m3021boximpl(Result.m3022constructorimpl(file)));
    }

    @Override // com.ironsource.Vc
    public void a(D8 d8, C3861u8 error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Function1<Result<? extends D8>, Unit> function1I = i();
        Result.Companion companion = Result.INSTANCE;
        function1I.invoke(Result.m3021boximpl(Result.m3022constructorimpl(ResultKt.createFailure(new Exception("Unable to download mobileController.html: " + error.b())))));
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
    public Function1<Result<? extends D8>, Unit> i() {
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
