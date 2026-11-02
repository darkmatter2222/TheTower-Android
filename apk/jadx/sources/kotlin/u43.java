package kotlin;

import android.os.SystemClock;
import com.ironsource.C3510b4;
import java.util.LinkedHashMap;
import java.util.Locale;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.ArrayDeque;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Regex;
import p005kotlin.time.Duration;
import p005kotlin.time.DurationKt;
import p005kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public final class u43 {
    public final ex0 a;
    public final tx b;
    public final Mutex c;
    public final LinkedHashMap d;

    public u43(ex0 flags, tx clock) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = flags;
        this.b = clock;
        this.c = MutexKt.Mutex$default(false, 1, null);
        this.d = new LinkedHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(u43 u43Var, String str, Continuation continuation) {
        r43 r43Var;
        Mutex mutex;
        if (continuation instanceof r43) {
            r43Var = (r43) continuation;
            int i = r43Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                r43Var.f = i - Integer.MIN_VALUE;
            } else {
                r43Var = new r43(u43Var, continuation);
            }
        } else {
            r43Var = new r43(u43Var, continuation);
        }
        Object obj = r43Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = r43Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = u43Var.c;
            r43Var.a = u43Var;
            r43Var.b = str;
            r43Var.c = mutex;
            r43Var.f = 1;
            if (mutex.lock(null, r43Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = r43Var.c;
            str = r43Var.b;
            u43 u43Var2 = r43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            u43Var = u43Var2;
        }
        if (str != null) {
            try {
                Regex regex = new Regex(u43Var.a.d());
                String lowerCase = str.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (regex.matches(lowerCase)) {
                    ArrayDeque arrayDeque = (ArrayDeque) u43Var.d.get(str);
                    if (arrayDeque == null) {
                        arrayDeque = new ArrayDeque();
                    } else {
                        Intrinsics.checkNotNull(arrayDeque);
                    }
                    u43Var.b.getClass();
                    arrayDeque.add(Boxing.boxLong(SystemClock.elapsedRealtime()));
                    while (!arrayDeque.isEmpty()) {
                        u43Var.b.getClass();
                        long jElapsedRealtime = SystemClock.elapsedRealtime() - ((Number) arrayDeque.first()).longValue();
                        ex0 ex0Var = u43Var.a;
                        ex0Var.getClass();
                        Duration.Companion companion = Duration.INSTANCE;
                        long duration = DurationKt.toDuration(3000, DurationUnit.MILLISECONDS);
                        Intrinsics.checkNotNullParameter("gads:request_throttler_window_ms", C3510b4.i.W);
                        if (jElapsedRealtime <= Duration.m4378getInWholeMillisecondsimpl(((Duration) ex0Var.a("gads:request_throttler_window_ms", Duration.m4365boximpl(duration), yr.j)).getRawValue())) {
                            break;
                        }
                        CollectionsKt.removeFirst(arrayDeque);
                    }
                    int size = arrayDeque.size();
                    ex0 ex0Var2 = u43Var.a;
                    ex0Var2.getClass();
                    Intrinsics.checkNotNullParameter("gads:request_throttler:max_failed_queries", C3510b4.i.W);
                    if (size > ((Number) ex0Var2.a("gads:request_throttler:max_failed_queries", 3, yr.f)).intValue()) {
                        CollectionsKt.removeFirst(arrayDeque);
                    }
                    u43Var.d.put(str, arrayDeque);
                    return p005kotlin.Unit.INSTANCE;
                }
            } finally {
                mutex.unlock(null);
            }
        }
        return p005kotlin.Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object b(u43 u43Var, String str, Continuation continuation) {
        s43 s43Var;
        u43 u43Var2;
        Mutex mutex;
        if (continuation instanceof s43) {
            s43Var = (s43) continuation;
            int i = s43Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                s43Var.f = i - Integer.MIN_VALUE;
            } else {
                s43Var = new s43(u43Var, continuation);
            }
        } else {
            s43Var = new s43(u43Var, continuation);
        }
        Object obj = s43Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = s43Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            Mutex mutex2 = u43Var.c;
            s43Var.a = u43Var;
            s43Var.b = str;
            s43Var.c = mutex2;
            s43Var.f = 1;
            if (mutex2.lock(null, s43Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            u43Var2 = u43Var;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = s43Var.c;
            str = s43Var.b;
            u43Var2 = s43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            if (str == null) {
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
                mutex.unlock(null);
                return unit;
            }
            mutex.unlock(null);
            return p005kotlin.Unit.INSTANCE;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static Object c(u43 u43Var, String str, Continuation continuation) {
        t43 t43Var;
        Mutex mutex;
        if (continuation instanceof t43) {
            t43Var = (t43) continuation;
            int i = t43Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                t43Var.f = i - Integer.MIN_VALUE;
            } else {
                t43Var = new t43(u43Var, continuation);
            }
        } else {
            t43Var = new t43(u43Var, continuation);
        }
        Object obj = t43Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = t43Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = u43Var.c;
            t43Var.a = u43Var;
            t43Var.b = str;
            t43Var.c = mutex;
            t43Var.f = 1;
            if (mutex.lock(null, t43Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = t43Var.c;
            str = t43Var.b;
            u43 u43Var2 = t43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            u43Var = u43Var2;
        }
        if (str != null) {
            try {
                Regex regex = new Regex(u43Var.a.d());
                String lowerCase = str.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (regex.matches(lowerCase)) {
                    ArrayDeque arrayDeque = (ArrayDeque) u43Var.d.get(str);
                    if (arrayDeque != null && !arrayDeque.isEmpty()) {
                        int size = arrayDeque.size();
                        ex0 ex0Var = u43Var.a;
                        ex0Var.getClass();
                        Intrinsics.checkNotNullParameter("gads:request_throttler:max_failed_queries", C3510b4.i.W);
                        if (size >= ((Number) ex0Var.a("gads:request_throttler:max_failed_queries", 3, yr.f)).intValue()) {
                            ex0 ex0Var2 = u43Var.a;
                            ex0Var2.getClass();
                            Duration.Companion companion = Duration.INSTANCE;
                            long duration = DurationKt.toDuration(5000, DurationUnit.MILLISECONDS);
                            Intrinsics.checkNotNullParameter("gads:request_throttler_timeout_ms", C3510b4.i.W);
                            long jM4378getInWholeMillisecondsimpl = Duration.m4378getInWholeMillisecondsimpl(((Duration) ex0Var2.a("gads:request_throttler_timeout_ms", Duration.m4365boximpl(duration), yr.j)).getRawValue());
                            u43Var.b.getClass();
                            if (jM4378getInWholeMillisecondsimpl > SystemClock.elapsedRealtime() - ((Number) arrayDeque.last()).longValue()) {
                                return Boxing.boxBoolean(true);
                            }
                        }
                        return Boxing.boxBoolean(false);
                    }
                    return Boxing.boxBoolean(false);
                }
            } finally {
                mutex.unlock(null);
            }
        }
        return Boxing.boxBoolean(false);
    }

    public final Object a(String str, xa2 xa2Var) {
        return c(this, str, xa2Var);
    }
}
