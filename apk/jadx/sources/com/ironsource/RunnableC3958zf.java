package com.ironsource;

import android.os.Handler;
import android.os.Message;
import com.ironsource.sdk.utils.IronSourceStorageUtils;

/* JADX INFO: renamed from: com.ironsource.zf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
class RunnableC3958zf implements Runnable {
    private final Handler a;
    private final C3602g5 b;

    RunnableC3958zf(C3602g5 c3602g5, Handler handler) {
        this.b = c3602g5;
        this.a = handler;
    }

    Message a() {
        return new Message();
    }

    CallableC3548d6 a(C3602g5 c3602g5, String str, long j) {
        return new CallableC3548d6(c3602g5, str, j);
    }

    String a(String str) {
        return IronSourceStorageUtils.makeDir(str);
    }

    @Override // java.lang.Runnable
    public void run() throws Throwable {
        D8 d8 = new D8(this.b.b().getParent(), this.b.b().getName());
        Message messageA = a();
        messageA.obj = d8;
        String strA = a(d8.getParent());
        if (strA == null) {
            messageA.what = 1020;
            this.a.sendMessage(messageA);
        } else {
            C3620h5 c3620h5Call = a(new C3602g5(d8, this.b.e(), this.b.a(), this.b.c(), this.b.f(), this.b.d()), strA, 3L).call();
            messageA.what = c3620h5Call.b() == 200 ? 1016 : c3620h5Call.b();
            this.a.sendMessage(messageA);
        }
    }
}
