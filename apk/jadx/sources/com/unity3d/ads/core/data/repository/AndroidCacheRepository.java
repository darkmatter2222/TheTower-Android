package com.unity3d.ads.core.data.repository;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.ironsource.Z5;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.data.datasource.CacheDataSource;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.model.CachedFile;
import com.unity3d.ads.core.domain.CreateFile;
import com.unity3d.ads.core.domain.GetAssetFileName;
import com.unity3d.ads.core.domain.GetCacheDirectory;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.work.DownloadPriorityQueue;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.network.domain.CleanupDirectory;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import kotlin.fh;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.NonCancellable;
import org.json.JSONArray;
import p005kotlin.Lazy;
import p005kotlin.LazyKt;
import p005kotlin.Metadata;
import p005kotlin.Pair;
import p005kotlin.ResultKt;
import p005kotlin.TuplesKt;
import p005kotlin.Unit;
import p005kotlin.collections.MapsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.coroutines.jvm.internal.ContinuationImpl;
import p005kotlin.coroutines.jvm.internal.DebugMetadata;
import p005kotlin.coroutines.jvm.internal.SuspendLambda;
import p005kotlin.io.FilesKt;
import p005kotlin.jvm.functions.Function0;
import p005kotlin.jvm.functions.Function1;
import p005kotlin.jvm.functions.Function2;
import p005kotlin.jvm.functions.Function3;
import p005kotlin.jvm.internal.FunctionReferenceImpl;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.sequences.SequencesKt;
import p005kotlin.time.TimeSource;

/* JADX INFO: compiled from: AndroidCacheRepository.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018Jz\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+2H\u0010-\u001aD\b\u0001\u0012\u0013\u0012\u00110/¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(2\u0012\u0013\u0012\u00110/¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(3\u0012\n\u0012\b\u0012\u0004\u0012\u00020504\u0012\u0006\u0012\u0004\u0018\u000106\u0018\u00010.H\u0096@¢\u0006\u0002\u00107J&\u00108\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u00109\u001a\u00020'2\u0006\u0010:\u001a\u00020;H\u0096@¢\u0006\u0002\u0010<J\u001e\u0010=\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u00109\u001a\u00020'H\u0096@¢\u0006\u0002\u0010>J\u0086\u0001\u0010?\u001a\u00020%2\u0006\u0010@\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020+2J\b\u0002\u0010-\u001aD\b\u0001\u0012\u0013\u0012\u00110/¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(2\u0012\u0013\u0012\u00110/¢\u0006\f\b0\u0012\b\b1\u0012\u0004\b\b(3\u0012\n\u0012\b\u0012\u0004\u0012\u00020504\u0012\u0006\u0012\u0004\u0018\u000106\u0018\u00010.H\u0082@¢\u0006\u0002\u0010AJ\u001e\u0010B\u001a\u00020%2\u0006\u0010@\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020'H\u0082@¢\u0006\u0002\u0010CJ\u0016\u0010D\u001a\u00020%2\u0006\u0010E\u001a\u00020'H\u0096@¢\u0006\u0002\u0010FJ\u0010\u0010G\u001a\u00020;2\u0006\u0010H\u001a\u00020IH\u0016J\u0016\u0010J\u001a\u00020;2\u0006\u0010E\u001a\u00020'H\u0096@¢\u0006\u0002\u0010FJ\u000e\u0010K\u001a\u00020'2\u0006\u0010&\u001a\u00020'J\u000e\u0010L\u001a\u000205H\u0096@¢\u0006\u0002\u0010MJ\u000e\u0010N\u001a\u00020/H\u0096@¢\u0006\u0002\u0010MJ\u0010\u0010O\u001a\u00020\u001c2\u0006\u0010P\u001a\u00020'H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010 \u001a\u0004\b\"\u0010\u001e¨\u0006Q"}, d2 = {"Lcom/unity3d/ads/core/data/repository/AndroidCacheRepository;", "Lcom/unity3d/ads/core/data/repository/CacheRepository;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getCacheDirectory", "Lcom/unity3d/ads/core/domain/GetCacheDirectory;", "localCacheDataSource", "Lcom/unity3d/ads/core/data/datasource/CacheDataSource;", "remoteCacheDataSource", "context", "Landroid/content/Context;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "cleanupDirectory", "Lcom/unity3d/services/core/network/domain/CleanupDirectory;", "downloadPriorityQueue", "Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;", "createFile", "Lcom/unity3d/ads/core/domain/CreateFile;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "getAssetFileName", "Lcom/unity3d/ads/core/domain/GetAssetFileName;", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetCacheDirectory;Lcom/unity3d/ads/core/data/datasource/CacheDataSource;Lcom/unity3d/ads/core/data/datasource/CacheDataSource;Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/services/core/network/domain/CleanupDirectory;Lcom/unity3d/ads/core/domain/work/DownloadPriorityQueue;Lcom/unity3d/ads/core/domain/CreateFile;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/GetAssetFileName;)V", "scope", "Lkotlinx/coroutines/CoroutineScope;", "cacheDir", "Ljava/io/File;", "getCacheDir", "()Ljava/io/File;", "cacheDir$delegate", "Lkotlin/Lazy;", "webviewCacheDir", "getWebviewCacheDir", "webviewCacheDir$delegate", "getFile", "Lcom/unity3d/ads/core/data/model/CacheResult;", "url", "", "headers", "Lorg/json/JSONArray;", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "", "intervalMs", "onProgress", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "bytesDownloaded", "totalBytes", "Lkotlin/coroutines/Continuation;", "", "", "(Ljava/lang/String;Lorg/json/JSONArray;IILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getWebviewFile", "type", "forceRemote", "", "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getWebviewFileFromDisk", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFileInternal", "cacheDirectory", "(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONArray;IILkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFileFromRemote", "(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrieveFile", Z5.c.b, "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeFile", "cachedFile", "Lcom/unity3d/ads/core/data/model/CachedFile;", "doesFileExist", "getFilename", "clearCache", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCacheSize", "initCacheDir", "dirName", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidCacheRepository implements CacheRepository {

    /* JADX INFO: renamed from: cacheDir$delegate, reason: from kotlin metadata */
    private final Lazy cacheDir;
    private final CleanupDirectory cleanupDirectory;
    private final Context context;
    private final CreateFile createFile;
    private final DownloadPriorityQueue downloadPriorityQueue;
    private final GetAssetFileName getAssetFileName;
    private final GetCacheDirectory getCacheDirectory;
    private final CacheDataSource localCacheDataSource;
    private final CacheDataSource remoteCacheDataSource;
    private final CoroutineScope scope;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;

    /* JADX INFO: renamed from: webviewCacheDir$delegate, reason: from kotlin metadata */
    private final Lazy webviewCacheDir;

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$clearCache$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidCacheRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$clearCache$2", f = "AndroidCacheRepository.kt", i = {0, 0}, l = {144}, m = "invokeSuspend", n = {"shouldCleanCache", "nativeClearCacheStartTime"}, s = {"Z$0", "J$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        long J$0;
        boolean Z$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidCacheRepository.this.new AnonymousClass2(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x00a7 A[Catch: all -> 0x00eb, TryCatch #2 {all -> 0x00eb, blocks: (B:18:0x0089, B:26:0x00b3, B:21:0x0099, B:23:0x00a7, B:25:0x00ab), top: B:57:0x005a }] */
        /* JADX WARN: Code duplicated, block: B:25:0x00ab A[Catch: all -> 0x00eb, LOOP:0: B:24:0x00a9->B:25:0x00ab, LOOP_END, TryCatch #2 {all -> 0x00eb, blocks: (B:18:0x0089, B:26:0x00b3, B:21:0x0099, B:23:0x00a7, B:25:0x00ab), top: B:57:0x005a }] */
        /* JADX WARN: Code duplicated, block: B:41:0x0194 A[Catch: Exception -> 0x01c8, TryCatch #1 {Exception -> 0x01c8, blocks: (B:35:0x0151, B:38:0x0162, B:44:0x01a0, B:39:0x0188, B:41:0x0194, B:43:0x0198), top: B:55:0x0151 }] */
        /* JADX WARN: Code duplicated, block: B:43:0x0198 A[Catch: Exception -> 0x01c8, LOOP:1: B:42:0x0196->B:43:0x0198, LOOP_END, TryCatch #1 {Exception -> 0x01c8, blocks: (B:35:0x0151, B:38:0x0162, B:44:0x01a0, B:39:0x0188, B:41:0x0194, B:43:0x0198), top: B:55:0x0151 }] */
        /* JADX WARN: Instruction removed from duplicated block: B:23:0x00a7, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:41:0x0194, please report this as an issue */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            boolean cleanCache;
            long jM4482markNowz9LOYto;
            Object cacheSize;
            char c;
            File[] fileArrListFiles;
            int i;
            File[] fileArrListFiles2;
            int i2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i3 = this.label;
            if (i3 == 0) {
                ResultKt.throwOnFailure(obj);
                cleanCache = AndroidCacheRepository.this.sessionRepository.getNativeConfiguration().getDebugSettings().getCleanCache();
                jM4482markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
                this.Z$0 = cleanCache;
                this.J$0 = jM4482markNowz9LOYto;
                this.label = 1;
                cacheSize = AndroidCacheRepository.this.getCacheSize(this);
                if (cacheSize == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i3 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                jM4482markNowz9LOYto = this.J$0;
                boolean z = this.Z$0;
                ResultKt.throwOnFailure(obj);
                cacheSize = obj;
                cleanCache = z;
            }
            long jLongValue = ((Number) cacheSize).longValue();
            try {
                if (cleanCache) {
                    c = 1;
                    fileArrListFiles2 = AndroidCacheRepository.this.getCacheDir().listFiles();
                    if (fileArrListFiles2 != null) {
                        for (File file : fileArrListFiles2) {
                            file.delete();
                        }
                    }
                } else {
                    try {
                        if (AndroidCacheRepository.this.sessionRepository.getNativeConfiguration().hasCachedAssetsConfiguration()) {
                            NativeConfigurationOuterClass.CachedAssetsConfiguration cachedAssetsConfiguration = AndroidCacheRepository.this.sessionRepository.getNativeConfiguration().getCachedAssetsConfiguration();
                            c = 1;
                            AndroidCacheRepository.this.cleanupDirectory.invoke(AndroidCacheRepository.this.getCacheDir(), cachedAssetsConfiguration.getMaxCachedAssetSizeMb(), cachedAssetsConfiguration.getMaxCachedAssetAgeMs());
                        } else {
                            c = 1;
                            fileArrListFiles2 = AndroidCacheRepository.this.getCacheDir().listFiles();
                            if (fileArrListFiles2 != null) {
                                while (i2 < r3) {
                                    file.delete();
                                }
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        c = 1;
                        SendDiagnosticEvent sendDiagnosticEvent = AndroidCacheRepository.this.sendDiagnosticEvent;
                        DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_CLEAN_ASSETS_FAILURE_TIME;
                        double dElapsedMillis = TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto));
                        Map mapMapOf = MapsKt.mapOf(TuplesKt.to("size_kb", Boxing.boxInt((int) (jLongValue / ((long) 1024)))));
                        Pair[] pairArr = new Pair[2];
                        pairArr[0] = TuplesKt.to("reason", th.getClass().getSimpleName());
                        String message = th.getMessage();
                        if (message == null) {
                            message = th.getClass().getSimpleName();
                        }
                        pairArr[c] = TuplesKt.to("reason_debug", message);
                        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, diagnosticEventType, Boxing.boxDouble(dElapsedMillis), MapsKt.mapOf(pairArr), mapMapOf, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 240, (Object) null);
                    }
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(AndroidCacheRepository.this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_CLEAN_ASSETS_SUCCESS_TIME, Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto))), (Map) null, MapsKt.mapOf(TuplesKt.to("size_kb", Boxing.boxInt((int) (jLongValue / ((long) 1024))))), (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 244, (Object) null);
            } catch (Throwable th2) {
                th = th2;
            }
            long jM4482markNowz9LOYto2 = TimeSource.Monotonic.INSTANCE.m4482markNowz9LOYto();
            if (cleanCache) {
                fileArrListFiles = AndroidCacheRepository.this.getWebviewCacheDir().listFiles();
                if (fileArrListFiles != null) {
                    for (File file2 : fileArrListFiles) {
                        file2.delete();
                    }
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(AndroidCacheRepository.this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_CLEAN_WEBVIEW_SUCCESS_TIME, Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto2))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
            } else {
                try {
                    if (AndroidCacheRepository.this.sessionRepository.getNativeConfiguration().hasCachedWebviewFilesConfiguration()) {
                        NativeConfigurationOuterClass.CachedAssetsConfiguration cachedWebviewFilesConfiguration = AndroidCacheRepository.this.sessionRepository.getNativeConfiguration().getCachedWebviewFilesConfiguration();
                        AndroidCacheRepository.this.cleanupDirectory.invoke(AndroidCacheRepository.this.getWebviewCacheDir(), cachedWebviewFilesConfiguration.getMaxCachedAssetSizeMb(), cachedWebviewFilesConfiguration.getMaxCachedAssetAgeMs());
                    } else {
                        fileArrListFiles = AndroidCacheRepository.this.getWebviewCacheDir().listFiles();
                        if (fileArrListFiles != null) {
                            while (i < r2) {
                                file2.delete();
                            }
                        }
                    }
                    SendDiagnosticEvent.DefaultImpls.invoke$default(AndroidCacheRepository.this.sendDiagnosticEvent, DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_CLEAN_WEBVIEW_SUCCESS_TIME, Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto2))), (Map) null, (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 252, (Object) null);
                } catch (Exception e) {
                    SendDiagnosticEvent sendDiagnosticEvent2 = AndroidCacheRepository.this.sendDiagnosticEvent;
                    DiagnosticEventRequestOuterClass.DiagnosticEventType diagnosticEventType2 = DiagnosticEventRequestOuterClass.DiagnosticEventType.DIAGNOSTIC_EVENT_TYPE_NATIVE_CLEAN_WEBVIEW_FAILURE_TIME;
                    Double dBoxDouble = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m4483boximpl(jM4482markNowz9LOYto2)));
                    Pair[] pairArr2 = new Pair[2];
                    pairArr2[0] = TuplesKt.to("reason", e.getClass().getSimpleName());
                    String message2 = e.getMessage();
                    if (message2 == null) {
                        message2 = e.getClass().getSimpleName();
                    }
                    pairArr2[c] = TuplesKt.to("reason_debug", message2);
                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent2, diagnosticEventType2, dBoxDouble, MapsKt.mapOf(pairArr2), (Map) null, (AdObject) null, (Integer) null, (ByteString) null, (MediationInfo) null, 248, (Object) null);
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$doesFileExist$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidCacheRepository.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository", f = "AndroidCacheRepository.kt", i = {}, l = {135}, m = "doesFileExist", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidCacheRepository.this.doesFileExist(null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getCacheSize$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidCacheRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getCacheSize$2", f = "AndroidCacheRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C40032 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Long>, Object> {
        int label;

        /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getCacheSize$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidCacheRepository.kt */
        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<File, Boolean> {
            public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

            AnonymousClass1() {
                super(1, File.class, "isFile", "isFile()Z", 0);
            }

            @Override // p005kotlin.jvm.functions.Function1
            public final Boolean invoke(File p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return Boolean.valueOf(p0.isFile());
            }
        }

        C40032(Continuation<? super C40032> continuation) {
            super(2, continuation);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidCacheRepository.this.new C40032(continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Long> continuation) {
            return ((C40032) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Iterator it = SequencesKt.filter(FilesKt.walk$default(AndroidCacheRepository.this.getCacheDir(), null, 1, null), AnonymousClass1.INSTANCE).iterator();
            long length = 0;
            while (it.hasNext()) {
                length += ((File) it.next()).length();
            }
            return Boxing.boxLong(length);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileFromRemote$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidCacheRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/model/CacheResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileFromRemote$2", f = "AndroidCacheRepository.kt", i = {0}, l = {120, 124}, m = "invokeSuspend", n = {"fileResult"}, s = {"L$0"})
    static final class C40042 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CacheResult>, Object> {
        final /* synthetic */ File $cacheDirectory;
        final /* synthetic */ String $url;
        Object L$0;
        int label;

        /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileFromRemote$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidCacheRepository.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileFromRemote$2$1", f = "AndroidCacheRepository.kt", i = {}, l = {121}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
            final /* synthetic */ File $cacheDirectory;
            final /* synthetic */ CompletableDeferred<CacheResult> $fileResult;
            final /* synthetic */ String $filename;
            final /* synthetic */ String $url;
            int label;
            final /* synthetic */ AndroidCacheRepository this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(AndroidCacheRepository androidCacheRepository, File file, String str, String str2, CompletableDeferred<CacheResult> completableDeferred, Continuation<? super AnonymousClass1> continuation) {
                super(1, continuation);
                this.this$0 = androidCacheRepository;
                this.$cacheDirectory = file;
                this.$filename = str;
                this.$url = str2;
                this.$fileResult = completableDeferred;
            }

            @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$cacheDirectory, this.$filename, this.$url, this.$fileResult, continuation);
            }

            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = CacheDataSource.DefaultImpls.getFile$default(this.this$0.remoteCacheDataSource, this.$cacheDirectory, this.$filename, this.$url, Boxing.boxInt(0), 0, null, this, 48, null);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$fileResult.complete((CacheResult) obj);
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C40042(String str, File file, Continuation<? super C40042> continuation) {
            super(2, continuation);
            this.$url = str;
            this.$cacheDirectory = file;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidCacheRepository.this.new C40042(this.$url, this.$cacheDirectory, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CacheResult> continuation) {
            return ((C40042) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CompletableDeferred completableDeferred;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String filename = AndroidCacheRepository.this.getFilename(this.$url);
                CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                this.L$0 = completableDeferredCompletableDeferred$default;
                this.label = 1;
                if (AndroidCacheRepository.this.downloadPriorityQueue.invoke(0, new AnonymousClass1(AndroidCacheRepository.this, this.$cacheDirectory, filename, this.$url, completableDeferredCompletableDeferred$default, null), this) != coroutine_suspended) {
                    completableDeferred = completableDeferredCompletableDeferred$default;
                }
            }
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            completableDeferred = (CompletableDeferred) this.L$0;
            ResultKt.throwOnFailure(obj);
            this.L$0 = null;
            this.label = 2;
            Object objAwait = completableDeferred.await(this);
            return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidCacheRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/model/CacheResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2", f = "AndroidCacheRepository.kt", i = {0, 1}, l = {91, fh.Q0, 111}, m = "invokeSuspend", n = {"filename", "fileResult"}, s = {"L$0", "L$0"})
    static final class C40052 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CacheResult>, Object> {
        final /* synthetic */ File $cacheDirectory;
        final /* synthetic */ int $intervalMs;
        final /* synthetic */ Function3<Long, Long, Continuation<? super Unit>, Object> $onProgress;
        final /* synthetic */ int $priority;
        final /* synthetic */ String $url;
        Object L$0;
        int label;

        /* JADX INFO: renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidCacheRepository.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1", f = "AndroidCacheRepository.kt", i = {}, l = {100, fh.h1}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
            final /* synthetic */ File $cacheDirectory;
            final /* synthetic */ CompletableDeferred<CacheResult> $fileResult;
            final /* synthetic */ String $filename;
            final /* synthetic */ int $intervalMs;
            final /* synthetic */ Function3<Long, Long, Continuation<? super Unit>, Object> $onProgress;
            final /* synthetic */ int $priority;
            final /* synthetic */ String $url;
            int label;
            final /* synthetic */ AndroidCacheRepository this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(AndroidCacheRepository androidCacheRepository, File file, String str, String str2, int i, CompletableDeferred<CacheResult> completableDeferred, int i2, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super AnonymousClass1> continuation) {
                super(1, continuation);
                this.this$0 = androidCacheRepository;
                this.$cacheDirectory = file;
                this.$filename = str;
                this.$url = str2;
                this.$priority = i;
                this.$fileResult = completableDeferred;
                this.$intervalMs = i2;
                this.$onProgress = function3;
            }

            @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$cacheDirectory, this.$filename, this.$url, this.$priority, this.$fileResult, this.$intervalMs, this.$onProgress, continuation);
            }

            @Override // p005kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
            
                if (r15 == r0) goto L19;
             */
            @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r15) {
                /*
                    r14 = this;
                    java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r1 = r14.label
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L1e
                    if (r1 == r3) goto L1a
                    if (r1 != r2) goto L12
                    p005kotlin.ResultKt.throwOnFailure(r15)
                    goto L74
                L12:
                    java.lang.IllegalStateException r15 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r15.<init>(r0)
                    throw r15
                L1a:
                    p005kotlin.ResultKt.throwOnFailure(r15)
                    goto L44
                L1e:
                    p005kotlin.ResultKt.throwOnFailure(r15)
                    com.unity3d.ads.core.data.repository.AndroidCacheRepository r15 = r14.this$0
                    com.unity3d.ads.core.data.datasource.CacheDataSource r4 = com.unity3d.ads.core.data.repository.AndroidCacheRepository.access$getLocalCacheDataSource$p(r15)
                    java.io.File r5 = r14.$cacheDirectory
                    java.lang.String r6 = r14.$filename
                    java.lang.String r7 = r14.$url
                    int r15 = r14.$priority
                    java.lang.Integer r8 = p005kotlin.coroutines.jvm.internal.Boxing.boxInt(r15)
                    r11 = r14
                    kotlin.coroutines.Continuation r11 = (p005kotlin.coroutines.Continuation) r11
                    r14.label = r3
                    r9 = 0
                    r10 = 0
                    r12 = 48
                    r13 = 0
                    java.lang.Object r15 = com.unity3d.ads.core.data.datasource.CacheDataSource.DefaultImpls.getFile$default(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
                    if (r15 != r0) goto L44
                    goto L73
                L44:
                    com.unity3d.ads.core.data.model.CacheResult r15 = (com.unity3d.ads.core.data.model.CacheResult) r15
                    boolean r1 = r15 instanceof com.unity3d.ads.core.data.model.CacheResult.Success
                    if (r1 == 0) goto L52
                    kotlinx.coroutines.CompletableDeferred<com.unity3d.ads.core.data.model.CacheResult> r0 = r14.$fileResult
                    r0.complete(r15)
                    kotlin.Unit r15 = p005kotlin.Unit.INSTANCE
                    return r15
                L52:
                    com.unity3d.ads.core.data.repository.AndroidCacheRepository r15 = r14.this$0
                    com.unity3d.ads.core.data.datasource.CacheDataSource r3 = com.unity3d.ads.core.data.repository.AndroidCacheRepository.access$getRemoteCacheDataSource$p(r15)
                    java.io.File r4 = r14.$cacheDirectory
                    java.lang.String r5 = r14.$filename
                    java.lang.String r6 = r14.$url
                    int r15 = r14.$priority
                    java.lang.Integer r7 = p005kotlin.coroutines.jvm.internal.Boxing.boxInt(r15)
                    int r8 = r14.$intervalMs
                    kotlin.jvm.functions.Function3<java.lang.Long, java.lang.Long, kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r9 = r14.$onProgress
                    r10 = r14
                    kotlin.coroutines.Continuation r10 = (p005kotlin.coroutines.Continuation) r10
                    r14.label = r2
                    java.lang.Object r15 = r3.getFile(r4, r5, r6, r7, r8, r9, r10)
                    if (r15 != r0) goto L74
                L73:
                    return r0
                L74:
                    com.unity3d.ads.core.data.model.CacheResult r15 = (com.unity3d.ads.core.data.model.CacheResult) r15
                    kotlinx.coroutines.CompletableDeferred<com.unity3d.ads.core.data.model.CacheResult> r0 = r14.$fileResult
                    r0.complete(r15)
                    kotlin.Unit r15 = p005kotlin.Unit.INSTANCE
                    return r15
                */
                throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidCacheRepository.C40052.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C40052(String str, File file, int i, int i2, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super C40052> continuation) {
            super(2, continuation);
            this.$url = str;
            this.$cacheDirectory = file;
            this.$priority = i;
            this.$intervalMs = i2;
            this.$onProgress = function3;
        }

        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidCacheRepository.this.new C40052(this.$url, this.$cacheDirectory, this.$priority, this.$intervalMs, this.$onProgress, continuation);
        }

        @Override // p005kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CacheResult> continuation) {
            return ((C40052) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x00a8 A[RETURN] */
        @Override // p005kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String filename;
            Object file$default;
            CompletableDeferred completableDeferred;
            Object objAwait;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                filename = AndroidCacheRepository.this.getFilename(this.$url);
                this.L$0 = filename;
                this.label = 1;
                file$default = CacheDataSource.DefaultImpls.getFile$default(AndroidCacheRepository.this.localCacheDataSource, this.$cacheDirectory, filename, this.$url, Boxing.boxInt(this.$priority), 0, null, this, 48, null);
                if (file$default != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                String str = (String) this.L$0;
                ResultKt.throwOnFailure(obj);
                filename = str;
                file$default = obj;
            } else {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                completableDeferred = (CompletableDeferred) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            this.L$0 = null;
            this.label = 3;
            objAwait = completableDeferred.await(this);
            if (objAwait != coroutine_suspended) {
                return coroutine_suspended;
            }
            return objAwait;
            CacheResult cacheResult = (CacheResult) file$default;
            if (cacheResult instanceof CacheResult.Success) {
                return cacheResult;
            }
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            this.L$0 = completableDeferredCompletableDeferred$default;
            this.label = 2;
            if (AndroidCacheRepository.this.downloadPriorityQueue.invoke(this.$priority, new AnonymousClass1(AndroidCacheRepository.this, this.$cacheDirectory, filename, this.$url, this.$priority, completableDeferredCompletableDeferred$default, this.$intervalMs, this.$onProgress, null), this) != coroutine_suspended) {
                completableDeferred = completableDeferredCompletableDeferred$default;
                this.L$0 = null;
                this.label = 3;
                objAwait = completableDeferred.await(this);
                if (objAwait != coroutine_suspended) {
                    return objAwait;
                }
            }
            return coroutine_suspended;
        }
    }

    public AndroidCacheRepository(CoroutineDispatcher ioDispatcher, GetCacheDirectory getCacheDirectory, CacheDataSource localCacheDataSource, CacheDataSource remoteCacheDataSource, Context context, SessionRepository sessionRepository, CleanupDirectory cleanupDirectory, DownloadPriorityQueue downloadPriorityQueue, CreateFile createFile, SendDiagnosticEvent sendDiagnosticEvent, GetAssetFileName getAssetFileName) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(getCacheDirectory, "getCacheDirectory");
        Intrinsics.checkNotNullParameter(localCacheDataSource, "localCacheDataSource");
        Intrinsics.checkNotNullParameter(remoteCacheDataSource, "remoteCacheDataSource");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(cleanupDirectory, "cleanupDirectory");
        Intrinsics.checkNotNullParameter(downloadPriorityQueue, "downloadPriorityQueue");
        Intrinsics.checkNotNullParameter(createFile, "createFile");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getAssetFileName, "getAssetFileName");
        this.getCacheDirectory = getCacheDirectory;
        this.localCacheDataSource = localCacheDataSource;
        this.remoteCacheDataSource = remoteCacheDataSource;
        this.context = context;
        this.sessionRepository = sessionRepository;
        this.cleanupDirectory = cleanupDirectory;
        this.downloadPriorityQueue = downloadPriorityQueue;
        this.createFile = createFile;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getAssetFileName = getAssetFileName;
        this.scope = CoroutineScopeKt.plus(CoroutineScopeKt.plus(CoroutineScopeKt.CoroutineScope(ioDispatcher), new CoroutineName("CacheRepository")), NonCancellable.INSTANCE);
        this.cacheDir = LazyKt.lazy(new Function0() { // from class: com.unity3d.ads.core.data.repository.AndroidCacheRepository$$ExternalSyntheticLambda0
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidCacheRepository.cacheDir_delegate$lambda$0(this.f$0);
            }
        });
        this.webviewCacheDir = LazyKt.lazy(new Function0() { // from class: com.unity3d.ads.core.data.repository.AndroidCacheRepository$$ExternalSyntheticLambda1
            @Override // p005kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AndroidCacheRepository.webviewCacheDir_delegate$lambda$1(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File cacheDir_delegate$lambda$0(AndroidCacheRepository androidCacheRepository) {
        return androidCacheRepository.initCacheDir(UnityAdsConstants.DefaultUrls.CACHE_DIR_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getCacheDir() {
        return (File) this.cacheDir.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getFileFromRemote(File file, String str, Continuation<? super CacheResult> continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new C40042(str, file, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getFileInternal(File file, String str, JSONArray jSONArray, int i, int i2, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super CacheResult> continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new C40052(str, file, i, i2, function3, null), continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object getFileInternal$default(AndroidCacheRepository androidCacheRepository, File file, String str, JSONArray jSONArray, int i, int i2, Function3 function3, Continuation continuation, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        int i4 = i2;
        if ((i3 & 32) != 0) {
            function3 = null;
        }
        return androidCacheRepository.getFileInternal(file, str, jSONArray, i, i4, function3, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File getWebviewCacheDir() {
        return (File) this.webviewCacheDir.getValue();
    }

    private final File initCacheDir(String dirName) {
        File filesDir = this.sessionRepository.getFeatureFlags().getUseFilesDir() ? this.context.getFilesDir() : this.context.getCacheDir();
        GetCacheDirectory getCacheDirectory = this.getCacheDirectory;
        Intrinsics.checkNotNull(filesDir);
        File fileInvoke = getCacheDirectory.invoke(filesDir, dirName);
        fileInvoke.mkdirs();
        return fileInvoke;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File webviewCacheDir_delegate$lambda$1(AndroidCacheRepository androidCacheRepository) {
        return androidCacheRepository.initCacheDir(UnityAdsConstants.DefaultUrls.CACHE_WEBVIEW_DIR_NAME);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object clearCache(Continuation<? super Unit> continuation) {
        Object objWithContext = BuildersKt.withContext(this.scope.getCoroutineContext(), new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object doesFileExist(String str, Continuation<? super Boolean> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objRetrieveFile = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objRetrieveFile);
            anonymousClass1.label = 1;
            objRetrieveFile = retrieveFile(str, anonymousClass1);
            if (objRetrieveFile == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objRetrieveFile);
        }
        return Boxing.boxBoolean(objRetrieveFile instanceof CacheResult.Success);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object getCacheSize(Continuation<? super Long> continuation) {
        return BuildersKt.withContext(this.scope.getCoroutineContext(), new C40032(null), continuation);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object getFile(String str, JSONArray jSONArray, int i, int i2, Function3<? super Long, ? super Long, ? super Continuation<? super Unit>, ? extends Object> function3, Continuation<? super CacheResult> continuation) {
        return getFileInternal(getCacheDir(), str, jSONArray, i, i2, function3, continuation);
    }

    public final String getFilename(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return this.getAssetFileName.invoke(url);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object getWebviewFile(String str, String str2, boolean z, Continuation<? super CacheResult> continuation) {
        File fileInvoke = this.createFile.invoke(getWebviewCacheDir(), str2);
        fileInvoke.mkdirs();
        return z ? getFileFromRemote(fileInvoke, str, continuation) : getFileInternal$default(this, fileInvoke, str, null, 0, 0, null, continuation, 48, null);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object getWebviewFileFromDisk(String str, String str2, Continuation<? super CacheResult> continuation) {
        return CacheDataSource.DefaultImpls.getFile$default(this.localCacheDataSource, this.createFile.invoke(getWebviewCacheDir(), str2), getFilename(str), str, Boxing.boxInt(0), 0, null, continuation, 48, null);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public boolean removeFile(CachedFile cachedFile) {
        Intrinsics.checkNotNullParameter(cachedFile, "cachedFile");
        File file = cachedFile.getFile();
        if (file == null) {
            return false;
        }
        if (!file.exists()) {
            file = null;
        }
        if (file != null) {
            return file.delete();
        }
        return false;
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public Object retrieveFile(String str, Continuation<? super CacheResult> continuation) {
        return CacheDataSource.DefaultImpls.getFile$default(this.localCacheDataSource, getCacheDir(), str, null, null, 0, null, continuation, 60, null);
    }
}
