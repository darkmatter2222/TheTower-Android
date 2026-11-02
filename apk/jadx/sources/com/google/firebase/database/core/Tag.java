package com.google.firebase.database.core;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes4.dex */
public final class Tag {
    private final long tagNumber;

    public Tag(long j) {
        this.tagNumber = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.tagNumber == ((Tag) obj).tagNumber;
    }

    public long getTagNumber() {
        return this.tagNumber;
    }

    public int hashCode() {
        long j = this.tagNumber;
        return (int) (j ^ (j >>> 32));
    }

    public String toString() {
        return "Tag{tagNumber=" + this.tagNumber + AbstractJsonLexerKt.END_OBJ;
    }
}
