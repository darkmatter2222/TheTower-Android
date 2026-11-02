package com.tapjoy.internal;

import com.ironsource.G5;
import com.tapjoy.TapjoyConstants;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class is<Result> extends bt<Result> {
    @Override // com.tapjoy.internal.bt
    @Nullable
    public Result a(bh bhVar) {
        bhVar.s();
        return null;
    }

    @Override // com.tapjoy.internal.bu
    public final String b() {
        return "POST";
    }

    @Override // com.tapjoy.internal.bu
    public final String d() {
        return G5.M;
    }

    @Override // com.tapjoy.internal.bu
    public Map<String, Object> e() {
        Map<String, Object> mapE = super.e();
        hj hjVarA = hj.a();
        mapE.put("sdk_ver", hjVarA.l + "/Android");
        mapE.put(TapjoyConstants.TJC_API_KEY, hjVarA.k);
        if (hg.a) {
            mapE.put("debug", Boolean.TRUE);
        }
        return mapE;
    }

    @Override // com.tapjoy.internal.bu
    public Result f() throws Exception {
        try {
            return (Result) super.f();
        } catch (Exception e) {
            new Object[]{this};
            throw e;
        }
    }
}
