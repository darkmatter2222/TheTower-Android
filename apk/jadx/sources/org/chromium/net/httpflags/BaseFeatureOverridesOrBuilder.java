package org.chromium.net.httpflags;

import com.google.protobuf.MessageLiteOrBuilder;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public interface BaseFeatureOverridesOrBuilder extends MessageLiteOrBuilder {
    boolean containsFeatureStates(String str);

    @Deprecated
    Map<String, BaseFeatureOverrides.FeatureState> getFeatureStates();

    int getFeatureStatesCount();

    Map<String, BaseFeatureOverrides.FeatureState> getFeatureStatesMap();

    BaseFeatureOverrides.FeatureState getFeatureStatesOrDefault(String str, BaseFeatureOverrides.FeatureState featureState);

    BaseFeatureOverrides.FeatureState getFeatureStatesOrThrow(String str);
}
