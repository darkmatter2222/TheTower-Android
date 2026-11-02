package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public class d0 extends c0 {
    private final String f;
    private final com.applovin.impl.sdk.ad.b g;
    private final List h;
    private final d i;
    private StringBuffer j;
    private final Object k;
    private final ExecutorService l;
    private final String m;
    private List n;
    private List o;

    class a implements e0.a {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                if (((Boolean) d0.this.a.a(c5.W0)).booleanValue()) {
                    synchronized (d0.this.k) {
                        StringUtils.replaceAll(d0.this.j, this.a, uri.toString());
                    }
                } else {
                    StringUtils.replaceAll(d0.this.j, this.a, uri.toString());
                }
                d0.this.g.a(uri.toString(), this.a);
                return;
            }
            com.applovin.impl.sdk.p pVar = d0.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                d0 d0Var = d0.this;
                d0Var.c.a(d0Var.b, "Failed to cache JavaScript resource " + this.a);
            }
            if (d0.this.i != null) {
                d0.this.i.a(d0.this.f, true);
            }
        }
    }

    class b implements e0.a {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        b(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri == null) {
                if (!d0.this.g.S().contains(this.b + this.c) || d0.this.i == null) {
                    return;
                }
                d0.this.i.a(d0.this.f, true);
                return;
            }
            if (((Boolean) d0.this.a.a(c5.W0)).booleanValue()) {
                synchronized (d0.this.k) {
                    StringUtils.replaceAll(d0.this.j, this.a, uri.toString());
                }
            } else {
                StringUtils.replaceAll(d0.this.j, this.a, uri.toString());
            }
            d0.this.g.a(uri.toString(), this.a);
        }
    }

    class c implements e0.a {
        final /* synthetic */ String a;

        c(String str) {
            this.a = str;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri == null) {
                if (d0.this.i != null) {
                    d0.this.i.a(d0.this.f, true);
                }
            } else {
                if (((Boolean) d0.this.a.a(c5.W0)).booleanValue()) {
                    synchronized (d0.this.k) {
                        StringUtils.replaceAll(d0.this.j, this.a, uri.toString());
                    }
                } else {
                    StringUtils.replaceAll(d0.this.j, this.a, uri.toString());
                }
                d0.this.g.a(uri.toString(), this.a);
            }
        }
    }

    public interface d {
        void a(String str, boolean z);
    }

    public d0(String str, com.applovin.impl.sdk.ad.b bVar, List list, ExecutorService executorService, String str2, com.applovin.impl.sdk.l lVar, d dVar) {
        super("AsyncTaskCacheHTMLResources", lVar);
        this.f = str;
        this.g = bVar;
        this.h = list;
        this.l = executorService;
        this.m = str2;
        this.i = dVar;
        this.j = new StringBuffer(str);
        this.k = new Object();
    }

    private void a(String str) {
        d dVar;
        if (this.e.get() || (dVar = this.i) == null) {
            return;
        }
        dVar.a(str, false);
    }

    private void a(List list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(this.l.submit((e0) it.next()));
        }
        this.o = arrayList;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            try {
                ((Future) it2.next()).get();
            } catch (Throwable unused) {
            }
        }
    }

    private HashSet d() {
        HashSet hashSet = new HashSet();
        List listJ = this.g.J();
        Collection collectionG = g();
        for (String str : this.h) {
            char c2 = 0;
            int iIndexOf = 0;
            int i = 0;
            while (iIndexOf < this.f.length()) {
                if (this.e.get()) {
                    return null;
                }
                iIndexOf = this.f.indexOf(str, i);
                if (iIndexOf == -1) {
                    break;
                }
                int length = this.f.length();
                int i2 = iIndexOf;
                while (!collectionG.contains(Character.valueOf(this.f.charAt(i2))) && i2 < length) {
                    i2++;
                }
                if (i2 <= iIndexOf || i2 == length) {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.c.b(this.b, "Unable to cache resource; ad HTML is invalid.");
                    }
                    return null;
                }
                String strSubstring = this.f.substring(str.length() + iIndexOf, i2);
                String str2 = str + strSubstring;
                if (StringUtils.isValidString(strSubstring) && !listJ.contains(str2)) {
                    com.applovin.impl.sdk.ad.b bVar = this.g;
                    String[] strArr = new String[1];
                    strArr[c2] = str;
                    hashSet.add(new e0(str2, bVar, Arrays.asList(strArr), true, this.m, this.a, new b(str2, str, strSubstring)));
                } else if (com.applovin.impl.sdk.p.a()) {
                    this.c.a(this.b, "Skip caching of optional or non-resource " + strSubstring);
                }
                i = i2;
                c2 = 0;
            }
        }
        return hashSet;
    }

    private HashSet e() {
        HashSet hashSet = new HashSet();
        List listS = this.g.S();
        List listJ = this.g.J();
        ArrayList arrayList = new ArrayList();
        Collection collectionG = g();
        for (String str : this.h) {
            char c2 = 0;
            int iIndexOf = 0;
            int i = 0;
            while (iIndexOf < this.f.length()) {
                if (this.e.get()) {
                    return null;
                }
                iIndexOf = this.f.indexOf(str, i);
                if (iIndexOf == -1) {
                    break;
                }
                int length = this.f.length();
                int i2 = iIndexOf;
                while (!collectionG.contains(Character.valueOf(this.f.charAt(i2))) && i2 < length) {
                    i2++;
                }
                if (i2 <= iIndexOf || i2 == length) {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.c.b(this.b, "Unable to cache resource; ad HTML is invalid.");
                    }
                    return null;
                }
                String strSubstring = this.f.substring(str.length() + iIndexOf, i2);
                String str2 = str + strSubstring;
                if (!StringUtils.isValidString(strSubstring) || listJ.contains(str2)) {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.c.a(this.b, "Skip caching of optional or non-resource " + strSubstring);
                    }
                } else if (listS.contains(str2)) {
                    com.applovin.impl.sdk.ad.b bVar = this.g;
                    String[] strArr = new String[1];
                    strArr[c2] = str;
                    hashSet.add(new e0(str2, bVar, Arrays.asList(strArr), true, this.m, this.a, new c(str2)));
                } else {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.c.a(this.b, "Skip caching of uncategorized resource: " + strSubstring);
                    }
                    arrayList.add(str2);
                }
                i = i2;
                c2 = 0;
            }
        }
        this.g.a(arrayList);
        return hashSet;
    }

    private HashSet f() {
        HashSet hashSet = new HashSet();
        for (String str : StringUtils.getRegexMatches(StringUtils.match(this.f, (String) this.a.a(c5.u5)), 1)) {
            if (this.e.get()) {
                return null;
            }
            if (StringUtils.isValidString(str)) {
                hashSet.add(new e0(str, this.g, Collections.EMPTY_LIST, false, this.m, this.a, new a(str)));
            } else if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Skip caching of non-resource " + str);
            }
        }
        return hashSet;
    }

    private Collection g() {
        HashSet hashSet = new HashSet();
        for (char c2 : ((String) this.a.a(c5.G0)).toCharArray()) {
            hashSet.add(Character.valueOf(c2));
        }
        hashSet.add('\"');
        return hashSet;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Boolean call() throws InterruptedException {
        HashSet hashSetF;
        if (this.e.get()) {
            return Boolean.FALSE;
        }
        if (TextUtils.isEmpty(this.f)) {
            a(this.f);
            return Boolean.FALSE;
        }
        if (!((Boolean) this.a.a(c5.H0)).booleanValue()) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Resource caching is disabled, skipping cache...");
            }
            a(this.f);
            return Boolean.FALSE;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSetE = ((Boolean) this.a.a(c5.b1)).booleanValue() ? e() : d();
        if (hashSetE != null) {
            hashSet.addAll(hashSetE);
        }
        if (((Boolean) this.a.a(c5.t5)).booleanValue() && (hashSetF = f()) != null) {
            hashSet.addAll(hashSetF);
        }
        this.n = new ArrayList(hashSet);
        if (this.e.get()) {
            return Boolean.FALSE;
        }
        List list = this.n;
        if (list == null || list.isEmpty()) {
            a(this.f);
            return Boolean.FALSE;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Executing " + this.n.size() + " caching operations...");
        }
        if (this.a.s0().e()) {
            a(this.n);
        } else {
            this.l.invokeAll(this.n);
        }
        if (((Boolean) this.a.a(c5.W0)).booleanValue()) {
            synchronized (this.k) {
                a(this.j.toString());
            }
        } else {
            a(this.j.toString());
        }
        return Boolean.TRUE;
    }

    public void c() {
        List list = this.n;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((e0) it.next()).a(true);
            }
        }
        List<Future> list2 = this.o;
        if (list2 != null) {
            for (Future future : list2) {
                if (!future.isDone()) {
                    future.cancel(true);
                }
            }
        }
    }
}
