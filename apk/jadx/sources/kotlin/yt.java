package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.adapters.facebook.FacebookConstants;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class yt {
    public static v01 a(v01 jsResult) {
        String str;
        List listSplit$default;
        String asString;
        String asString2;
        String asString3;
        Intrinsics.checkNotNullParameter(jsResult, "jsResult");
        if (!(jsResult instanceof q01)) {
            if (jsResult instanceof i01) {
                return jsResult;
            }
            throw new p005kotlin.NoWhenBranchMatchedException();
        }
        JsonObject jsonObject = (JsonObject) ((q01) jsResult).a();
        JsonElement jsonElement = jsonObject.get("errors");
        String asString4 = jsonElement != null ? jsonElement.getAsString() : null;
        JsonElement jsonElement2 = jsonObject.get("valid");
        if (jsonElement2 == null || jsonElement2.getAsInt() != 1) {
            return new m01("Error building request URL: " + asString4, kk1.INVALID_REQUEST);
        }
        JsonElement jsonElement3 = jsonObject.get("url");
        String asString5 = jsonElement3 != null ? jsonElement3.getAsString() : null;
        if (asString5 == null) {
            return new m01("BuildAdUrlResult url is null");
        }
        JsonElement jsonElement4 = jsonObject.get("base_uri");
        String asString6 = jsonElement4 != null ? jsonElement4.getAsString() : null;
        JsonElement jsonElement5 = jsonObject.get("post_parameters");
        String asString7 = jsonElement5 != null ? jsonElement5.getAsString() : null;
        JsonElement jsonElement6 = jsonObject.get("cookies_include");
        boolean z = jsonElement6 == null || (asString3 = jsonElement6.getAsString()) == null || Intrinsics.areEqual(asString3, "1") || Intrinsics.areEqual(asString3, "true");
        JsonElement jsonElement7 = jsonObject.get("csrb_errors");
        if (jsonElement7 == null || (asString2 = jsonElement7.getAsString()) == null) {
            str = FacebookConstants.PLACEMENT_IDS_SEPARATOR;
            listSplit$default = null;
        } else {
            listSplit$default = StringsKt.split$default((CharSequence) asString2, new String[]{FacebookConstants.PLACEMENT_IDS_SEPARATOR}, false, 0, 6, (Object) null);
            str = FacebookConstants.PLACEMENT_IDS_SEPARATOR;
        }
        JsonElement jsonElement8 = jsonObject.get("use_compression");
        boolean z2 = (jsonElement8 == null || (asString = jsonElement8.getAsString()) == null || (!Intrinsics.areEqual(asString, "1") && !Intrinsics.areEqual(asString, "true"))) ? false : true;
        JsonElement jsonElement9 = jsonObject.get(FirebaseAnalytics.Param.CONTENT_TYPE);
        return new q01(new zt(asString4 != null ? StringsKt.split$default((CharSequence) asString4, new String[]{str}, false, 0, 6, (Object) null) : null, asString6, asString7, z, asString5, null, listSplit$default, z2, jsonElement9 != null ? jsonElement9.getAsString() : null));
    }
}
