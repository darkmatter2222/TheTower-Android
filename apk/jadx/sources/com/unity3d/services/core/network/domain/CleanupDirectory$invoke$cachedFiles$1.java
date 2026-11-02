package com.unity3d.services.core.network.domain;

import java.io.File;
import p005kotlin.Metadata;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CleanupDirectory.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
/* synthetic */ class CleanupDirectory$invoke$cachedFiles$1 extends FunctionReferenceImpl implements Function1<File, Boolean> {
    public static final CleanupDirectory$invoke$cachedFiles$1 INSTANCE = new CleanupDirectory$invoke$cachedFiles$1();

    CleanupDirectory$invoke$cachedFiles$1() {
        super(1, File.class, "isFile", "isFile()Z", 0);
    }

    @Override // p005kotlin.jvm.functions.Function1
    public final Boolean invoke(File p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return Boolean.valueOf(p0.isFile());
    }
}
