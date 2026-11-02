package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import com.ironsource.C3510b4;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated(message = "Use [com.google.android.gms.ads.mediation.Adapter] instead.")
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bg\u0018\u0000 \u00072\u00020\u0001:\u0002\u0006\u0007J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationAdapter;", "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;", "onDestroy", "", C3510b4.i.t0, C3510b4.i.u0, "AdapterInfoBuilder", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MediationAdapter extends MediationExtrasReceiver {
    public static final int CAPABILITIES_DELAYED_IMPRESSIONS = 1;
    public static final int CAPABILITIES_FLOOR_CPM = 2;
    public static final int CAPABILITIES_RETURNS_CPM = 4;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.a;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder;", "", "", "capabilities", "setCapabilities", "(I)Lcom/google/android/gms/ads/mediation/MediationAdapter$AdapterInfoBuilder;", "Landroid/os/Bundle;", "build", "()Landroid/os/Bundle;", "<init>", "()V", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class AdapterInfoBuilder {
        private int a;

        public final Bundle build() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.a);
            return bundle;
        }

        public final AdapterInfoBuilder setCapabilities(int capabilities) {
            this.a = capabilities;
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationAdapter$Companion;", "", "", "CAPABILITIES_DELAYED_IMPRESSIONS", "I", "CAPABILITIES_FLOOR_CPM", "CAPABILITIES_RETURNS_CPM", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Companion {
        public static final int CAPABILITIES_DELAYED_IMPRESSIONS = 1;
        public static final int CAPABILITIES_FLOOR_CPM = 2;
        public static final int CAPABILITIES_RETURNS_CPM = 4;
        static final /* synthetic */ Companion a = new Companion();

        private Companion() {
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
