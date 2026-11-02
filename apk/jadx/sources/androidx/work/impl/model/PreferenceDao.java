package androidx.work.impl.model;

import androidx.lifecycle.LiveData;

/* JADX INFO: loaded from: classes2.dex */
public interface PreferenceDao {
    Long getLongValue(String str);

    LiveData<Long> getObservableLongValue(String str);

    void insertPreference(Preference preference);
}
