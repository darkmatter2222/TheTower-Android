package org.chromium.net.httpflags;

import com.google.protobuf.ByteString;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class BaseFeature {
    public static final String FLAG_PREFIX = "ChromiumBaseFeature_";
    public static final String PARAM_DELIMITER = "_PARAM_";

    /* JADX INFO: renamed from: org.chromium.net.httpflags.BaseFeature$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type;

        static {
            int[] iArr = new int[ResolvedFlags.Value.Type.values().length];
            $SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type = iArr;
            try {
                iArr[ResolvedFlags.Value.Type.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type[ResolvedFlags.Value.Type.INT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type[ResolvedFlags.Value.Type.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type[ResolvedFlags.Value.Type.STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type[ResolvedFlags.Value.Type.BYTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private static final class ParsedFlagName {
        public String featureName;
        public String paramName;

        private ParsedFlagName() {
        }
    }

    private BaseFeature() {
    }

    private static void applyOverride(String str, ResolvedFlags.Value value, Map<String, BaseFeatureOverrides.FeatureState.Builder> map) {
        ParsedFlagName flagName = parseFlagName(str);
        if (flagName == null) {
            return;
        }
        BaseFeatureOverrides.FeatureState.Builder builderNewBuilder = map.get(flagName.featureName);
        if (builderNewBuilder == null) {
            builderNewBuilder = BaseFeatureOverrides.FeatureState.newBuilder();
            map.put(flagName.featureName, builderNewBuilder);
        }
        if (flagName.paramName == null) {
            applyStateOverride(value, builderNewBuilder);
        } else {
            applyParamOverride(flagName.paramName, value, builderNewBuilder);
        }
    }

    private static void applyParamOverride(String str, ResolvedFlags.Value value, BaseFeatureOverrides.FeatureState.Builder builder) {
        ByteString byteStringCopyFrom;
        ResolvedFlags.Value.Type type = value.getType();
        int i = AnonymousClass1.$SwitchMap$org$chromium$net$httpflags$ResolvedFlags$Value$Type[type.ordinal()];
        if (i == 1) {
            byteStringCopyFrom = ByteString.copyFrom(value.getBoolValue() ? "true" : "false", StandardCharsets.UTF_8);
        } else if (i == 2) {
            byteStringCopyFrom = ByteString.copyFrom(Long.toString(value.getIntValue(), 10), StandardCharsets.UTF_8);
        } else if (i == 3) {
            byteStringCopyFrom = ByteString.copyFrom(Float.toString(value.getFloatValue()), StandardCharsets.UTF_8);
        } else if (i == 4) {
            byteStringCopyFrom = ByteString.copyFrom(value.getStringValue(), StandardCharsets.UTF_8);
        } else {
            if (i != 5) {
                throw new UnsupportedOperationException("Unsupported HTTP flag value type for base::Feature param `" + str + "`: " + String.valueOf(type));
            }
            byteStringCopyFrom = value.getBytesValue();
        }
        builder.putParams(str, byteStringCopyFrom);
    }

    private static void applyStateOverride(ResolvedFlags.Value value, BaseFeatureOverrides.FeatureState.Builder builder) {
        ResolvedFlags.Value.Type type = value.getType();
        if (type == ResolvedFlags.Value.Type.BOOL) {
            builder.setEnabled(value.getBoolValue());
        } else {
            throw new IllegalArgumentException("HTTP flag has type " + String.valueOf(type) + ", but only boolean flags are supported as base::Feature overrides");
        }
    }

    public static BaseFeatureOverrides getOverrides(ResolvedFlags resolvedFlags) {
        HashMap map = new HashMap();
        for (Map.Entry<String, ResolvedFlags.Value> entry : resolvedFlags.flags().entrySet()) {
            try {
                applyOverride(entry.getKey(), entry.getValue(), map);
            } catch (RuntimeException e) {
                throw new IllegalArgumentException("Could not parse HTTP flag `" + entry.getKey() + "` as a base::Feature override", e);
            }
        }
        BaseFeatureOverrides.Builder builderNewBuilder = BaseFeatureOverrides.newBuilder();
        for (Map.Entry entry2 : map.entrySet()) {
            builderNewBuilder.putFeatureStates((String) entry2.getKey(), ((BaseFeatureOverrides.FeatureState.Builder) entry2.getValue()).build());
        }
        return builderNewBuilder.build();
    }

    private static ParsedFlagName parseFlagName(String str) {
        if (!str.startsWith(FLAG_PREFIX)) {
            return null;
        }
        String strSubstring = str.substring(FLAG_PREFIX.length());
        ParsedFlagName parsedFlagName = new ParsedFlagName();
        int iIndexOf = strSubstring.indexOf(PARAM_DELIMITER);
        if (iIndexOf < 0) {
            parsedFlagName.featureName = strSubstring;
            return parsedFlagName;
        }
        parsedFlagName.featureName = strSubstring.substring(0, iIndexOf);
        parsedFlagName.paramName = strSubstring.substring(iIndexOf + PARAM_DELIMITER.length());
        return parsedFlagName;
    }
}
