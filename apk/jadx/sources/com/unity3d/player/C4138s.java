package com.unity3d.player;

import com.ironsource.mediationsdk.logger.IronSourceError;
import java.lang.reflect.AccessibleObject;

/* JADX INFO: renamed from: com.unity3d.player.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4138s {
    public final Class a;
    public final String b;
    public final String c;
    public final int d;
    public volatile AccessibleObject e;

    public C4138s(Class cls, String str, String str2) {
        this.a = cls;
        this.b = str;
        this.c = str2;
        this.d = str2.hashCode() + ((str.hashCode() + ((cls.hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31)) * 31);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C4138s) {
            C4138s c4138s = (C4138s) obj;
            if (this.d == c4138s.d && this.c.equals(c4138s.c) && this.b.equals(c4138s.b) && this.a.equals(c4138s.a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.d;
    }
}
