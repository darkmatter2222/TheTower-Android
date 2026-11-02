package com.tapjoy;

import android.text.TextUtils;
import com.tapjoy.internal.gh;

/* JADX INFO: loaded from: classes4.dex */
public class TJPrivacyPolicy {
    private static final TJPrivacyPolicy a = new TJPrivacyPolicy();

    public static TJPrivacyPolicy getInstance() {
        return a;
    }

    public void setBelowConsentAge(boolean z) {
        gh.a().b(z);
    }

    public void setSubjectToGDPR(boolean z) {
        gh.a().a(z);
    }

    public void setUSPrivacy(String str) {
        gh ghVarA = gh.a();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ghVarA.b = str;
        if (ghVarA.c()) {
            return;
        }
        ghVarA.c = true;
    }

    public void setUserConsent(String str) {
        gh.a().a(str);
    }
}
