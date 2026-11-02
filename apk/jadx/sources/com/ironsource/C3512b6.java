package com.ironsource;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.b6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public class C3512b6 {
    private final Context a;
    private final C3655j5 b;
    private final HandlerC3451a6 c;
    private final Ub d;
    private final B7 e = Pb.k0().a();

    /* JADX INFO: renamed from: com.ironsource.b6$a */
    class a implements Vc {
        final /* synthetic */ Vc a;

        /* JADX INFO: renamed from: com.ironsource.b6$a$a, reason: collision with other inner class name */
        class C1102a extends JSONObject {
            C1102a() throws JSONException {
                put("lastReferencedTime", System.currentTimeMillis());
            }
        }

        a(Vc vc) {
            this.a = vc;
        }

        @Override // com.ironsource.Vc
        public void a(D8 d8) {
            this.a.a(d8);
            try {
                C3512b6.this.d.a(d8.getName(), new C1102a());
            } catch (Exception e) {
                C3801r4.d().a(e);
                IronLog.INTERNAL.error(e.toString());
            }
        }

        @Override // com.ironsource.Vc
        public void a(D8 d8, C3861u8 c3861u8) {
            this.a.a(d8, c3861u8);
        }
    }

    public C3512b6(Context context, C3655j5 c3655j5, HandlerC3451a6 handlerC3451a6, Ub ub) {
        this.a = context;
        this.b = c3655j5;
        this.c = handlerC3451a6;
        this.d = ub;
    }

    public void a(D8 d8) throws Exception {
        if (d8.exists()) {
            if (!d8.delete()) {
                throw new Exception("Failed to delete file");
            }
            this.d.a(d8.getName());
        }
    }

    public void a(D8 d8, String str, int i, int i2, Vc vc) throws Exception {
        if (TextUtils.isEmpty(str)) {
            throw new Exception(Z5.a.a);
        }
        if (this.e.a(this.b.a()) <= 0) {
            throw new Exception(C3546d4.A);
        }
        if (!X3.h(this.a)) {
            throw new Exception(C3546d4.C);
        }
        this.c.a(d8.getPath(), new a(vc));
        if (!d8.exists()) {
            this.b.a(d8, str, i, i2, this.c);
            return;
        }
        Message message = new Message();
        message.obj = d8;
        message.what = 1015;
        this.c.sendMessage(message);
    }

    public void a(D8 d8, JSONObject jSONObject) throws Exception {
        if (jSONObject == null) {
            throw new Exception("Missing attributes to update");
        }
        if (!d8.exists()) {
            throw new Exception("File does not exist");
        }
        if (!this.d.b(d8.getName(), jSONObject)) {
            throw new Exception("Failed to update attribute");
        }
    }

    public void b(D8 d8) throws Exception {
        if (d8.exists()) {
            ArrayList<D8> filesInFolderRecursive = IronSourceStorageUtils.getFilesInFolderRecursive(d8);
            if (!IronSourceStorageUtils.deleteFolderContentRecursive(d8) || !d8.delete()) {
                throw new Exception("Failed to delete folder");
            }
            this.d.a(filesInFolderRecursive);
        }
    }

    public JSONObject c(D8 d8) throws Exception {
        if (d8.exists()) {
            return IronSourceStorageUtils.buildFilesMapOfDirectory(d8, this.d.b());
        }
        throw new Exception("Folder does not exist");
    }

    public long d(D8 d8) throws Exception {
        if (d8.exists()) {
            return IronSourceStorageUtils.getTotalSizeOfDir(d8);
        }
        throw new Exception("Folder does not exist");
    }
}
