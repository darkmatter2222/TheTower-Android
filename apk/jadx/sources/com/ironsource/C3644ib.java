package com.ironsource;

import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;
import p005kotlin.text.Regex;
import p005kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.ironsource.ib, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3644ib {
    private final String a;
    private final int b;

    public C3644ib(String str, int i) {
        this.a = str;
        this.b = i;
    }

    private final String a(StackTraceElement[] stackTraceElementArr, int i) {
        List listEmptyList;
        List listEmptyList2;
        if (stackTraceElementArr.length <= i) {
            return "";
        }
        String className = stackTraceElementArr[i].getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
        List<String> listSplit = new Regex("\\.").split(className, 0);
        if (!listSplit.isEmpty()) {
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listEmptyList = CollectionsKt.emptyList();
                    break;
                }
                if (listIterator.previous().length() != 0) {
                    listEmptyList = CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
        } else {
            listEmptyList = CollectionsKt.emptyList();
            break;
        }
        String[] strArr = (String[]) listEmptyList.toArray(new String[0]);
        String str = strArr[strArr.length - 1];
        if (!StringsKt.contains$default((CharSequence) str, (CharSequence) "$", false, 2, (Object) null)) {
            return str;
        }
        List<String> listSplit2 = new Regex("\\$").split(str, 0);
        if (listSplit2.isEmpty()) {
            listEmptyList2 = CollectionsKt.emptyList();
        } else {
            ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
            while (listIterator2.hasPrevious()) {
                if (listIterator2.previous().length() != 0) {
                    listEmptyList2 = CollectionsKt.take(listSplit2, listIterator2.nextIndex() + 1);
                }
            }
            listEmptyList2 = CollectionsKt.emptyList();
        }
        return ((String[]) listEmptyList2.toArray(new String[0]))[0];
    }

    private final String b() {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Intrinsics.checkNotNull(stackTrace);
        String strA = a(stackTrace, 4);
        String strB = b(stackTrace, 4);
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%s %s", Arrays.copyOf(new Object[]{strA, strB}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String b(StackTraceElement[] stackTraceElementArr, int i) {
        List listEmptyList;
        int i2;
        List listEmptyList2;
        List listEmptyList3;
        if (stackTraceElementArr.length <= i) {
            return "";
        }
        String className = stackTraceElementArr[i].getClassName();
        Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
        List<String> listSplit = new Regex("\\.").split(className, 0);
        if (!listSplit.isEmpty()) {
            ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    listEmptyList = CollectionsKt.emptyList();
                    break;
                }
                if (listIterator.previous().length() != 0) {
                    listEmptyList = CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                    break;
                }
            }
        } else {
            listEmptyList = CollectionsKt.emptyList();
            break;
        }
        String[] strArr = (String[]) listEmptyList.toArray(new String[0]);
        String str = strArr[strArr.length - 1];
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) "$", false, 2, (Object) null)) {
            List<String> listSplit2 = new Regex("\\$").split(str, 0);
            if (listSplit2.isEmpty()) {
                listEmptyList3 = CollectionsKt.emptyList();
            } else {
                ListIterator<String> listIterator2 = listSplit2.listIterator(listSplit2.size());
                while (listIterator2.hasPrevious()) {
                    if (listIterator2.previous().length() != 0) {
                        listEmptyList3 = CollectionsKt.take(listSplit2, listIterator2.nextIndex() + 1);
                    }
                }
                listEmptyList3 = CollectionsKt.emptyList();
            }
            return ((String[]) listEmptyList3.toArray(new String[0]))[1] + "." + stackTraceElementArr[i].getMethodName();
        }
        String methodName = stackTraceElementArr[i].getMethodName();
        Intrinsics.checkNotNullExpressionValue(methodName, "getMethodName(...)");
        if (!StringsKt.contains$default((CharSequence) methodName, (CharSequence) "$", false, 2, (Object) null) || stackTraceElementArr.length <= (i2 = i + 1)) {
            String methodName2 = stackTraceElementArr[i].getMethodName();
            Intrinsics.checkNotNullExpressionValue(methodName2, "getMethodName(...)");
            return methodName2;
        }
        String className2 = stackTraceElementArr[i2].getClassName();
        Intrinsics.checkNotNullExpressionValue(className2, "getClassName(...)");
        List<String> listSplit3 = new Regex("\\$").split(className2, 0);
        if (!listSplit3.isEmpty()) {
            ListIterator<String> listIterator3 = listSplit3.listIterator(listSplit3.size());
            while (true) {
                if (!listIterator3.hasPrevious()) {
                    listEmptyList2 = CollectionsKt.emptyList();
                    break;
                }
                if (listIterator3.previous().length() != 0) {
                    listEmptyList2 = CollectionsKt.take(listSplit3, listIterator3.nextIndex() + 1);
                    break;
                }
            }
        } else {
            listEmptyList2 = CollectionsKt.emptyList();
            break;
        }
        String[] strArr2 = (String[]) listEmptyList2.toArray(new String[0]);
        if (strArr2.length > 1) {
            return strArr2[1] + "." + stackTraceElementArr[i2].getMethodName();
        }
        String methodName3 = stackTraceElementArr[i2].getMethodName();
        Intrinsics.checkNotNull(methodName3);
        return methodName3;
    }

    public final int a() {
        return this.b;
    }

    public final String c() {
        String str = this.a;
        if (str == null || str.length() == 0) {
            return b();
        }
        return b() + " - " + this.a;
    }
}
