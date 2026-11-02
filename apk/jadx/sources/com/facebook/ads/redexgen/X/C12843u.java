package com.facebook.ads.redexgen.X;

import android.os.Build;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3u, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C12843u extends C7O {
    public C12843u(C1618Hi c1618Hi) {
        super(c1618Hi);
        setCarouselLayoutManager(c1618Hi);
    }

    private void setCarouselLayoutManager(C1618Hi c1618Hi) {
        J7 j7 = new J7(c1618Hi, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            j7.A2q(true);
        }
        super.setLayoutManager(j7);
    }

    public AbstractC1482Cb getFullscreenCarouselRecyclerViewAdapter() {
        getAdapter();
        if (0 == 0) {
            return null;
        }
        getAdapter();
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.C7O
    public J7 getLayoutManager() {
        return (J7) super.getLayoutManager();
    }

    public AbstractC2625j1 getOnScrollListener() {
        return new C1576Fs(this);
    }

    @Override // com.facebook.ads.redexgen.X.C7O
    public void setLayoutManager(AbstractC2620iw abstractC2620iw) {
    }
}
