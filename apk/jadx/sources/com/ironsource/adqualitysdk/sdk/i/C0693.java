package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.TreeSet;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᙇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0693 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final List f2643;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int f2644;

    public C0693(C0714 c0714) {
        this.f2644 = c0714.f2674;
        Collections.unmodifiableList(new ArrayList(c0714.f2673));
        Collections.unmodifiableList(new ArrayList(c0714.f2672));
        Collections.unmodifiableMap(new HashMap(c0714.f2671));
        this.f2643 = Collections.unmodifiableList(new ArrayList(c0714.f2670));
        Collections.unmodifiableList(new ArrayList(c0714.f2669));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m2250() {
        String string;
        List<Integer> list = this.f2643;
        if (list.isEmpty()) {
            string = StringFog.decrypt("Y5StTg==\n", "DfvDKyTqmWg=\n");
        } else {
            TreeSet<Integer> treeSet = new TreeSet();
            for (Integer num : list) {
                if (num != null) {
                    treeSet.add(num);
                }
            }
            if (treeSet.isEmpty()) {
                string = StringFog.decrypt("w75bLw==\n", "rdE1Sis+HN0=\n");
            } else {
                StringBuilder sb = new StringBuilder();
                boolean z = true;
                for (Integer num2 : treeSet) {
                    if (!z) {
                        sb.append(AbstractJsonLexerKt.COMMA);
                    }
                    sb.append(num2);
                    z = false;
                }
                string = sb.toString();
            }
        }
        return AbstractC0270.m2002("qZRFakwiHJKo\n", "kucsDSJDcOE=\n", new StringBuilder().append(StringFog.decrypt("4JCtjnVW9Pis\n", "lqKW/RY5hp0=\n")).append(this.f2644).append(StringFog.decrypt("2w==\n", "9MxBugYagPE=\n")).append(13), string);
    }
}
