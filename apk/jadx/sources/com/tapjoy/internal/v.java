package com.tapjoy.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class v {
    private static final ThreadLocal<DateFormat> a = new ThreadLocal<DateFormat>() { // from class: com.tapjoy.internal.v.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ DateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ");
        }
    };
    private static final ThreadLocal<DateFormat> b = new ThreadLocal<DateFormat>() { // from class: com.tapjoy.internal.v.2
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ DateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd HH.mm.ss");
        }
    };

    public static String a(Date date) {
        return a.get().format(date);
    }
}
