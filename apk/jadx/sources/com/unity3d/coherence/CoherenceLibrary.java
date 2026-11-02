package com.unity3d.coherence;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class CoherenceLibrary {
    private static final String PREFS_NAME = "com.unity3d.coherence.prefs";
    private static volatile CoherenceLibrary instance;
    private final long apiPtr;
    private final AttributesProvider attributesProvider;
    private final CoherenceProvider coherenceProvider;
    private final IdentityProvider identityProvider;

    private CoherenceLibrary(Context context, int i) {
        long jInit = CoherenceBridge.init(new Coherence(context, context.getSharedPreferences(PREFS_NAME, 0)), context, BuildConfig.VERSION_NAME, i);
        if (jInit == 0) {
            throw new IllegalStateException("native initialization returned null (source=" + i + ")");
        }
        this.apiPtr = jInit;
        this.identityProvider = new NativeIdentityProvider(this);
        this.attributesProvider = new NativeAttributesProvider(this);
        this.coherenceProvider = new NativeCoherenceProvider(this);
        startPluginWarm(jInit);
    }

    public static CoherenceLibrary getInstance() {
        CoherenceLibrary coherenceLibrary = instance;
        if (coherenceLibrary != null) {
            return coherenceLibrary;
        }
        throw new IllegalStateException("CoherenceLibrary not initialized — call CoherenceLibrary.init(CoherenceInitConfig) first");
    }

    public static void init(CoherenceInitConfig coherenceInitConfig) {
        if (coherenceInitConfig == null) {
            throw new IllegalArgumentException("config must not be null");
        }
        if (instance == null) {
            synchronized (CoherenceLibrary.class) {
                if (instance == null) {
                    instance = new CoherenceLibrary(coherenceInitConfig.getContext(), coherenceInitConfig.getSource());
                }
            }
        }
    }

    private static void startPluginWarm(final long j) {
        try {
            Thread thread = new Thread(new Runnable() { // from class: com.unity3d.coherence.CoherenceLibrary.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        CoherenceBridge.warmPlugins(j);
                    } catch (Throwable unused) {
                    }
                }
            }, "udl-warm");
            thread.setDaemon(true);
            thread.start();
        } catch (Throwable unused) {
        }
    }

    long apiPtr() {
        return this.apiPtr;
    }

    public AttributesProvider getAttributesProvider() {
        return this.attributesProvider;
    }

    public CoherenceProvider getCoherenceProvider() {
        return this.coherenceProvider;
    }

    public IdentityProvider getIdentityProvider() {
        return this.identityProvider;
    }

    public byte[] getVersions() {
        return CoherenceBridge.getVersions(this.apiPtr);
    }
}
