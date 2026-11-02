package com.tapjoy.internal;

import com.google.common.net.HttpHeaders;
import com.ironsource.G5;
import com.tapjoy.TJAdUnitConstants;
import java.io.InputStream;
import java.net.URI;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class bt<Result> extends bu<Result> {
    protected abstract Result a(bh bhVar);

    @Override // com.tapjoy.internal.bu
    public final Result a(URI uri, InputStream inputStream) {
        bh bhVarA = bh.a(inputStream);
        bhVarA.a("BASE_URI", uri);
        try {
            bhVarA.h();
            Result resultA = null;
            int iR = 0;
            String strM = null;
            while (bhVarA.j()) {
                String strL = bhVarA.l();
                if ("status".equals(strL)) {
                    iR = bhVarA.r();
                } else if (TJAdUnitConstants.String.MESSAGE.equals(strL)) {
                    strM = bhVarA.m();
                } else if ("data".equals(strL)) {
                    resultA = a(bhVarA);
                } else {
                    bhVarA.s();
                }
            }
            bhVarA.i();
            if (iR != 200) {
                throw new bv(iR, strM);
            }
            bhVarA.close();
            return resultA;
        } catch (Throwable th) {
            bhVarA.close();
            throw th;
        }
    }

    @Override // com.tapjoy.internal.bu
    public final Map<String, Object> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(HttpHeaders.ACCEPT, G5.M);
        return linkedHashMap;
    }
}
