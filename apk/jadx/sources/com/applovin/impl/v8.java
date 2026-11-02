package com.applovin.impl;

import android.util.Xml;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes2.dex */
public class v8 {
    private final com.applovin.impl.sdk.p a;
    private Stack b;
    private StringBuilder c;
    private long d;
    private b e;

    class a implements ContentHandler {
        a() {
        }

        @Override // org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) {
            String strTrim = new String(Arrays.copyOfRange(cArr, i, i2)).trim();
            if (StringUtils.isValidString(strTrim)) {
                v8.this.c.append(strTrim);
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void endDocument() {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()) - v8.this.d;
            com.applovin.impl.sdk.p unused = v8.this.a;
            if (com.applovin.impl.sdk.p.a()) {
                v8.this.a.a("XmlParser", "Finished parsing in " + seconds + " seconds");
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            v8 v8Var = v8.this;
            v8Var.e = (b) v8Var.b.pop();
            v8.this.e.d(v8.this.c.toString().trim());
            v8.this.c.setLength(0);
        }

        @Override // org.xml.sax.ContentHandler
        public void endPrefixMapping(String str) {
        }

        @Override // org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) {
        }

        @Override // org.xml.sax.ContentHandler
        public void processingInstruction(String str, String str2) {
        }

        @Override // org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
        }

        @Override // org.xml.sax.ContentHandler
        public void skippedEntity(String str) {
        }

        @Override // org.xml.sax.ContentHandler
        public void startDocument() {
            com.applovin.impl.sdk.p unused = v8.this.a;
            if (com.applovin.impl.sdk.p.a()) {
                v8.this.a.a("XmlParser", "Begin parsing...");
            }
            v8.this.d = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        }

        @Override // org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
            try {
                b bVar = !v8.this.b.isEmpty() ? (b) v8.this.b.peek() : null;
                b bVar2 = new b(str2, v8.this.a(attributes), bVar);
                if (bVar != null) {
                    bVar.a(bVar2);
                }
                v8.this.b.push(bVar2);
            } catch (Exception e) {
                com.applovin.impl.sdk.p unused = v8.this.a;
                if (com.applovin.impl.sdk.p.a()) {
                    v8.this.a.a("XmlParser", "Unable to process element <" + str2 + ">", e);
                }
                throw new SAXException("Failed to start element", e);
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void startPrefixMapping(String str, String str2) {
        }
    }

    private static class b extends u8 {
        b(String str, Map map, u8 u8Var) {
            super(str, map, u8Var);
        }

        void a(u8 u8Var) {
            if (u8Var == null) {
                throw new IllegalArgumentException("None specified.");
            }
            this.e.add(u8Var);
        }

        void d(String str) {
            this.d = str;
        }
    }

    v8(com.applovin.impl.sdk.l lVar) {
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        this.a = lVar.Q();
    }

    public static u8 a(String str, com.applovin.impl.sdk.l lVar) {
        return new v8(lVar).a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map a(Attributes attributes) {
        if (attributes == null) {
            return Collections.EMPTY_MAP;
        }
        int length = attributes.getLength();
        HashMap map = new HashMap(length);
        for (int i = 0; i < length; i++) {
            map.put(attributes.getQName(i), attributes.getValue(i));
        }
        return map;
    }

    public u8 a(String str) throws SAXException {
        if (str == null) {
            throw new IllegalArgumentException("Unable to parse. No XML specified.");
        }
        this.c = new StringBuilder();
        this.b = new Stack();
        this.e = null;
        Xml.parse(str, new a());
        b bVar = this.e;
        if (bVar != null) {
            return bVar;
        }
        throw new SAXException("Unable to parse XML into node");
    }
}
