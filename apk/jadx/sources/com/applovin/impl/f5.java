package com.applovin.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class f5 {
    private static com.applovin.impl.sdk.l b;
    private static SharedPreferences c;
    private final SharedPreferences a;

    public f5(com.applovin.impl.sdk.l lVar) {
        this.a = com.applovin.impl.sdk.l.p().getSharedPreferences("com.applovin.sdk.preferences." + lVar.k0(), 0);
        b = lVar;
    }

    private static SharedPreferences a(Context context) {
        if (c == null) {
            c = context.getSharedPreferences("com.applovin.sdk.shared", 0);
        }
        return c;
    }

    public static Object a(e5 e5Var, Object obj, Context context) {
        return a(e5Var.a(), obj, e5Var.b(), a(context));
    }

    public static Object a(e5 e5Var, Object obj, SharedPreferences sharedPreferences, boolean z) {
        return a(e5Var.a(), obj, e5Var.b(), sharedPreferences, z);
    }

    public static Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences) {
        return a(str, obj, cls, sharedPreferences, true);
    }

    public static Object a(String str, Object obj, Class cls, SharedPreferences sharedPreferences, boolean z) {
        Object stringSet;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (!sharedPreferences.contains(str)) {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                return obj;
            }
            if (Boolean.class.equals(cls)) {
                stringSet = obj != null ? Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) obj).booleanValue())) : Boolean.valueOf(sharedPreferences.getBoolean(str, false));
            } else if (Float.class.equals(cls)) {
                stringSet = obj != null ? Float.valueOf(sharedPreferences.getFloat(str, ((Float) obj).floatValue())) : Float.valueOf(sharedPreferences.getFloat(str, 0.0f));
            } else if (Integer.class.equals(cls)) {
                if (obj != null) {
                    stringSet = Integer.valueOf(sharedPreferences.getInt(str, obj.getClass().equals(Long.class) ? ((Long) obj).intValue() : ((Integer) obj).intValue()));
                } else {
                    stringSet = Integer.valueOf(sharedPreferences.getInt(str, 0));
                }
            } else if (Long.class.equals(cls)) {
                if (obj != null) {
                    stringSet = Long.valueOf(sharedPreferences.getLong(str, obj.getClass().equals(Integer.class) ? ((Integer) obj).longValue() : ((Long) obj).longValue()));
                } else {
                    stringSet = Long.valueOf(sharedPreferences.getLong(str, 0L));
                }
            } else if (Double.class.equals(cls)) {
                stringSet = obj != null ? Double.valueOf(Double.longBitsToDouble(sharedPreferences.getLong(str, Double.doubleToRawLongBits(((Double) obj).doubleValue())))) : Double.valueOf(Double.longBitsToDouble(sharedPreferences.getLong(str, 0L)));
            } else if (String.class.equals(cls)) {
                stringSet = sharedPreferences.getString(str, (String) obj);
            } else {
                stringSet = Set.class.isAssignableFrom(cls) ? sharedPreferences.getStringSet(str, (Set) obj) : obj;
            }
            if (stringSet == null) {
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                return obj;
            }
            Object objCast = cls.cast(stringSet);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
            return objCast;
        } catch (Throwable th) {
            if (z) {
                try {
                    com.applovin.impl.sdk.p.c("SharedPreferencesManager", "Error getting value for key: " + str, th);
                } finally {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                }
            }
            return obj;
        }
    }

    public static void a(final SharedPreferences.Editor editor) {
        try {
            if (!u7.i()) {
                editor.commit();
                return;
            }
            com.applovin.impl.sdk.l lVar = b;
            if (lVar == null || lVar.s0() == null) {
                editor.apply();
                return;
            }
            i6 i6VarS0 = b.s0();
            com.applovin.impl.sdk.l lVar2 = b;
            Objects.requireNonNull(editor);
            i6VarS0.a((n5) new x6(lVar2, true, "commitSharedPreferencesChanges", new Runnable() { // from class: com.applovin.impl.f5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    editor.commit();
                }
            }), i6.b.OTHER);
        } catch (Throwable th) {
            com.applovin.impl.sdk.p.c("SharedPreferencesManager", "Unable to apply changes", th);
            try {
                b.E().a("SharedPreferencesManager", "persistChanges", th);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(String str, Object obj, SharedPreferences sharedPreferences, SharedPreferences.Editor editor) {
        boolean z = editor != null;
        if (!z) {
            editor = sharedPreferences.edit();
        }
        if (obj == null) {
            editor.remove(str);
        } else if (obj instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Float) {
            editor.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Integer) {
            editor.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            editor.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof Double) {
            editor.putLong(str, Double.doubleToRawLongBits(((Double) obj).doubleValue()));
        } else if (obj instanceof String) {
            editor.putString(str, (String) obj);
        } else {
            if (!(obj instanceof Set)) {
                com.applovin.impl.sdk.p.h("SharedPreferencesManager", "Unable to put default value of invalid type: " + obj);
                return;
            }
            editor.putStringSet(str, (Set) obj);
        }
        if (z) {
            return;
        }
        a(editor);
    }

    public static void b(e5 e5Var, Object obj, Context context) {
        a(e5Var.a(), obj, a(context), (SharedPreferences.Editor) null);
    }

    public Object a(e5 e5Var) {
        Object objA = a(e5Var, null);
        b(e5Var);
        return objA;
    }

    public Object a(e5 e5Var, Object obj) {
        return a(e5Var, obj, this.a);
    }

    public Object a(e5 e5Var, Object obj, SharedPreferences sharedPreferences) {
        return a(e5Var.a(), obj, e5Var.b(), sharedPreferences);
    }

    public void a(SharedPreferences sharedPreferences) {
        a(sharedPreferences.edit().clear());
    }

    public void a(String str, Object obj, SharedPreferences.Editor editor) {
        a(str, obj, (SharedPreferences) null, editor);
    }

    public void a(String str, Object obj, SharedPreferences sharedPreferences) {
        a(str, obj, sharedPreferences, (SharedPreferences.Editor) null);
    }

    public void b(e5 e5Var) {
        a(this.a.edit().remove(e5Var.a()));
    }

    public void b(e5 e5Var, Object obj) {
        b(e5Var, obj, this.a);
    }

    public void b(e5 e5Var, Object obj, SharedPreferences sharedPreferences) {
        a(e5Var.a(), obj, sharedPreferences);
    }
}
