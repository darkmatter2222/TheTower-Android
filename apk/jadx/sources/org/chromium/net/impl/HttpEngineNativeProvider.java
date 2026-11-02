package org.chromium.net.impl;

import android.content.Context;
import android.net.http.HttpEngine;
import android.os.Build;
import android.os.ext.SdkExtensions;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetProvider;
import org.chromium.net.ExperimentalCronetEngine;

/* JADX INFO: loaded from: classes5.dex */
public class HttpEngineNativeProvider extends CronetProvider {
    static final int EXT_API_LEVEL = 31;
    static final int EXT_VERSION = 7;
    public static final String PROVIDER_NAME_HTTPENGINE_NATIVE = "HttpEngine-Native-Provider";

    public HttpEngineNativeProvider(Context context) {
        super(context);
    }

    static boolean isHttpEngineAvailable() {
        return Build.VERSION.SDK_INT >= 30 && SdkExtensions.getExtensionVersion(31) >= 7;
    }

    @Override // org.chromium.net.CronetProvider
    public CronetEngine.Builder createBuilder() {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("HttpEngineNativeProvider#createBuilder");
        try {
            ExperimentalCronetEngine.Builder builder = new ExperimentalCronetEngine.Builder(new AndroidHttpEngineBuilderWrapper(new HttpEngine.Builder(this.mContext)));
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
            return builder;
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // org.chromium.net.CronetProvider
    public String getName() {
        return PROVIDER_NAME_HTTPENGINE_NATIVE;
    }

    @Override // org.chromium.net.CronetProvider
    public String getVersion() {
        return HttpEngine.getVersionString();
    }

    @Override // org.chromium.net.CronetProvider
    public boolean isEnabled() {
        return isHttpEngineAvailable();
    }
}
