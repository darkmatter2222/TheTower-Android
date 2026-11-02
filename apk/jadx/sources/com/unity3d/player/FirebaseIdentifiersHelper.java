package com.unity3d.player;

import android.content.Context;
import com.google.android.gms.tasks.Task;
import com.unity3d.services.core.fid.Constants;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes5.dex */
class FirebaseIdentifiersHelper {
    FirebaseIdentifiersHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeOnFirebaseAppInstanceIdResult(String str);

    public static void requestFirebaseIdentifiers(Context context) {
        try {
            Class<?> cls = Class.forName(Constants.FID_CLASS);
            Method method = cls.getMethod(Constants.GET_INSTANCE, Context.class);
            if (!validateGetInstanceMethod(method, cls)) {
                nativeOnFirebaseAppInstanceIdResult(null);
                return;
            }
            Object objInvoke = method.invoke(null, context);
            if (objInvoke == null) {
                nativeOnFirebaseAppInstanceIdResult(null);
                return;
            }
            Method method2 = cls.getMethod(Constants.GET_APP_INSTANCE_ID, null);
            if (validateGetAppInstanceIdMethod(method2)) {
                ((Task) method2.invoke(objInvoke, null)).addOnCompleteListener(new C4132p());
            } else {
                nativeOnFirebaseAppInstanceIdResult(null);
            }
        } catch (Exception unused) {
            nativeOnFirebaseAppInstanceIdResult(null);
        }
    }

    private static boolean validateGetAppInstanceIdMethod(Method method) {
        Type genericReturnType;
        if (method != null && method.getParameterCount() == 0 && (genericReturnType = method.getGenericReturnType()) != null && (genericReturnType instanceof ParameterizedType)) {
            ParameterizedType parameterizedType = (ParameterizedType) genericReturnType;
            if (parameterizedType.getRawType() != Task.class) {
                return false;
            }
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if (actualTypeArguments.length == 1 && actualTypeArguments[0] == String.class) {
                return true;
            }
        }
        return false;
    }

    private static boolean validateGetInstanceMethod(Method method, Class cls) {
        return method != null && method.getReturnType() == cls;
    }
}
