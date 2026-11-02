package com.unity3d.ads.core.domain.capability;

import android.content.ComponentName;
import android.content.Context;
import gatewayprotocol.v1.InitializationRequestOuterClass;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WorkManagerCapabilitiesChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0096\u0002J\b\u0010\r\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/unity3d/ads/core/domain/capability/WorkManagerCapabilitiesChecker;", "Lcom/unity3d/ads/core/domain/capability/CapabilitiesChecker;", "context", "Landroid/content/Context;", "isClassPresent", "Lkotlin/Function1;", "", "", "<init>", "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V", "invoke", "", "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;", "isStartupProviderRegistered", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkManagerCapabilitiesChecker implements CapabilitiesChecker {
    private static final int NO_MATCH_FLAGS = 0;
    public static final String STARTUP_PROVIDER_CLASS = "androidx.startup.InitializationProvider";
    public static final String WORK_DATABASE_IMPL = "androidx.work.impl.WorkDatabase_Impl";
    public static final String WORK_MANAGER = "androidx.work.WorkManager";
    private final Context context;
    private final Function1<String, Boolean> isClassPresent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.capability.WorkManagerCapabilitiesChecker$1, reason: invalid class name */
    /* JADX INFO: compiled from: WorkManagerCapabilitiesChecker.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<String, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, CapabilitiesCheckerKt.class, "isClassResolvable", "isClassResolvable(Ljava/lang/String;)Z", 1);
        }

        @Override // p005kotlin.jvm.functions.Function1
        public final Boolean invoke(String p0) {
            Intrinsics.checkNotNullParameter(p0, "p0");
            return Boolean.valueOf(CapabilitiesCheckerKt.isClassResolvable(p0));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WorkManagerCapabilitiesChecker(Context context, Function1<? super String, Boolean> isClassPresent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(isClassPresent, "isClassPresent");
        this.context = context;
        this.isClassPresent = isClassPresent;
    }

    public /* synthetic */ WorkManagerCapabilitiesChecker(Context context, AnonymousClass1 anonymousClass1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? AnonymousClass1.INSTANCE : anonymousClass1);
    }

    private final boolean isStartupProviderRegistered() {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            WorkManagerCapabilitiesChecker workManagerCapabilitiesChecker = this;
            objM3022constructorimpl = Result.m3022constructorimpl(this.context.getPackageManager().getProviderInfo(new ComponentName(this.context.getPackageName(), STARTUP_PROVIDER_CLASS), 0));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m3029isSuccessimpl(objM3022constructorimpl);
    }

    @Override // com.unity3d.ads.core.domain.capability.CapabilitiesChecker
    public List<InitializationRequestOuterClass.QuickCapabilities.Android.Capability> invoke() {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        if (this.isClassPresent.invoke(WORK_MANAGER).booleanValue()) {
            listCreateListBuilder.add(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_WORK_MANAGER);
        }
        if (this.isClassPresent.invoke(WORK_DATABASE_IMPL).booleanValue()) {
            listCreateListBuilder.add(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_WORK_MANAGER_DATABASE_IMPL);
        }
        if (isStartupProviderRegistered()) {
            listCreateListBuilder.add(InitializationRequestOuterClass.QuickCapabilities.Android.Capability.CAPABILITY_ANDROIDX_STARTUP_PROVIDER);
        }
        return CollectionsKt.build(listCreateListBuilder);
    }
}
