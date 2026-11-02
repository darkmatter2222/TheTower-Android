package com.ironsource.sdk.controller;

import android.os.Bundle;
import com.ironsource.C3510b4;
import com.ironsource.sdk.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class InterstitialActivity extends ControllerActivity {
    private static final String s = "InterstitialActivity";

    @Override // com.ironsource.sdk.controller.ControllerActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Logger.i(s, "onCreate");
    }

    @Override // com.ironsource.sdk.controller.ControllerActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Logger.i(s, C3510b4.i.t0);
    }

    @Override // com.ironsource.sdk.controller.ControllerActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Logger.i(s, C3510b4.i.u0);
    }
}
