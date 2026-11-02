package com.ironsource;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.ironsource.a6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class HandlerC3451a6 extends Handler {
    private final ConcurrentHashMap<String, Vc> a;

    public HandlerC3451a6(Looper looper) {
        super(looper);
        this.a = new ConcurrentHashMap<>();
    }

    private boolean a(int i) {
        return i == 1016 || i == 1015;
    }

    void a(String str, Vc vc) {
        if (str == null || vc == null) {
            return;
        }
        this.a.put(str, vc);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            D8 d8 = (D8) message.obj;
            String path = d8.getPath();
            Vc vc = this.a.get(path);
            if (vc == null) {
                return;
            }
            if (a(message.what)) {
                vc.a(d8);
            } else {
                int i = message.what;
                vc.a(d8, new C3861u8(i, C3905wg.a(i)));
            }
            this.a.remove(path);
        } catch (Throwable th) {
            C3801r4.d().a(th);
            IronLog.INTERNAL.error(th.toString());
        }
    }
}
