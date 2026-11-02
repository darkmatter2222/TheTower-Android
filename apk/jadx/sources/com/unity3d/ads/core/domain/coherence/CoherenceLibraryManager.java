package com.unity3d.ads.core.domain.coherence;

import p005kotlin.Metadata;

/* JADX INFO: compiled from: CoherenceLibraryManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b`\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0003H&J\n\u0010\t\u001a\u0004\u0018\u00010\u0003H&¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager;", "", "getCommonAttributes", "", "eventId", "", "initialize", "", "wasmModule", "executeWasmData", "Companion", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface CoherenceLibraryManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final int EVENT_ID_DEFAULT = 1;
    public static final int EVENT_ID_INITIALIZATION = 0;

    /* JADX INFO: compiled from: CoherenceLibraryManager.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/unity3d/ads/core/domain/coherence/CoherenceLibraryManager$Companion;", "", "<init>", "()V", "EVENT_ID_INITIALIZATION", "", "EVENT_ID_DEFAULT", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int EVENT_ID_DEFAULT = 1;
        public static final int EVENT_ID_INITIALIZATION = 0;

        private Companion() {
        }
    }

    byte[] executeWasmData();

    byte[] getCommonAttributes(int eventId);

    void initialize(byte[] wasmModule);
}
