package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ỵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0817 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3066;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f3067;

    public C0817(ArrayList arrayList, JSONObject jSONObject) {
        this.f3067 = arrayList;
        this.f3066 = jSONObject;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        for (C0514 c0514 : this.f3067) {
            JSONObject jSONObject = this.f3066;
            Context context = c0514.f2195.f1972.f1359;
            String str = AbstractC0115.f594;
            int i = AbstractC0114.f575;
            Intent intentPutExtra = new Intent(str).putExtra(AbstractC0115.f586, jSONObject.toString());
            C0160 c0160M1933 = C0160.m1933(context);
            if (c0160M1933.f904) {
                synchronized (c0160M1933.f902) {
                    intentPutExtra.getAction();
                    String strResolveTypeIfNeeded = intentPutExtra.resolveTypeIfNeeded(c0160M1933.f903.getContentResolver());
                    intentPutExtra.getData();
                    String scheme = intentPutExtra.getScheme();
                    intentPutExtra.getCategories();
                    boolean z = (intentPutExtra.getFlags() & 8) != 0;
                    if (z) {
                        Log.v(C0160.f899, StringFog.decrypt("CS4yRgtOCWY8azVQF11A\n", "W0tBKWc4YAg=\n") + strResolveTypeIfNeeded + StringFog.decrypt("EDtaH96VGHg=\n", "MEg5d7v4fVg=\n") + scheme + StringFog.decrypt("03AriK0LKQada20=\n", "8x9NqMRlXWM=\n") + intentPutExtra);
                    }
                    ArrayList arrayList = (ArrayList) c0160M1933.f901.get(intentPutExtra.getAction());
                    if (arrayList != null) {
                        if (z) {
                            Log.v(C0160.f899, StringFog.decrypt("0xIXTTOkb2b7AhcefA==\n", "knFjJFzKTwo=\n") + arrayList);
                        }
                        if (arrayList.size() > 0) {
                            if (arrayList.get(0) != null) {
                                throw new ClassCastException();
                            }
                            if (!z) {
                                throw null;
                            }
                            StringFog.decrypt("C/Hngaucz9Zm8fSDqpvSxWb2+o63kNOR\n", "RpCT4sP1obE=\n");
                            throw null;
                        }
                    }
                }
            }
        }
    }
}
