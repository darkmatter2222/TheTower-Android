package com.google.android.libraries.ads.mobile.sdk.signal;

import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult;", "", "Failure", "Success", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Failure;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Success;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SignalGenerationResult {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Failure;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;", "getError", "()Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;", "error", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Failure implements SignalGenerationResult {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final SignalError error;

        public Failure(SignalError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }

        public final SignalError getError() {
            return this.error;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Success;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;", "getSignal", "()Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;", "signal", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Success implements SignalGenerationResult {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final Signal signal;

        public Success(Signal signal) {
            Intrinsics.checkNotNullParameter(signal, "signal");
            this.signal = signal;
        }

        public final Signal getSignal() {
            return this.signal;
        }
    }
}
