package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import com.ironsource.C3510b4;
import com.ironsource.G5;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.Unit;
import p005kotlin.io.CloseableKt;
import p005kotlin.io.TextStreamsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.Ref;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: AndroidUnityBootConfigDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidUnityBootConfigDataSource;", "Lcom/unity3d/ads/core/data/datasource/UnityBootConfigDataSource;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getValue", "", C3510b4.i.W, "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidUnityBootConfigDataSource implements UnityBootConfigDataSource {
    private final Context context;

    public AndroidUnityBootConfigDataSource(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Object, java.lang.String] */
    public static final Unit getValue$lambda$2$lambda$1$lambda$0(String str, Ref.ObjectRef objectRef, String line) {
        Intrinsics.checkNotNullParameter(line, "line");
        if (StringsKt.startsWith$default(line, str, false, 2, (Object) null)) {
            ?? Substring = line.substring(str.length());
            Intrinsics.checkNotNullExpressionValue(Substring, "substring(...)");
            objectRef.element = Substring;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.ads.core.data.datasource.UnityBootConfigDataSource
    public String getValue(String key) {
        Object objM3022constructorimpl;
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Result.Companion companion = Result.INSTANCE;
            AndroidUnityBootConfigDataSource androidUnityBootConfigDataSource = this;
            final String str = key + G5.U;
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            InputStream inputStreamOpen = this.context.getAssets().open("bin/Data/boot.config");
            try {
                InputStream inputStream = inputStreamOpen;
                Intrinsics.checkNotNull(inputStream);
                Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
                TextStreamsKt.forEachLine(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192), new Function1() { // from class: com.unity3d.ads.core.data.datasource.AndroidUnityBootConfigDataSource$$ExternalSyntheticLambda0
                    @Override // p005kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return AndroidUnityBootConfigDataSource.getValue$lambda$2$lambda$1$lambda$0(str, objectRef, (String) obj);
                    }
                });
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(inputStreamOpen, null);
                objM3022constructorimpl = Result.m3022constructorimpl((String) objectRef.element);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(inputStreamOpen, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th3));
        }
        return (String) (Result.m3028isFailureimpl(objM3022constructorimpl) ? null : objM3022constructorimpl);
    }
}
