package com.google.crypto.tink.internal;

import com.google.crypto.tink.util.Bytes;
import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class PrefixMap<P> {
    private static final Bytes EMPTY_BYTES = Bytes.copyFrom(new byte[0]);
    private final Map<Bytes, List<P>> entries;

    public static class Builder<P> {
        private final Map<Bytes, List<P>> entries = new HashMap();

        public PrefixMap<P> build() {
            return new PrefixMap<>(this.entries);
        }

        public Builder<P> put(Bytes bytes, P p) throws GeneralSecurityException {
            List<P> list;
            if (bytes.size() != 0 && bytes.size() != 5) {
                throw new GeneralSecurityException("PrefixMap only supports 0 and 5 byte prefixes");
            }
            if (this.entries.containsKey(bytes)) {
                list = this.entries.get(bytes);
            } else {
                ArrayList arrayList = new ArrayList();
                this.entries.put(bytes, arrayList);
                list = arrayList;
            }
            list.add(p);
            return this;
        }
    }

    private static class ConcatenatedIterator<P> implements Iterator<P> {
        private final Iterator<P> it0;
        private final Iterator<P> it1;

        private ConcatenatedIterator(Iterator<P> it, Iterator<P> it2) {
            this.it0 = it;
            this.it1 = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.it0.hasNext() || this.it1.hasNext();
        }

        @Override // java.util.Iterator
        public P next() {
            return this.it0.hasNext() ? this.it0.next() : this.it1.next();
        }
    }

    private PrefixMap(Map<Bytes, List<P>> map) {
        this.entries = map;
    }

    public Iterable<P> getAllWithMatchingPrefix(byte[] bArr) {
        final List<P> list = this.entries.get(EMPTY_BYTES);
        final List<P> list2 = bArr.length >= 5 ? this.entries.get(Bytes.copyFrom(bArr, 0, 5)) : null;
        if (list == null && list2 == null) {
            return new ArrayList();
        }
        if (list == null) {
            return list2;
        }
        return list2 == null ? list : new Iterable<P>() { // from class: com.google.crypto.tink.internal.PrefixMap.1
            @Override // java.lang.Iterable
            public Iterator<P> iterator() {
                return new ConcatenatedIterator(list2.iterator(), list.iterator());
            }
        };
    }
}
