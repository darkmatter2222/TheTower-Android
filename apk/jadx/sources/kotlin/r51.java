package kotlin;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class r51 {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static s51 a(Map params, String adUnitId, Context context, RequestConfiguration currentRequestConfiguration) {
        RequestConfiguration.MaxAdContentRating maxAdContentRating;
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currentRequestConfiguration, "currentRequestConfiguration");
        AdRequest.Builder builder = new AdRequest.Builder(adUnitId);
        String str = (String) params.get("ad_request");
        if (str == null || str.length() == 0) {
            return new s51(builder.build());
        }
        try {
            JsonObject jsonObject = (JsonObject) new Gson().fromJson(Uri.decode(str), JsonObject.class);
            RequestConfiguration.Builder builder2 = new RequestConfiguration.Builder();
            try {
                for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
                    Intrinsics.checkNotNull(entry);
                    String key = entry.getKey();
                    JsonElement value = entry.getValue();
                    if (key != null) {
                        switch (key.hashCode()) {
                            case -1289032093:
                                if (key.equals(HandleInvocationsFromAdViewer.KEY_EXTRAS)) {
                                    ds1 ds1Var = ds1.a;
                                    JsonObject asJsonObject = value.getAsJsonObject();
                                    Intrinsics.checkNotNullExpressionValue(asJsonObject, "getAsJsonObject(...)");
                                    Bundle bundleC = ds1.c(asJsonObject);
                                    if (bundleC != null) {
                                        builder.setGoogleExtrasBundle(bundleC);
                                    }
                                }
                                break;
                            case -839117230:
                                if (key.equals("isTestDevice")) {
                                    m21 m21Var = o21.f;
                                    String strA = m21.a(context);
                                    if (strA != null) {
                                        List<String> mutableList = CollectionsKt.toMutableList((Collection) currentRequestConfiguration.getTestDeviceIds());
                                        if (!value.getAsBoolean()) {
                                            mutableList.remove(strA);
                                        } else if (!mutableList.contains(strA)) {
                                            mutableList.add(strA);
                                        }
                                        builder2.setTestDeviceIds(mutableList);
                                    }
                                }
                                break;
                            case -733436947:
                                if (key.equals("tagForUnderAgeOfConsent")) {
                                    builder2.setTagForUnderAgeOfConsent(value.getAsBoolean() ? RequestConfiguration.TagForUnderAgeOfConsent.TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE : RequestConfiguration.TagForUnderAgeOfConsent.TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE);
                                }
                                break;
                            case 523149226:
                                if (key.equals("keywords")) {
                                    Iterator<JsonElement> it = value.getAsJsonArray().iterator();
                                    while (it.hasNext()) {
                                        String asString = it.next().getAsString();
                                        Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                                        builder.addKeyword(asString);
                                    }
                                }
                                break;
                            case 597632527:
                                if (key.equals("maxAdContentRating")) {
                                    RequestConfiguration.MaxAdContentRating[] maxAdContentRatingArrValues = RequestConfiguration.MaxAdContentRating.values();
                                    int length = maxAdContentRatingArrValues.length;
                                    int i = 0;
                                    while (true) {
                                        if (i < length) {
                                            maxAdContentRating = maxAdContentRatingArrValues[i];
                                            if (!Intrinsics.areEqual(maxAdContentRating.getValue(), value.getAsString())) {
                                                i++;
                                            }
                                        } else {
                                            maxAdContentRating = null;
                                        }
                                    }
                                    if (maxAdContentRating != null) {
                                        builder2.setMaxAdContentRating(maxAdContentRating);
                                    }
                                }
                                break;
                            case 1411582723:
                                if (key.equals("tagForChildDirectedTreatment")) {
                                    builder2.setTagForChildDirectedTreatment(value.getAsBoolean() ? RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE : RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE);
                                }
                                break;
                        }
                    }
                }
            } catch (Exception e) {
                xs3.a("Exception parsing h5 load params", e, 4);
            }
            return new s51(builder.build(), builder2.build());
        } catch (Exception e2) {
            xs3.a("Exception parsing h5 ad request string: " + str, e2, 4);
            return new s51(builder.build());
        }
    }
}
