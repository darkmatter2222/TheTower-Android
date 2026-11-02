package com.unity3d.ads.adplayer;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.tapjoy.TJAdUnitConstants;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.Metadata;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdTaskRemovalDetectionService.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0016J\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\u0010"}, d2 = {"Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService;", "Landroid/app/Service;", "<init>", "()V", "onStartCommand", "", "intent", "Landroid/content/Intent;", "flags", "startId", "onTaskRemoved", "", "rootIntent", "onBind", "Landroid/os/IBinder;", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdTaskRemovalDetectionService extends Service {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final AtomicBoolean taskRemovedDuringShow = new AtomicBoolean(false);

    /* JADX INFO: compiled from: AdTaskRemovalDetectionService.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/unity3d/ads/adplayer/AdTaskRemovalDetectionService$Companion;", "", "<init>", "()V", "taskRemovedDuringShow", "Ljava/util/concurrent/atomic/AtomicBoolean;", "arm", "", "markTaskRemoved", "consumeTaskRemoved", "", TJAdUnitConstants.String.VIDEO_START, "context", "Landroid/content/Context;", "stop", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void arm() {
            AdTaskRemovalDetectionService.taskRemovedDuringShow.set(false);
        }

        public final boolean consumeTaskRemoved() {
            return AdTaskRemovalDetectionService.taskRemovedDuringShow.getAndSet(false);
        }

        public final void markTaskRemoved() {
            AdTaskRemovalDetectionService.taskRemovedDuringShow.set(true);
        }

        public final void start(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                Result.Companion companion = Result.INSTANCE;
                Companion companion2 = this;
                Result.m3022constructorimpl(context.startService(new Intent(context, (Class<?>) AdTaskRemovalDetectionService.class)));
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                Result.m3022constructorimpl(ResultKt.createFailure(th));
            }
        }

        public final void stop(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            try {
                Result.Companion companion = Result.INSTANCE;
                Companion companion2 = this;
                Result.m3022constructorimpl(Boolean.valueOf(context.stopService(new Intent(context, (Class<?>) AdTaskRemovalDetectionService.class))));
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                Result.m3022constructorimpl(ResultKt.createFailure(th));
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        INSTANCE.arm();
        return 2;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent rootIntent) {
        super.onTaskRemoved(rootIntent);
        INSTANCE.markTaskRemoved();
        stopSelf();
    }
}
