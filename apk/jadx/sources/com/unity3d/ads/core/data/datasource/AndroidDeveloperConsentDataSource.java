package com.unity3d.ads.core.data.datasource;

import com.ironsource.C3510b4;
import com.ironsource.adapters.unityads.UnityAdsConstants;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.privacy.FlattenerRulesUseCase;
import com.unity3d.services.core.misc.JsonFlattener;
import com.unity3d.services.core.misc.JsonStorage;
import gatewayprotocol.v1.DeveloperConsentKt;
import gatewayprotocol.v1.DeveloperConsentOptionKt;
import gatewayprotocol.v1.DeveloperConsentOuterClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: AndroidDeveloperConsentDataSource.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\u0012\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0013H\u0002J\u0017\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0002\u0010\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u001f"}, d2 = {"Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;", "Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;", "flattenerRulesUseCase", "Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;", "publicStorage", "Lcom/unity3d/services/core/misc/JsonStorage;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "<init>", "(Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;Lcom/unity3d/services/core/misc/JsonStorage;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "developerConsent", "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;", "getDeveloperConsent", "()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;", "developerConsentList", "", "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;", "createDeveloperConsentOption", C3510b4.i.W, "", "value", "", "fetchData", "Lorg/json/JSONObject;", "getDeveloperConsentType", "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;", "type", "getDeveloperConsentChoice", "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;", "choice", "(Ljava/lang/Boolean;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidDeveloperConsentDataSource implements DeveloperConsentDataSource {
    private final FlattenerRulesUseCase flattenerRulesUseCase;
    private final JsonStorage publicStorage;
    private final SessionRepository sessionRepository;

    public AndroidDeveloperConsentDataSource(FlattenerRulesUseCase flattenerRulesUseCase, JsonStorage publicStorage, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(flattenerRulesUseCase, "flattenerRulesUseCase");
        Intrinsics.checkNotNullParameter(publicStorage, "publicStorage");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.flattenerRulesUseCase = flattenerRulesUseCase;
        this.publicStorage = publicStorage;
        this.sessionRepository = sessionRepository;
    }

    private final DeveloperConsentOuterClass.DeveloperConsentOption createDeveloperConsentOption(String key, boolean value) {
        DeveloperConsentOptionKt.Dsl.Companion companion = DeveloperConsentOptionKt.Dsl.INSTANCE;
        DeveloperConsentOuterClass.DeveloperConsentOption.Builder builderNewBuilder = DeveloperConsentOuterClass.DeveloperConsentOption.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        DeveloperConsentOptionKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setType(getDeveloperConsentType(key));
        if (dsl_create.getType() == DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_CUSTOM) {
            dsl_create.setCustomType(key);
        }
        dsl_create.setValue(getDeveloperConsentChoice(Boolean.valueOf(value)));
        return dsl_create._build();
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00ec  */
    private final List<DeveloperConsentOuterClass.DeveloperConsentOption> developerConsentList() throws JSONException {
        DeveloperConsentOuterClass.DeveloperConsentOption developerConsentOptionCreateDeveloperConsentOption;
        ArrayList arrayList = new ArrayList();
        if (this.sessionRepository.getInitializationConfiguration() != null) {
            if (UnityAds.getNonBehavioral() != null) {
                DeveloperConsentOptionKt.Dsl.Companion companion = DeveloperConsentOptionKt.Dsl.INSTANCE;
                DeveloperConsentOuterClass.DeveloperConsentOption.Builder builderNewBuilder = DeveloperConsentOuterClass.DeveloperConsentOption.newBuilder();
                Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
                DeveloperConsentOptionKt.Dsl dsl_create = companion._create(builderNewBuilder);
                dsl_create.setType(DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_SET_NON_BEHAVIORAL);
                dsl_create.setValue(getDeveloperConsentChoice(UnityAds.getNonBehavioral()));
                arrayList.add(dsl_create._build());
            }
            if (UnityAds.getUserConsent() != null) {
                DeveloperConsentOptionKt.Dsl.Companion companion2 = DeveloperConsentOptionKt.Dsl.INSTANCE;
                DeveloperConsentOuterClass.DeveloperConsentOption.Builder builderNewBuilder2 = DeveloperConsentOuterClass.DeveloperConsentOption.newBuilder();
                Intrinsics.checkNotNullExpressionValue(builderNewBuilder2, "newBuilder(...)");
                DeveloperConsentOptionKt.Dsl dsl_create2 = companion2._create(builderNewBuilder2);
                dsl_create2.setType(DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_SET_USER_CONSENT);
                dsl_create2.setValue(getDeveloperConsentChoice(UnityAds.getUserConsent()));
                arrayList.add(dsl_create2._build());
            }
            if (UnityAds.getUserOptOut() != null) {
                DeveloperConsentOptionKt.Dsl.Companion companion3 = DeveloperConsentOptionKt.Dsl.INSTANCE;
                DeveloperConsentOuterClass.DeveloperConsentOption.Builder builderNewBuilder3 = DeveloperConsentOuterClass.DeveloperConsentOption.newBuilder();
                Intrinsics.checkNotNullExpressionValue(builderNewBuilder3, "newBuilder(...)");
                DeveloperConsentOptionKt.Dsl dsl_create3 = companion3._create(builderNewBuilder3);
                dsl_create3.setType(DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_SET_USER_OPT_OUT);
                dsl_create3.setValue(getDeveloperConsentChoice(UnityAds.getUserOptOut()));
                arrayList.add(dsl_create3._build());
                return arrayList;
            }
        } else {
            JSONObject jSONObjectFetchData = fetchData();
            Iterator<String> itKeys = jSONObjectFetchData.keys();
            Intrinsics.checkNotNullExpressionValue(itKeys, "keys(...)");
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObjectFetchData.get(next);
                if (obj instanceof Boolean) {
                    Intrinsics.checkNotNull(next);
                    developerConsentOptionCreateDeveloperConsentOption = createDeveloperConsentOption(next, ((Boolean) obj).booleanValue());
                } else if (obj instanceof String) {
                    String str = (String) obj;
                    if (StringsKt.equals(str, "true", true) || StringsKt.equals(str, "false", true)) {
                        Intrinsics.checkNotNull(next);
                        developerConsentOptionCreateDeveloperConsentOption = createDeveloperConsentOption(next, Boolean.parseBoolean(str));
                    } else {
                        developerConsentOptionCreateDeveloperConsentOption = null;
                    }
                } else {
                    developerConsentOptionCreateDeveloperConsentOption = null;
                }
                if (developerConsentOptionCreateDeveloperConsentOption != null) {
                    arrayList.add(developerConsentOptionCreateDeveloperConsentOption);
                }
            }
        }
        return arrayList;
    }

    private final JSONObject fetchData() {
        if (this.publicStorage.getData() == null) {
            return new JSONObject();
        }
        JSONObject jSONObjectFlattenJson = new JsonFlattener(this.publicStorage.getData()).flattenJson(".", this.flattenerRulesUseCase.invoke());
        Intrinsics.checkNotNullExpressionValue(jSONObjectFlattenJson, "flattenJson(...)");
        return jSONObjectFlattenJson;
    }

    private final DeveloperConsentOuterClass.DeveloperConsentChoice getDeveloperConsentChoice(Boolean choice) {
        if (Intrinsics.areEqual((Object) choice, (Object) true)) {
            return DeveloperConsentOuterClass.DeveloperConsentChoice.DEVELOPER_CONSENT_CHOICE_TRUE;
        }
        return Intrinsics.areEqual((Object) choice, (Object) false) ? DeveloperConsentOuterClass.DeveloperConsentChoice.DEVELOPER_CONSENT_CHOICE_FALSE : DeveloperConsentOuterClass.DeveloperConsentChoice.DEVELOPER_CONSENT_CHOICE_UNSPECIFIED;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final DeveloperConsentOuterClass.DeveloperConsentType getDeveloperConsentType(String type) {
        if (type == null) {
            return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_UNSPECIFIED;
        }
        switch (type.hashCode()) {
            case -1998919769:
                if (type.equals("user.nonbehavioral")) {
                    return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL;
                }
                break;
            case -1078801183:
                if (type.equals("pipl.consent")) {
                    return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_PIPL_CONSENT;
                }
                break;
            case -5454905:
                if (type.equals(UnityAdsConstants.UNITYADS_COPPA)) {
                    return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_NON_BEHAVIORAL;
                }
                break;
            case 194451659:
                if (type.equals(UnityAdsConstants.CONSENT_GDPR)) {
                    return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_GDPR_CONSENT;
                }
                break;
            case 519433140:
                if (type.equals(UnityAdsConstants.CONSENT_CCPA)) {
                    return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_PRIVACY_CONSENT;
                }
                break;
            case 2033752033:
                if (type.equals("privacy.useroveragelimit")) {
                    return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_USER_OVER_AGE_LIMIT;
                }
                break;
        }
        return DeveloperConsentOuterClass.DeveloperConsentType.DEVELOPER_CONSENT_TYPE_CUSTOM;
    }

    @Override // com.unity3d.ads.core.data.datasource.DeveloperConsentDataSource
    public DeveloperConsentOuterClass.DeveloperConsent getDeveloperConsent() {
        DeveloperConsentKt.Dsl.Companion companion = DeveloperConsentKt.Dsl.INSTANCE;
        DeveloperConsentOuterClass.DeveloperConsent.Builder builderNewBuilder = DeveloperConsentOuterClass.DeveloperConsent.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder(...)");
        DeveloperConsentKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.addAllOptions(dsl_create.getOptions(), developerConsentList());
        return dsl_create._build();
    }
}
