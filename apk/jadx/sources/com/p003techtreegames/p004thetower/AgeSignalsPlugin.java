package com.p003techtreegames.p004thetower;

import android.app.Activity;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.play.agesignals.AgeSignalsManagerFactory;
import com.google.android.play.agesignals.AgeSignalsRequest;
import com.google.android.play.agesignals.AgeSignalsResult;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.unity3d.player.UnityPlayer;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes5.dex */
public class AgeSignalsPlugin {
    public static void checkAgeSignals(final String str) {
        Activity activity = UnityPlayer.currentActivity;
        if (activity == null) {
            UnityPlayer.UnitySendMessage(str, "OnAgeSignalsError", "no_activity");
        } else {
            AgeSignalsManagerFactory.create(activity).checkAgeSignals(AgeSignalsRequest.builder().build()).addOnSuccessListener(new OnSuccessListener() { // from class: com.techtreegames.thetower.AgeSignalsPlugin$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    AgeSignalsPlugin.sendResult(str, (AgeSignalsResult) obj);
                }
            }).addOnFailureListener(new OnFailureListener() { // from class: com.techtreegames.thetower.AgeSignalsPlugin$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    UnityPlayer.UnitySendMessage(str, "OnAgeSignalsError", exc.getMessage() != null ? exc.getMessage() : "unknown_error");
                }
            });
        }
    }

    public static void checkFakeAgeSignals(String str, int i) {
        if (i == 7) {
            UnityPlayer.UnitySendMessage(str, "OnAgeSignalsTestError", "NETWORK_ERROR(-3)");
            return;
        }
        String str2 = "VERIFIED,18,-1";
        switch (i) {
            case 1:
                str2 = "SUPERVISED,13,17";
                break;
            case 2:
                str2 = "DECLARED,13,15";
                break;
            case 3:
                str2 = "SUPERVISED_APPROVAL_PENDING,13,17";
                break;
            case 4:
                str2 = "SUPERVISED_APPROVAL_DENIED,13,17";
                break;
            case 5:
                str2 = "UNKNOWN,-1,-1";
                break;
            case 6:
                str2 = "null,-1,-1";
                break;
        }
        UnityPlayer.UnitySendMessage(str, "OnAgeSignalsTestResult", str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendResult(String str, AgeSignalsResult ageSignalsResult) {
        UnityPlayer.UnitySendMessage(str, "OnAgeSignalsResult", statusName(ageSignalsResult.userStatus()) + FacebookConstants.PLACEMENT_IDS_SEPARATOR + (ageSignalsResult.ageLower() != null ? ageSignalsResult.ageLower().intValue() : -1) + FacebookConstants.PLACEMENT_IDS_SEPARATOR + (ageSignalsResult.ageUpper() != null ? ageSignalsResult.ageUpper().intValue() : -1));
    }

    private static String statusName(Integer num) {
        if (num == null) {
            return AbstractJsonLexerKt.NULL;
        }
        if (num.intValue() == 0) {
            return "VERIFIED";
        }
        if (num.intValue() == 1) {
            return "SUPERVISED";
        }
        if (num.intValue() == 2) {
            return "SUPERVISED_APPROVAL_PENDING";
        }
        if (num.intValue() == 3) {
            return "SUPERVISED_APPROVAL_DENIED";
        }
        if (num.intValue() == 4) {
            return "UNKNOWN";
        }
        return num.intValue() == 5 ? "DECLARED" : String.valueOf(num);
    }
}
