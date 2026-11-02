package com.google.firebase.firestore.util;

import android.util.Log;
import com.google.firebase.firestore.BuildConfig;
import com.google.protobuf.MessageLite;

/* JADX INFO: loaded from: classes4.dex */
public class Logger {
    private static Level logLevel = Level.WARN;

    /* JADX INFO: renamed from: com.google.firebase.firestore.util.Logger$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$firebase$firestore$util$Logger$Level;

        static {
            int[] iArr = new int[Level.values().length];
            $SwitchMap$com$google$firebase$firestore$util$Logger$Level = iArr;
            try {
                iArr[Level.DEBUG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$util$Logger$Level[Level.WARN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$firebase$firestore$util$Logger$Level[Level.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum Level {
        DEBUG,
        WARN,
        NONE
    }

    public static void debug(String str, String str2, Object... objArr) {
        doLog(Level.DEBUG, str, str2, objArr);
    }

    private static void doLog(Level level, String str, String str2, Object... objArr) {
        if (level.ordinal() >= logLevel.ordinal()) {
            String str3 = String.format("(%s) [%s]: ", BuildConfig.VERSION_NAME, str);
            if (objArr.length > 0) {
                for (int i = 0; i < objArr.length; i++) {
                    Object obj = objArr[i];
                    if (obj != null) {
                        if (obj instanceof MessageLite) {
                            int serializedSize = ((MessageLite) obj).getSerializedSize();
                            if (serializedSize > 131072) {
                                objArr[i] = String.format("<%s truncated for logging (Size: %s)>", obj.getClass().getSimpleName(), serializedSize >= 1048576 ? String.format("%.2f MB", Double.valueOf(((double) serializedSize) / 1048576.0d)) : String.format("%.1f KB", Double.valueOf(((double) serializedSize) / 1024.0d)));
                            }
                        } else if (obj instanceof String) {
                            String str4 = (String) obj;
                            if (str4.length() > 4096) {
                                objArr[i] = str4.substring(0, 4096) + "... <String truncated>";
                            }
                        }
                    }
                }
            }
            if (objArr.length > 0) {
                str2 = String.format(str2, objArr);
            }
            String str5 = str3 + str2;
            int i2 = AnonymousClass1.$SwitchMap$com$google$firebase$firestore$util$Logger$Level[level.ordinal()];
            if (i2 == 1) {
                Log.i("Firestore", str5);
            } else if (i2 == 2) {
                Log.w("Firestore", str5);
            } else if (i2 == 3) {
                throw new IllegalStateException("Trying to log something on level NONE");
            }
        }
    }

    public static boolean isDebugEnabled() {
        return logLevel.ordinal() >= Level.DEBUG.ordinal();
    }

    public static void setLogLevel(Level level) {
        logLevel = level;
    }

    public static void warn(String str, String str2, Object... objArr) {
        doLog(Level.WARN, str, str2, objArr);
    }
}
