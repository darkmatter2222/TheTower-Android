package com.google.firebase.database.connection;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ConnectionUtils {
    public static void hardAssert(boolean z) {
        hardAssert(z, "", new Object[0]);
    }

    public static void hardAssert(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new AssertionError("hardAssert failed: " + String.format(str, objArr));
        }
    }

    public static Long longFromObject(Object obj) {
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        return null;
    }

    public static String pathToString(List<String> list) {
        if (list.isEmpty()) {
            return DomExceptionUtils.SEPARATOR;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : list) {
            if (!z) {
                sb.append(DomExceptionUtils.SEPARATOR);
            }
            sb.append(str);
            z = false;
        }
        return sb.toString();
    }

    public static List<String> stringToPath(String str) {
        ArrayList arrayList = new ArrayList();
        String[] strArrSplit = str.split(DomExceptionUtils.SEPARATOR, -1);
        for (int i = 0; i < strArrSplit.length; i++) {
            if (!strArrSplit[i].isEmpty()) {
                arrayList.add(strArrSplit[i]);
            }
        }
        return arrayList;
    }
}
