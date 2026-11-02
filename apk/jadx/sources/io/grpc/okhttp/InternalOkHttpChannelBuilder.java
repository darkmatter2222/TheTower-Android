package io.grpc.okhttp;

/* JADX INFO: loaded from: classes5.dex */
public final class InternalOkHttpChannelBuilder {
    private InternalOkHttpChannelBuilder() {
    }

    public static void disableCheckAuthority(OkHttpChannelBuilder okHttpChannelBuilder) {
        okHttpChannelBuilder.disableCheckAuthority();
    }

    public static void enableCheckAuthority(OkHttpChannelBuilder okHttpChannelBuilder) {
        okHttpChannelBuilder.enableCheckAuthority();
    }

    public static void setStatsEnabled(OkHttpChannelBuilder okHttpChannelBuilder, boolean z) {
        okHttpChannelBuilder.setStatsEnabled(z);
    }
}
