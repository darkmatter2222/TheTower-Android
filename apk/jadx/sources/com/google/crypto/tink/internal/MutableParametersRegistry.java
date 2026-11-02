package com.google.crypto.tink.internal;

import com.google.crypto.tink.Parameters;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableParametersRegistry {
    private static final MutableParametersRegistry globalInstance = new MutableParametersRegistry();
    private final Map<String, Parameters> parametersMap = new HashMap();

    MutableParametersRegistry() {
    }

    public static MutableParametersRegistry globalInstance() {
        return globalInstance;
    }

    public synchronized Parameters get(String str) throws GeneralSecurityException {
        if (!this.parametersMap.containsKey(str)) {
            throw new GeneralSecurityException("Name " + str + " does not exist");
        }
        return this.parametersMap.get(str);
    }

    public synchronized List<String> getNames() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.parametersMap.keySet());
        return Collections.unmodifiableList(arrayList);
    }

    public synchronized void put(String str, Parameters parameters) throws GeneralSecurityException {
        if (!this.parametersMap.containsKey(str)) {
            this.parametersMap.put(str, parameters);
        } else if (!this.parametersMap.get(str).equals(parameters)) {
            throw new GeneralSecurityException("Parameters object with name " + str + " already exists (" + this.parametersMap.get(str) + "), cannot insert " + parameters);
        }
    }

    public synchronized void putAll(Map<String, Parameters> map) throws GeneralSecurityException {
        for (Map.Entry<String, Parameters> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }
}
