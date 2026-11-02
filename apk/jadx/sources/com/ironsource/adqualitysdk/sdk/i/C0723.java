package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴳ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0723 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final Map f2688;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final ExecutorService f2689;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final List f2690;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0752 f2691;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C1000 f2692;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final Context f2693;

    static {
        HashMap map = new HashMap();
        map.put(StringFog.decrypt("M9HGcEd7Esk02tViWnkL5jPA\n", "XbSyBygJeY8=\n"), 1);
        map.put(StringFog.decrypt("mxvVDZ2+ht6bG9c3jLCG3ZsH\n", "/nWjZO/R6LM=\n"), 2);
        map.put(StringFog.decrypt("eToDt9pPjGVQLgW7yECKaXIyBao=\n", "EVtx060u/gA=\n"), 1);
        map.put(StringFog.decrypt("V5JIKW8OUq5Um3MtdxRSrg==\n", "NfcgSBlnPdw=\n"), 2);
        f2688 = Collections.unmodifiableMap(map);
    }

    public C0723(Context context, List list) {
        C1000 c1000 = new C1000();
        C0752 c0752 = new C0752();
        this.f2693 = context;
        this.f2692 = c1000;
        this.f2691 = c0752;
        this.f2690 = Collections.unmodifiableList(new ArrayList(list));
        this.f2689 = Executors.newSingleThreadExecutor();
    }
}
