package com.ironsource;

import android.content.Context;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.io.InputStream;
import java.util.List;
import p005kotlin.Unit;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.io.ByteStreamsKt;
import p005kotlin.io.CloseableKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.Charsets;
import p005kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.ironsource.i4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3637i4 {
    private static final String b = "iads/";
    private static final String c = "CONTROLLER_FROM_BUNDLE";
    private static final String d = "controllerVersion";
    private static final String e = "controller_html_loaded_from_bundle";
    private static volatile boolean g;
    public static final C3637i4 a = new C3637i4();
    private static final List<String> f = CollectionsKt.listOf((Object[]) new String[]{C3510b4.f, C3510b4.g, "mobileController.min.css", "index.html", "index.css", "index.js"});

    private C3637i4() {
    }

    @JvmStatic
    public static final String a(Context context) {
        if (context != null) {
            try {
                byte[] bArrA = a(context, d);
                String string = bArrA != null ? StringsKt.trim((CharSequence) new String(bArrA, Charsets.UTF_8)).toString() : null;
                if (string != null) {
                    IronLog.INTERNAL.verbose("CONTROLLER_FROM_BUNDLE loaded controller version from file: " + string);
                    return string;
                }
                IronLog.INTERNAL.error("CONTROLLER_FROM_BUNDLE failed to load controller version from file");
            } catch (Exception e2) {
                IronLog.INTERNAL.error("CONTROLLER_FROM_BUNDLE exception while loading version from file: " + e2.getMessage());
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static final List<String> a() {
        return f;
    }

    @JvmStatic
    public static final void a(Context context, boolean z) {
        IronLog.INTERNAL.verbose("CONTROLLER_FROM_BUNDLE controller html was loaded from bundle, setting in html params");
        g = z;
        if (context != null) {
            IronSourceUtils.b(context, e, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v7, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    @JvmStatic
    public static final byte[] a(Context context, String fileName) {
        Throwable th;
        ?? bytes = b;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        ?? r1 = 0;
        ?? r2 = 0;
        if (context != null) {
            try {
                try {
                    InputStream inputStreamOpen = context.getAssets().open(b + fileName);
                    try {
                        Intrinsics.checkNotNull(inputStreamOpen);
                        bytes = ByteStreamsKt.readBytes(inputStreamOpen);
                        try {
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(inputStreamOpen, null);
                            return bytes;
                        } catch (Throwable th2) {
                            th = th2;
                            try {
                                throw th;
                            } catch (Throwable th3) {
                                CloseableKt.closeFinally(inputStreamOpen, th);
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        bytes = 0;
                    }
                } catch (Exception e2) {
                    e = e2;
                    IronLog.INTERNAL.error("CONTROLLER_FROM_BUNDLE failed to load from bundle controller file: iads/" + fileName);
                    e.printStackTrace();
                    r1 = r2;
                    return r1;
                }
            } catch (Exception e3) {
                e = e3;
                r2 = bytes;
                IronLog.INTERNAL.error("CONTROLLER_FROM_BUNDLE failed to load from bundle controller file: iads/" + fileName);
                e.printStackTrace();
                r1 = r2;
                return r1;
            }
        }
        return r1;
    }

    @JvmStatic
    public static /* synthetic */ void b() {
    }

    @JvmStatic
    public static final boolean b(Context context) {
        if (context != null) {
            g = IronSourceUtils.a(context, e, false);
        }
        return g;
    }
}
