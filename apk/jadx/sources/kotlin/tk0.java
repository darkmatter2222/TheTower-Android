package kotlin;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.google.gson.JsonObject;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import p005kotlin.coroutines.EmptyCoroutineContext;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tk0 implements nr3 {
    public final CoroutineScope a;
    public final ok0 b;
    public final ex0 c;
    public final String d;
    public final String e;
    public final JsonObject f;
    public final ks3 g;
    public PointF h;
    public PointF i;
    public qk0 j;
    public final int k;
    public Job l;

    public tk0(Context context, CoroutineScope backgroundScope, ok0 debugDialogManager, ex0 flags, String str, String str2, JsonObject jsonObject, ks3 traceMetaSet) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(backgroundScope, "backgroundScope");
        Intrinsics.checkNotNullParameter(debugDialogManager, "debugDialogManager");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(traceMetaSet, "traceMetaSet");
        this.a = backgroundScope;
        this.b = debugDialogManager;
        this.c = flags;
        this.d = str;
        this.e = str2;
        this.f = jsonObject;
        this.g = traceMetaSet;
        this.h = new PointF(-1.0f, -1.0f);
        this.i = new PointF(-1.0f, -1.0f);
        this.j = qk0.NOT_DEBUG_GESTURE;
        this.k = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0084, code lost:
    
        if (kotlin.ok0.a(r1, r2, r3, r4, r5, r6) == r0) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(kotlin.tk0 r7, p005kotlin.coroutines.Continuation r8) {
        /*
            r7.getClass()
            boolean r0 = r8 instanceof kotlin.sk0
            if (r0 == 0) goto L16
            r0 = r8
            ads_mobile_sdk.sk0 r0 = (kotlin.sk0) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.d = r1
            goto L1b
        L16:
            ads_mobile_sdk.sk0 r0 = new ads_mobile_sdk.sk0
            r0.<init>(r7, r8)
        L1b:
            r6 = r0
            java.lang.Object r8 = r6.b
            java.lang.Object r0 = p005kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.d
            r2 = 1
            r3 = 2
            if (r1 == 0) goto L3e
            if (r1 == r2) goto L38
            if (r1 != r3) goto L30
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L87
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            ads_mobile_sdk.tk0 r7 = r6.a
            p005kotlin.ResultKt.throwOnFailure(r8)
            goto L69
        L3e:
            p005kotlin.ResultKt.throwOnFailure(r8)
            ads_mobile_sdk.ex0 r8 = r7.c
            r8.getClass()
            kotlin.time.Duration$Companion r1 = p005kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r1 = p005kotlin.time.DurationUnit.SECONDS
            java.lang.String r4 = "key"
            java.lang.String r5 = "gads:debug_hold_gesture:time_millis"
            kotlin.time.Duration r1 = kotlin.wm2.a(r3, r1, r5, r4)
            ads_mobile_sdk.sr r4 = kotlin.yr.j
            java.lang.Object r8 = r8.a(r5, r1, r4)
            kotlin.time.Duration r8 = (p005kotlin.time.Duration) r8
            long r4 = r8.getRawValue()
            r6.a = r7
            r6.d = r2
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.m4512delayVtjQ1oo(r4, r6)
            if (r8 != r0) goto L69
            goto L86
        L69:
            ads_mobile_sdk.qk0 r8 = kotlin.qk0.COMPLETE
            r7.j = r8
            ads_mobile_sdk.ok0 r1 = r7.b
            java.lang.String r2 = r7.d
            r8 = r3
            java.lang.String r3 = r7.e
            com.google.gson.JsonObject r4 = r7.f
            ads_mobile_sdk.ks3 r5 = r7.g
            r7 = 0
            r6.a = r7
            r6.d = r8
            r1.getClass()
            java.lang.Object r7 = kotlin.ok0.a(r1, r2, r3, r4, r5, r6)
            if (r7 != r0) goto L87
        L86:
            return r0
        L87:
            kotlin.Unit r7 = p005kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.tk0.a(ads_mobile_sdk.tk0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void a(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int actionMasked = event.getActionMasked();
        int historySize = event.getHistorySize();
        int pointerCount = event.getPointerCount();
        if (actionMasked == 0) {
            this.j = qk0.START;
            this.h = new PointF(event.getX(), event.getY());
            return;
        }
        qk0 qk0Var = this.j;
        if (qk0Var == qk0.NOT_DEBUG_GESTURE) {
            return;
        }
        if (qk0Var == qk0.START && actionMasked == 5) {
            this.j = qk0.HOLDING;
            this.i = new PointF(event.getX(1), event.getY(1));
            CoroutineScope coroutineScope = this.a;
            rk0 block = new rk0(this, null);
            EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;
            Intrinsics.checkNotNullParameter(coroutineScope, "<this>");
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(block, "block");
            this.l = BuildersKt__Builders_commonKt.launch$default(coroutineScope, context, null, new ws3(block, null), 2, null);
            return;
        }
        if (qk0Var == qk0.HOLDING) {
            if (pointerCount == 2) {
                if (actionMasked != 2) {
                    return;
                }
                boolean z = false;
                for (int i = 0; i < historySize; i++) {
                    if (!a(event.getHistoricalX(0, i), event.getHistoricalY(0, i), event.getHistoricalX(1, i), event.getHistoricalY(1, i))) {
                        z = true;
                        break;
                    }
                }
                if (a(event.getX(), event.getY(), event.getX(1), event.getY(1)) && !z) {
                    return;
                }
            }
            Job job = this.l;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            this.j = qk0.NOT_DEBUG_GESTURE;
        }
    }

    public final boolean a(float f, float f2, float f3, float f4) {
        return Math.abs(this.h.x - f) < ((float) this.k) && Math.abs(this.h.y - f2) < ((float) this.k) && Math.abs(this.i.x - f3) < ((float) this.k) && Math.abs(this.i.y - f4) < ((float) this.k);
    }
}
