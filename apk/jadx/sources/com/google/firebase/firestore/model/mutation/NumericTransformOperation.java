package com.google.firebase.firestore.model.mutation;

import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.Value;

/* JADX INFO: loaded from: classes4.dex */
public abstract class NumericTransformOperation implements TransformOperation {
    protected final Value operand;

    public NumericTransformOperation(Value value) {
        Assert.hardAssert(Values.isNumber(value), "NumericTransformOperation expects a NumberValue operand", new Object[0]);
        this.operand = value;
    }

    @Override // com.google.firebase.firestore.model.mutation.TransformOperation
    public Value applyToRemoteDocument(Value value, Value value2) {
        return value2;
    }

    @Override // com.google.firebase.firestore.model.mutation.TransformOperation
    public Value computeBaseValue(Value value) {
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.operand.equals(((NumericTransformOperation) obj).operand);
    }

    public Value getOperand() {
        return this.operand;
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.operand.hashCode();
    }

    protected double operandAsDouble() {
        if (Values.isDouble(this.operand)) {
            return this.operand.getDoubleValue();
        }
        if (Values.isInteger(this.operand)) {
            return this.operand.getIntegerValue();
        }
        throw Assert.fail("Expected 'operand' to be of Number type, but was " + this.operand.getClass().getCanonicalName(), new Object[0]);
    }

    protected long operandAsLong() {
        if (Values.isDouble(this.operand)) {
            return (long) this.operand.getDoubleValue();
        }
        if (Values.isInteger(this.operand)) {
            return this.operand.getIntegerValue();
        }
        throw Assert.fail("Expected 'operand' to be of Number type, but was " + this.operand.getClass().getCanonicalName(), new Object[0]);
    }
}
