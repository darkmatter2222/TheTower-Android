package com.applovin.impl;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import androidx.webkit.internal.AssetHelper;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h7 extends r3 {
    private com.applovin.impl.sdk.l b;
    private String c;
    private String d;

    private void a() {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", this.d);
        intent.putExtra("android.intent.extra.TITLE", this.c);
        intent.putExtra("android.intent.extra.SUBJECT", this.c);
        startActivity(Intent.createChooser(intent, null));
    }

    @Override // com.applovin.impl.r3
    protected com.applovin.impl.sdk.l getSdk() {
        return this.b;
    }

    public void initialize(String str, String str2, com.applovin.impl.sdk.l lVar) {
        this.b = lVar;
        this.c = str;
        this.d = str2;
    }

    @Override // com.applovin.impl.r3, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_text_view_activity);
        setTitle(this.c);
        ((TextView) findViewById(R.id.textView)).setText(this.d);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.mediation_debugger_activity_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (R.id.action_share != menuItem.getItemId()) {
            return super.onOptionsItemSelected(menuItem);
        }
        a();
        return true;
    }
}
