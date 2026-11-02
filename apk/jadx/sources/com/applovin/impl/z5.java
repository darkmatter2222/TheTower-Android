package com.applovin.impl;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.ironsource.C3510b4;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class z5 extends n5 {
    private final b g;

    class a extends r6 {
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.l lVar) {
            super(aVar, lVar);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, int i, String str2, String str3) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Unable to fetch app details due to: " + str2 + ", and received error code: " + i);
            }
            z5.this.g.a(b0.b.APP_DETAILS_NOT_FOUND);
        }

        @Override // com.applovin.impl.r6, com.applovin.impl.r0.e
        public void a(String str, String str2, int i) {
            if (TextUtils.isEmpty(str2)) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "No developer URI found - response from the Play Store is empty");
                }
                z5.this.g.a(b0.b.APP_DETAILS_NOT_FOUND);
                return;
            }
            Matcher matcher = Pattern.compile("(?<=\"appstore:developer_url\" content=\").*?(?=\">)").matcher(str2);
            if (!matcher.find()) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "No developer URI found - unable to find the developer_url meta tag from the Play Store listing");
                }
                z5.this.g.a(b0.b.INVALID_DEVELOPER_URI);
                return;
            }
            String strGroup = matcher.group();
            if (URLUtil.isValidUrl(strGroup)) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.a(this.b, "Found developer URI: " + strGroup);
                }
                z5.this.g.a(strGroup);
            } else {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "Developer URI (" + strGroup + ") is not valid");
                }
                z5.this.g.a(b0.b.INVALID_DEVELOPER_URI);
            }
        }
    }

    public interface b {
        void a(b0.b bVar);

        void a(String str);
    }

    public z5(com.applovin.impl.sdk.l lVar, b bVar) {
        super("TaskFetchDeveloperUri", lVar);
        this.g = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String strValueOf = String.valueOf(this.a.B().H().get(C3510b4.i.V));
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Looking up developer URI for package name: " + strValueOf);
        }
        this.a.s0().a(new a(com.applovin.impl.sdk.network.a.a(this.a).c("GET").b("https://play.google.com/store/apps/details?id=" + strValueOf).a((Object) "").a(false).a(), this.a));
    }
}
