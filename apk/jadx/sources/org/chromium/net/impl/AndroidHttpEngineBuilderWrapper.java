package org.chromium.net.impl;

import android.net.http.ConnectionMigrationOptions;
import android.net.http.DnsOptions;
import android.net.http.HttpEngine;
import android.net.http.QuicOptions;
import android.util.Log;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.time.Duration;
import java.util.Date;
import java.util.Set;
import org.chromium.net.CronetEngine;
import org.chromium.net.ExperimentalCronetEngine;
import org.chromium.net.ICronetEngineBuilder;
import org.chromium.net.telemetry.ExperimentalOptions;
import org.chromium.net.telemetry.OptionalBoolean;

/* JADX INFO: loaded from: classes5.dex */
class AndroidHttpEngineBuilderWrapper extends ICronetEngineBuilder {
    private static final String TAG = "HttpEngBuilderWrap";
    private static boolean sLibraryLoaderUnsupportedLogged;
    private static boolean sNQEUnsupportedLogged;
    private final HttpEngine.Builder mBackend;

    /* JADX INFO: renamed from: org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$chromium$net$telemetry$OptionalBoolean;

        static {
            int[] iArr = new int[OptionalBoolean.values().length];
            $SwitchMap$org$chromium$net$telemetry$OptionalBoolean = iArr;
            try {
                iArr[OptionalBoolean.TRUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$chromium$net$telemetry$OptionalBoolean[OptionalBoolean.FALSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$chromium$net$telemetry$OptionalBoolean[OptionalBoolean.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AndroidHttpEngineBuilderWrapper(HttpEngine.Builder builder) {
        this.mBackend = builder;
    }

    private static int optionalBooleanToMigrationOptionState(OptionalBoolean optionalBoolean) {
        int i = AnonymousClass1.$SwitchMap$org$chromium$net$telemetry$OptionalBoolean[optionalBoolean.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                if (i == 3) {
                    return 0;
                }
                throw new AssertionError("Invalid OptionalBoolean value: " + String.valueOf(optionalBoolean));
            }
        }
        return i2;
    }

    public static ConnectionMigrationOptions parseConnectionMigrationOptions(ExperimentalOptions experimentalOptions) {
        ConnectionMigrationOptions.Builder builder = new ConnectionMigrationOptions.Builder();
        builder.setDefaultNetworkMigration(optionalBooleanToMigrationOptionState(experimentalOptions.getMigrateSessionsOnNetworkChangeV2Option()));
        builder.setPathDegradationMigration(optionalBooleanToMigrationOptionState(experimentalOptions.getAllowPortMigration()));
        OptionalBoolean migrateSessionsEarlyV2 = experimentalOptions.getMigrateSessionsEarlyV2();
        builder.setAllowNonDefaultNetworkUsage(optionalBooleanToMigrationOptionState(migrateSessionsEarlyV2));
        if (migrateSessionsEarlyV2 == OptionalBoolean.TRUE) {
            builder.setPathDegradationMigration(optionalBooleanToMigrationOptionState(OptionalBoolean.TRUE));
        }
        return builder.build();
    }

    public static DnsOptions parseDnsOptions(ExperimentalOptions experimentalOptions) {
        DnsOptions.StaleDnsOptions.Builder builder = new DnsOptions.StaleDnsOptions.Builder();
        int staleDnsDelayMillisOption = experimentalOptions.getStaleDnsDelayMillisOption();
        if (staleDnsDelayMillisOption != -1) {
            builder.setFreshLookupTimeout(Duration.ofMillis(staleDnsDelayMillisOption));
        }
        int staleDnsMaxExpiredTimeMillisOption = experimentalOptions.getStaleDnsMaxExpiredTimeMillisOption();
        if (staleDnsMaxExpiredTimeMillisOption != -1) {
            builder.setMaxExpiredDelay(Duration.ofMillis(staleDnsMaxExpiredTimeMillisOption));
        }
        builder.setAllowCrossNetworkUsage(optionalBooleanToMigrationOptionState(experimentalOptions.getStaleDnsAllowOtherNetworkOption())).setUseStaleOnNameNotResolved(optionalBooleanToMigrationOptionState(experimentalOptions.getStaleDnsUseStaleOnNameNotResolvedOption()));
        DnsOptions.Builder builder2 = new DnsOptions.Builder();
        builder2.setUseHttpStackDnsResolver(optionalBooleanToMigrationOptionState(experimentalOptions.getAsyncDnsEnableOption())).setStaleDns(optionalBooleanToMigrationOptionState(experimentalOptions.getStaleDnsEnableOption())).setStaleDnsOptions(builder.build()).setPreestablishConnectionsToStaleDnsResults(optionalBooleanToMigrationOptionState(experimentalOptions.getRaceStaleDnsOnConnection())).setPersistHostCache(optionalBooleanToMigrationOptionState(experimentalOptions.getStaleDnsPersistToDiskOption()));
        int staleDnsPersistDelayMillisOption = experimentalOptions.getStaleDnsPersistDelayMillisOption();
        if (staleDnsPersistDelayMillisOption != -1) {
            builder2.setPersistHostCachePeriod(Duration.ofMillis(staleDnsPersistDelayMillisOption));
        }
        return builder2.build();
    }

    public static QuicOptions parseQuicOptions(ExperimentalOptions experimentalOptions) {
        QuicOptions.Builder builder = new QuicOptions.Builder();
        if (experimentalOptions.getHostWhitelist() != null) {
            for (String str : experimentalOptions.getHostWhitelist().split(FacebookConstants.PLACEMENT_IDS_SEPARATOR)) {
                builder.addAllowedQuicHost(str);
            }
        }
        int maxServerConfigsStoredInPropertiesOption = experimentalOptions.getMaxServerConfigsStoredInPropertiesOption();
        if (maxServerConfigsStoredInPropertiesOption != -1) {
            builder.setInMemoryServerConfigsCacheSize(maxServerConfigsStoredInPropertiesOption);
        }
        String userAgentId = experimentalOptions.getUserAgentId();
        if (userAgentId != null) {
            builder.setHandshakeUserAgent(userAgentId);
        }
        int idleConnectionTimeoutSecondsOption = experimentalOptions.getIdleConnectionTimeoutSecondsOption();
        if (idleConnectionTimeoutSecondsOption != -1) {
            builder.setIdleConnectionTimeout(Duration.ofSeconds(idleConnectionTimeoutSecondsOption));
        }
        return builder.build();
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder addPublicKeyPins(String str, Set<byte[]> set, boolean z, Date date) {
        this.mBackend.addPublicKeyPins(str, set, z, date.toInstant());
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder addQuicHint(String str, int i, int i2) {
        this.mBackend.addQuicHint(str, i, i2);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ExperimentalCronetEngine build() {
        return new AndroidHttpEngineWrapper(this.mBackend.build());
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableBrotli(boolean z) {
        this.mBackend.setEnableBrotli(z);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableHttp2(boolean z) {
        this.mBackend.setEnableHttp2(z);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableHttpCache(int i, long j) {
        this.mBackend.setEnableHttpCache(i, j);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableNetworkQualityEstimator(boolean z) {
        if (!sNQEUnsupportedLogged) {
            Log.i(TAG, "NetworkQualityEstimator is unsupported when HttpEngineNativeProvider is used");
            sNQEUnsupportedLogged = true;
        }
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean z) {
        this.mBackend.setEnablePublicKeyPinningBypassForLocalTrustAnchors(z);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableQuic(boolean z) {
        this.mBackend.setEnableQuic(z);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableSdch(boolean z) {
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public String getDefaultUserAgent() {
        return this.mBackend.getDefaultUserAgent();
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setExperimentalOptions(String str) {
        ExperimentalOptions experimentalOptions = new ExperimentalOptions(str);
        this.mBackend.setConnectionMigrationOptions(parseConnectionMigrationOptions(experimentalOptions));
        this.mBackend.setDnsOptions(parseDnsOptions(experimentalOptions));
        this.mBackend.setQuicOptions(parseQuicOptions(experimentalOptions));
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setLibraryLoader(CronetEngine.Builder.LibraryLoader libraryLoader) {
        if (!sLibraryLoaderUnsupportedLogged) {
            Log.i(TAG, "Custom library loader is unsupported when HttpEngineNativeProvider is used.");
            sLibraryLoaderUnsupportedLogged = true;
        }
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setStoragePath(String str) {
        this.mBackend.setStoragePath(str);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setThreadPriority(int i) {
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setUserAgent(String str) {
        this.mBackend.setUserAgent(str);
        return this;
    }
}
