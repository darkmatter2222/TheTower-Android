package com.applovin.impl;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.ironsource.adapters.facebook.FacebookConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class p7 {
    private final Intent a = new Intent();

    public Intent a() {
        return this.a;
    }

    public p7 a(String str) {
        if (StringUtils.isValidString(str)) {
            for (String str2 : str.split(FacebookConstants.PLACEMENT_IDS_SEPARATOR)) {
                this.a.addCategory(str2);
            }
        }
        return this;
    }

    public p7 a(String str, String str2) {
        boolean zIsValidString = StringUtils.isValidString(str);
        boolean zIsValidString2 = StringUtils.isValidString(str2);
        if (zIsValidString && zIsValidString2) {
            this.a.setDataAndType(Uri.parse(str), str2);
            return this;
        }
        if (zIsValidString) {
            this.a.setData(Uri.parse(str));
            return this;
        }
        if (zIsValidString2) {
            this.a.setType(str2);
        }
        return this;
    }

    public p7 a(String str, String str2, String str3) {
        if (StringUtils.isValidString(str)) {
            Uri uri = Uri.parse(str);
            this.a.setClipData(StringUtils.isValidString(str2) ? new ClipData(new ClipDescription(StringUtils.emptyIfNull(str3), new String[]{str2}), new ClipData.Item(uri)) : ClipData.newRawUri(StringUtils.emptyIfNull(str3), uri));
        }
        return this;
    }

    public p7 b(String str) {
        if (StringUtils.isValidString(str)) {
            this.a.addFlags(Integer.parseInt(str));
        }
        return this;
    }

    public p7 b(String str, String str2, String str3) {
        if (StringUtils.isValidString(str)) {
            ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
            if (componentNameUnflattenFromString != null) {
                this.a.setComponent(componentNameUnflattenFromString);
                return this;
            }
        } else {
            if (StringUtils.isValidString(str2) && StringUtils.isValidString(str3)) {
                this.a.setClassName(str3, str2);
                return this;
            }
            if (StringUtils.isValidString(str3)) {
                this.a.setPackage(str3);
            }
        }
        return this;
    }

    public Intent c(String str) {
        Intent intentCreateChooser = Intent.createChooser(this.a, StringUtils.emptyIfNull(str));
        intentCreateChooser.addFlags(this.a.getFlags());
        return intentCreateChooser;
    }

    public p7 d(String str) {
        if (StringUtils.isValidString(str)) {
            this.a.setAction(str);
        }
        return this;
    }

    public p7 e(String str) {
        if (StringUtils.isValidString(str)) {
            this.a.putExtras(JsonUtils.toBundle(JsonUtils.jsonObjectFromJsonString(str, new JSONObject())));
        }
        return this;
    }

    public p7 f(String str) {
        if (StringUtils.isValidString(str) && p0.f()) {
            this.a.setIdentifier(str);
        }
        return this;
    }

    public p7 g(String str) {
        if (StringUtils.isValidString(str)) {
            this.a.setSelector(new Intent(str));
        }
        return this;
    }

    public p7 h(String str) {
        if (StringUtils.isValidString(str)) {
            String[] strArrSplit = str.split(FacebookConstants.PLACEMENT_IDS_SEPARATOR);
            if (strArrSplit.length == 4) {
                this.a.setSourceBounds(new Rect(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3])));
            }
        }
        return this;
    }
}
