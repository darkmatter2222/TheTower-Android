package com.appsflyer.internal;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.ironsource.Ba;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public final class AFb1iSDK extends AFb1vSDK<String> {
    public AFb1iSDK(Context context, Executor executor) {
        super(context, executor, "com.facebook.katana.provider.AttributionIdProvider", "E3F9E1E0CF99D0E56A055BA65E241B3399F7CEA524326B0CDD6EC1327ED0FDC1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.appsflyer.internal.AFb1vSDK
    /* JADX INFO: renamed from: AFAdRevenueData, reason: merged with bridge method [inline-methods] */
    public String getCurrencyIso4217Code() throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = this.getCurrencyIso4217Code.getContentResolver().query(Uri.parse(new StringBuilder("content://").append(this.getRevenue).toString()), new String[]{Ba.b}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(Ba.b));
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final String getMonetizationNetwork() {
        this.getMediationNetwork.execute(this.getMonetizationNetwork);
        return (String) super.getRevenue();
    }

    @Override // com.appsflyer.internal.AFb1vSDK
    public final /* synthetic */ String getRevenue() {
        this.getMediationNetwork.execute(this.getMonetizationNetwork);
        return (String) super.getRevenue();
    }
}
