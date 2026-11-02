package com.google.firebase.firestore.model.mutation;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.model.Values;
import com.google.firebase.firestore.util.Assert;
import com.google.firestore.v1.Value;

/* JADX INFO: loaded from: classes4.dex */
public class NumericIncrementTransformOperation extends NumericTransformOperation {
    public NumericIncrementTransformOperation(Value value) {
        super(value);
    }

    private long safeIncrement(long j, long j2) {
        long j3 = j + j2;
        if (((j ^ j3) & (j2 ^ j3)) >= 0) {
            return j3;
        }
        return j3 >= 0 ? Long.MIN_VALUE : Long.MAX_VALUE;
    }

    @Override // com.google.firebase.firestore.model.mutation.TransformOperation
    public Value applyToLocalView(Value value, Timestamp timestamp) {
        Value valueComputeBaseValue = computeBaseValue(value);
        if (Values.isInteger(valueComputeBaseValue) && Values.isInteger(this.operand)) {
            return Value.newBuilder().setIntegerValue(safeIncrement(valueComputeBaseValue.getIntegerValue(), operandAsLong())).build();
        }
        if (Values.isInteger(valueComputeBaseValue)) {
            return Value.newBuilder().setDoubleValue(valueComputeBaseValue.getIntegerValue() + operandAsDouble()).build();
        }
        Assert.hardAssert(Values.isDouble(valueComputeBaseValue), "Expected NumberValue to be of type DoubleValue, but was ", value.getClass().getCanonicalName());
        return Value.newBuilder().setDoubleValue(valueComputeBaseValue.getDoubleValue() + operandAsDouble()).build();
    }

    @Override // com.google.firebase.firestore.model.mutation.NumericTransformOperation, com.google.firebase.firestore.model.mutation.TransformOperation
    public Value computeBaseValue(Value value) {
        return Values.isNumber(value) ? value : Value.newBuilder().setIntegerValue(0L).build();
    }
}
