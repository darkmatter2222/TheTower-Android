package com.unity3d.coherence;

/* JADX INFO: loaded from: classes5.dex */
final class NativeIdentityProvider implements IdentityProvider {
    private final CoherenceLibrary library;

    NativeIdentityProvider(CoherenceLibrary coherenceLibrary) {
        this.library = coherenceLibrary;
    }

    @Override // com.unity3d.coherence.IdentityProvider
    public void setExternalUserId(String str) {
        CoherenceBridge.setExternalUserId(this.library.apiPtr(), str);
    }
}
