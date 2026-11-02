package com.google.firebase.firestore;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FieldValue {
    private static final DeleteFieldValue DELETE_INSTANCE = new DeleteFieldValue();
    private static final ServerTimestampFieldValue SERVER_TIMESTAMP_INSTANCE = new ServerTimestampFieldValue();

    static class ArrayRemoveFieldValue extends FieldValue {
        private final List<Object> elements;

        ArrayRemoveFieldValue(List<Object> list) {
            this.elements = list;
        }

        List<Object> getElements() {
            return this.elements;
        }

        @Override // com.google.firebase.firestore.FieldValue
        String getMethodName() {
            return "FieldValue.arrayRemove";
        }
    }

    static class ArrayUnionFieldValue extends FieldValue {
        private final List<Object> elements;

        ArrayUnionFieldValue(List<Object> list) {
            this.elements = list;
        }

        List<Object> getElements() {
            return this.elements;
        }

        @Override // com.google.firebase.firestore.FieldValue
        String getMethodName() {
            return "FieldValue.arrayUnion";
        }
    }

    static class DeleteFieldValue extends FieldValue {
        DeleteFieldValue() {
        }

        @Override // com.google.firebase.firestore.FieldValue
        String getMethodName() {
            return "FieldValue.delete";
        }
    }

    static class NumericIncrementFieldValue extends FieldValue {
        private final Number operand;

        NumericIncrementFieldValue(Number number) {
            this.operand = number;
        }

        @Override // com.google.firebase.firestore.FieldValue
        String getMethodName() {
            return "FieldValue.increment";
        }

        Number getOperand() {
            return this.operand;
        }
    }

    static class NumericMaximumFieldValue extends FieldValue {
        private final Number operand;

        NumericMaximumFieldValue(Number number) {
            this.operand = number;
        }

        @Override // com.google.firebase.firestore.FieldValue
        String getMethodName() {
            return "FieldValue.maximum";
        }

        Number getOperand() {
            return this.operand;
        }
    }

    static class NumericMinimumFieldValue extends FieldValue {
        private final Number operand;

        NumericMinimumFieldValue(Number number) {
            this.operand = number;
        }

        @Override // com.google.firebase.firestore.FieldValue
        String getMethodName() {
            return "FieldValue.minimum";
        }

        Number getOperand() {
            return this.operand;
        }
    }

    static class ServerTimestampFieldValue extends FieldValue {
        ServerTimestampFieldValue() {
        }

        @Override // com.google.firebase.firestore.FieldValue
        String getMethodName() {
            return "FieldValue.serverTimestamp";
        }
    }

    FieldValue() {
    }

    public static FieldValue arrayRemove(Object... objArr) {
        return new ArrayRemoveFieldValue(Arrays.asList(objArr));
    }

    public static FieldValue arrayUnion(Object... objArr) {
        return new ArrayUnionFieldValue(Arrays.asList(objArr));
    }

    public static FieldValue delete() {
        return DELETE_INSTANCE;
    }

    public static FieldValue increment(double d) {
        return new NumericIncrementFieldValue(Double.valueOf(d));
    }

    public static FieldValue increment(long j) {
        return new NumericIncrementFieldValue(Long.valueOf(j));
    }

    public static FieldValue maximum(double d) {
        return new NumericMaximumFieldValue(Double.valueOf(d));
    }

    public static FieldValue maximum(long j) {
        return new NumericMaximumFieldValue(Long.valueOf(j));
    }

    public static FieldValue minimum(double d) {
        return new NumericMinimumFieldValue(Double.valueOf(d));
    }

    public static FieldValue minimum(long j) {
        return new NumericMinimumFieldValue(Long.valueOf(j));
    }

    public static FieldValue serverTimestamp() {
        return SERVER_TIMESTAMP_INSTANCE;
    }

    public static VectorValue vector(double[] dArr) {
        return new VectorValue(dArr);
    }

    abstract String getMethodName();
}
