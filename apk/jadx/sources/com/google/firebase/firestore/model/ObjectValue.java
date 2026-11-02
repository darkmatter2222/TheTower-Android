package com.google.firebase.firestore.model;

import com.google.firebase.firestore.model.mutation.FieldMask;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.MapValue;
import com.google.firestore.v1.Value;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes4.dex */
public final class ObjectValue implements Cloneable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Object lock;
    private volatile Value mergedValue;
    private final Map<String, Object> overlayMap;
    private Value partialValue;

    public ObjectValue() {
        this(Value.newBuilder().setMapValue(MapValue.getDefaultInstance()).build());
    }

    public ObjectValue(Value value) {
        this.lock = new Object();
        this.overlayMap = new HashMap();
        Assert.hardAssert(value.hasMapValue(), "ObjectValues should be backed by a MapValue", new Object[0]);
        Assert.hardAssert(!ServerTimestamps.isServerTimestamp(value), "ServerTimestamps should not be used as an ObjectValue", new Object[0]);
        this.mergedValue = value;
    }

    private static MapValue applyOverlay(Value value, FieldPath fieldPath, Map<String, Object> map) {
        Value valueExtractNestedValue = extractNestedValue(value, fieldPath);
        MapValue.Builder builder = Values.isMapValue(valueExtractNestedValue) ? valueExtractNestedValue.getMapValue().toBuilder() : MapValue.newBuilder();
        boolean z = false;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String key = entry.getKey();
            Object value2 = entry.getValue();
            if (value2 instanceof Map) {
                MapValue mapValueApplyOverlay = applyOverlay(value, fieldPath.append(key), (Map) value2);
                if (mapValueApplyOverlay != null) {
                    builder.putFields(key, Value.newBuilder().setMapValue(mapValueApplyOverlay).build());
                    z = true;
                }
            } else {
                if (value2 instanceof Value) {
                    builder.putFields(key, (Value) value2);
                } else if (builder.containsFields(key)) {
                    Assert.hardAssert(value2 == null, "Expected entry to be a Map, a Value or null", new Object[0]);
                    builder.removeFields(key);
                }
                z = true;
            }
        }
        if (z) {
            return builder.build();
        }
        return null;
    }

    private Value buildProto() {
        Value valueBuild;
        MapValue mapValueApplyOverlay;
        Value value = this.mergedValue;
        if (value != null) {
            return value;
        }
        synchronized (this.lock) {
            valueBuild = this.mergedValue;
            if (valueBuild == null) {
                valueBuild = (this.overlayMap.isEmpty() || (mapValueApplyOverlay = applyOverlay(this.partialValue, FieldPath.EMPTY_PATH, this.overlayMap)) == null) ? this.partialValue : Value.newBuilder().setMapValue(mapValueApplyOverlay).build();
                this.mergedValue = valueBuild;
                this.partialValue = null;
                this.overlayMap.clear();
            }
        }
        return valueBuild;
    }

    private FieldMask extractFieldMask(MapValue mapValue) {
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Value> entry : mapValue.getFieldsMap().entrySet()) {
            FieldPath fieldPathFromSingleSegment = FieldPath.fromSingleSegment(entry.getKey());
            if (Values.isMapValue(entry.getValue())) {
                Set<FieldPath> mask = extractFieldMask(entry.getValue().getMapValue()).getMask();
                if (mask.isEmpty()) {
                    hashSet.add(fieldPathFromSingleSegment);
                } else {
                    Iterator<FieldPath> it = mask.iterator();
                    while (it.hasNext()) {
                        hashSet.add(fieldPathFromSingleSegment.append(it.next()));
                    }
                }
            } else {
                hashSet.add(fieldPathFromSingleSegment);
            }
        }
        return FieldMask.fromSet(hashSet);
    }

    private static Value extractNestedValue(Value value, FieldPath fieldPath) {
        if (fieldPath.isEmpty()) {
            return value;
        }
        for (int i = 0; i < fieldPath.length() - 1; i++) {
            value = value.getMapValue().getFieldsOrDefault(fieldPath.getSegment(i), null);
            if (!Values.isMapValue(value)) {
                return null;
            }
        }
        return value.getMapValue().getFieldsOrDefault(fieldPath.getLastSegment(), null);
    }

    public static ObjectValue fromMap(Map<String, Value> map) {
        return new ObjectValue(Values.encodeValue(map));
    }

    private void setOverlay(FieldPath fieldPath, Value value) {
        synchronized (this.lock) {
            if (this.mergedValue != null) {
                this.partialValue = this.mergedValue;
                this.mergedValue = null;
            }
            setOverlay(this.overlayMap, fieldPath, value);
        }
    }

    private static void setOverlay(Map<String, Object> map, FieldPath fieldPath, Value value) {
        Map<String, Object> map2;
        for (int i = 0; i < fieldPath.length() - 1; i++) {
            String segment = fieldPath.getSegment(i);
            Object obj = map.get(segment);
            if (obj instanceof Map) {
                map2 = (Map) obj;
            } else {
                if (obj instanceof Value) {
                    Value value2 = (Value) obj;
                    if (value2.hasMapValue()) {
                        HashMap map3 = new HashMap(value2.getMapValue().getFieldsMap());
                        map.put(segment, map3);
                        map = map3;
                    }
                }
                map2 = new HashMap<>();
                map.put(segment, map2);
            }
            map = map2;
        }
        map.put(fieldPath.getLastSegment(), value);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ObjectValue m1451clone() {
        return new ObjectValue(buildProto());
    }

    public void delete(FieldPath fieldPath) {
        Assert.hardAssert(!fieldPath.isEmpty(), "Cannot delete field for empty path on ObjectValue", new Object[0]);
        setOverlay(fieldPath, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ObjectValue) {
            return Values.equals(buildProto(), ((ObjectValue) obj).buildProto());
        }
        return false;
    }

    public Value get(FieldPath fieldPath) {
        return extractNestedValue(buildProto(), fieldPath);
    }

    public FieldMask getFieldMask() {
        return extractFieldMask(buildProto().getMapValue());
    }

    public Map<String, Value> getFieldsMap() {
        return buildProto().getMapValue().getFieldsMap();
    }

    public int hashCode() {
        return buildProto().hashCode();
    }

    public void set(FieldPath fieldPath, Value value) {
        Assert.hardAssert(!fieldPath.isEmpty(), "Cannot set field for empty path on ObjectValue", new Object[0]);
        setOverlay(fieldPath, value);
    }

    public void setAll(Map<FieldPath, Value> map) {
        for (Map.Entry<FieldPath, Value> entry : map.entrySet()) {
            FieldPath key = entry.getKey();
            if (entry.getValue() == null) {
                delete(key);
            } else {
                set(key, entry.getValue());
            }
        }
    }

    public String toString() {
        return "ObjectValue{internalValue=" + Values.canonicalId(buildProto()) + AbstractJsonLexerKt.END_OBJ;
    }
}
