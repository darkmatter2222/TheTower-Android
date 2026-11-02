package kotlin;

import android.os.SystemClock;
import com.google.gson.JsonObject;
import java.util.HashSet;
import java.util.LinkedHashMap;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import p005kotlin.collections.ArrayDeque;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.coroutines.Continuation;
import p005kotlin.coroutines.intrinsics.IntrinsicsKt;
import p005kotlin.coroutines.jvm.internal.Boxing;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class b53 {
    public final tx a;
    public final Mutex b;
    public final LinkedHashMap c;
    public final LinkedHashMap d;
    public final HashSet e;

    public b53(tx clock) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.a = clock;
        this.b = MutexKt.Mutex$default(false, 1, null);
        this.c = new LinkedHashMap();
        this.d = new LinkedHashMap();
        this.e = new HashSet();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object a(b53 b53Var, JsonObject jsonObject, String str, j53 j53Var, Continuation continuation) {
        a53 a53Var;
        String strA;
        Mutex mutex;
        if (continuation instanceof a53) {
            a53Var = (a53) continuation;
            int i = a53Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                a53Var.g = i - Integer.MIN_VALUE;
            } else {
                a53Var = new a53(b53Var, continuation);
            }
        } else {
            a53Var = new a53(b53Var, continuation);
        }
        Object obj = a53Var.e;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = a53Var.g;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            b53Var.getClass();
            strA = a(j53Var, str);
            if (strA == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            mutex = b53Var.b;
            a53Var.a = b53Var;
            a53Var.b = jsonObject;
            a53Var.c = strA;
            a53Var.d = mutex;
            a53Var.g = 1;
            if (mutex.lock(null, a53Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = a53Var.d;
            String str2 = a53Var.c;
            JsonObject jsonObject2 = a53Var.b;
            b53 b53Var2 = a53Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            b53Var = b53Var2;
            strA = str2;
            jsonObject = jsonObject2;
        }
        try {
            hr3 hr3VarA = gr3.a(jsonObject);
            if (hr3VarA == null) {
                b53Var.d.remove(strA);
            } else {
                b53Var.d.put(strA, hr3VarA);
                p005kotlin.Unit unit = p005kotlin.Unit.INSTANCE;
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object a(b53 b53Var, String str, j53 j53Var, Continuation continuation) {
        v43 v43Var;
        String strA;
        Mutex mutex;
        zr0 zr0Var;
        if (continuation instanceof v43) {
            v43Var = (v43) continuation;
            int i = v43Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                v43Var.f = i - Integer.MIN_VALUE;
            } else {
                v43Var = new v43(b53Var, continuation);
            }
        } else {
            v43Var = new v43(b53Var, continuation);
        }
        Object obj = v43Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = v43Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            b53Var.getClass();
            strA = a(j53Var, str);
            if (strA == null) {
                return zr0.INVALID;
            }
            mutex = b53Var.b;
            v43Var.a = b53Var;
            v43Var.b = strA;
            v43Var.c = mutex;
            v43Var.f = 1;
            if (mutex.lock(null, v43Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = v43Var.c;
            strA = v43Var.b;
            b53 b53Var2 = v43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            b53Var = b53Var2;
        }
        try {
            hr3 hr3Var = (hr3) b53Var.d.get(strA);
            if (hr3Var == null || (zr0Var = hr3Var.e) == null) {
                zr0Var = zr0.INVALID;
            }
            return zr0Var;
        } finally {
            mutex.unlock(null);
        }
    }

    public static String a(j53 j53Var, String str) {
        if (str == null || str.length() == 0 || j53Var == null) {
            return null;
        }
        return j53Var + "#" + str;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object b(b53 b53Var, String str, j53 j53Var, Continuation continuation) {
        w43 w43Var;
        String strA;
        Mutex mutex;
        if (continuation instanceof w43) {
            w43Var = (w43) continuation;
            int i = w43Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                w43Var.f = i - Integer.MIN_VALUE;
            } else {
                w43Var = new w43(b53Var, continuation);
            }
        } else {
            w43Var = new w43(b53Var, continuation);
        }
        Object obj = w43Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = w43Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            b53Var.getClass();
            strA = a(j53Var, str);
            if (strA == null) {
                return Boxing.boxBoolean(false);
            }
            mutex = b53Var.b;
            w43Var.a = b53Var;
            w43Var.b = strA;
            w43Var.c = mutex;
            w43Var.f = 1;
            if (mutex.lock(null, w43Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = w43Var.c;
            strA = w43Var.b;
            b53 b53Var2 = w43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            b53Var = b53Var2;
        }
        try {
            return Boxing.boxBoolean(b53Var.d.containsKey(strA));
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static /* synthetic */ Object c(b53 b53Var, String str, j53 j53Var, Continuation continuation) {
        x43 x43Var;
        String strA;
        b53 b53Var2;
        Mutex mutex;
        if (continuation instanceof x43) {
            x43Var = (x43) continuation;
            int i = x43Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                x43Var.f = i - Integer.MIN_VALUE;
            } else {
                x43Var = new x43(b53Var, continuation);
            }
        } else {
            x43Var = new x43(b53Var, continuation);
        }
        Object obj = x43Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = x43Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            b53Var.getClass();
            strA = a(j53Var, str);
            if (strA == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            Mutex mutex2 = b53Var.b;
            x43Var.a = b53Var;
            x43Var.b = strA;
            x43Var.c = mutex2;
            x43Var.f = 1;
            if (mutex2.lock(null, x43Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
            b53Var2 = b53Var;
            mutex = mutex2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutex = x43Var.c;
            strA = x43Var.b;
            b53Var2 = x43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
        }
        try {
            b53Var2.c.remove(strA);
            b53Var2.e.remove(strA);
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object d(b53 b53Var, String str, j53 j53Var, Continuation continuation) {
        y43 y43Var;
        String strA;
        Mutex mutex;
        Integer num;
        if (continuation instanceof y43) {
            y43Var = (y43) continuation;
            int i = y43Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                y43Var.f = i - Integer.MIN_VALUE;
            } else {
                y43Var = new y43(b53Var, continuation);
            }
        } else {
            y43Var = new y43(b53Var, continuation);
        }
        Object obj = y43Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = y43Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            b53Var.getClass();
            strA = a(j53Var, str);
            if (strA == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            mutex = b53Var.b;
            y43Var.a = b53Var;
            y43Var.b = strA;
            y43Var.c = mutex;
            y43Var.f = 1;
            if (mutex.lock(null, y43Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = y43Var.c;
            strA = y43Var.b;
            b53 b53Var2 = y43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            b53Var = b53Var2;
        }
        try {
            hr3 hr3Var = (hr3) b53Var.d.get(strA);
            if (hr3Var == null) {
                return p005kotlin.Unit.INSTANCE;
            }
            Intrinsics.checkNotNull(hr3Var);
            int iIntValue = (!b53Var.e.contains(strA) || (num = hr3Var.b) == null) ? hr3Var.a : num.intValue();
            if (iIntValue < 0) {
                iIntValue = 0;
            }
            if (iIntValue <= 0) {
                return p005kotlin.Unit.INSTANCE;
            }
            LinkedHashMap linkedHashMap = b53Var.c;
            Object arrayDeque = linkedHashMap.get(strA);
            if (arrayDeque == null) {
                arrayDeque = new ArrayDeque();
                linkedHashMap.put(strA, arrayDeque);
            }
            ArrayDeque arrayDeque2 = (ArrayDeque) arrayDeque;
            b53Var.a.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            arrayDeque2.add(Boxing.boxLong(jElapsedRealtime));
            long jM4378getInWholeMillisecondsimpl = jElapsedRealtime - Duration.m4378getInWholeMillisecondsimpl(hr3Var.c);
            while (!arrayDeque2.isEmpty() && (arrayDeque2.size() > iIntValue || ((Number) arrayDeque2.first()).longValue() < jM4378getInWholeMillisecondsimpl)) {
                CollectionsKt.removeFirst(arrayDeque2);
            }
            return p005kotlin.Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object e(b53 b53Var, String str, j53 j53Var, Continuation continuation) {
        z43 z43Var;
        String strA;
        Mutex mutex;
        Integer num;
        if (continuation instanceof z43) {
            z43Var = (z43) continuation;
            int i = z43Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                z43Var.f = i - Integer.MIN_VALUE;
            } else {
                z43Var = new z43(b53Var, continuation);
            }
        } else {
            z43Var = new z43(b53Var, continuation);
        }
        Object obj = z43Var.d;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = z43Var.f;
        if (i2 == 0) {
            p005kotlin.ResultKt.throwOnFailure(obj);
            b53Var.getClass();
            strA = a(j53Var, str);
            if (strA == null) {
                return Duration.m4365boximpl(Duration.INSTANCE.m4458getZEROUwyO8pc());
            }
            mutex = b53Var.b;
            z43Var.a = b53Var;
            z43Var.b = strA;
            z43Var.c = mutex;
            z43Var.f = 1;
            if (mutex.lock(null, z43Var) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = z43Var.c;
            strA = z43Var.b;
            b53 b53Var2 = z43Var.a;
            p005kotlin.ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            b53Var = b53Var2;
        }
        try {
            ArrayDeque arrayDeque = (ArrayDeque) b53Var.c.get(strA);
            if (arrayDeque != null && !arrayDeque.isEmpty()) {
                hr3 hr3Var = (hr3) b53Var.d.get(strA);
                if (hr3Var == null) {
                    return Duration.m4365boximpl(Duration.INSTANCE.m4458getZEROUwyO8pc());
                }
                Intrinsics.checkNotNull(hr3Var);
                int iIntValue = (!b53Var.e.contains(strA) || (num = hr3Var.b) == null) ? hr3Var.a : num.intValue();
                if (iIntValue < 0) {
                    iIntValue = 0;
                }
                b53Var.a.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime() - Duration.m4378getInWholeMillisecondsimpl(hr3Var.c);
                while (!arrayDeque.isEmpty() && (arrayDeque.size() > iIntValue || ((Number) arrayDeque.first()).longValue() < jElapsedRealtime)) {
                    CollectionsKt.removeFirst(arrayDeque);
                }
                if (iIntValue <= 0 || arrayDeque.size() < iIntValue) {
                    return Duration.m4365boximpl(Duration.INSTANCE.m4458getZEROUwyO8pc());
                }
                b53Var.e.add(strA);
                return Duration.m4365boximpl(hr3Var.d);
            }
            return Duration.m4365boximpl(Duration.INSTANCE.m4458getZEROUwyO8pc());
        } finally {
            mutex.unlock(null);
        }
    }

    public final Object a(j53 j53Var, String str, xa2 xa2Var) {
        return b(this, str, j53Var, xa2Var);
    }

    public final Object b(j53 j53Var, String str, xa2 xa2Var) {
        return e(this, str, j53Var, xa2Var);
    }
}
