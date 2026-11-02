package com.google.firebase.firestore.model.mutation;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.model.Values;
import com.google.firestore.v1.Value;

/* JADX INFO: loaded from: classes4.dex */
public class NumericMaximumTransformOperation extends NumericTransformOperation {
    public NumericMaximumTransformOperation(Value value) {
        super(value);
    }

    @Override // com.google.firebase.firestore.model.mutation.TransformOperation
    public Value applyToLocalView(Value value, Timestamp timestamp) {
        if (!Values.isNumber(value)) {
            return this.operand;
        }
        if (Values.isInteger(value) && Values.isInteger(this.operand)) {
            return Value.newBuilder().setIntegerValue(Math.max(value.getIntegerValue(), operandAsLong())).build();
        }
        double integerValue = Values.isInteger(value) ? value.getIntegerValue() : value.getDoubleValue();
        double dOperandAsDouble = operandAsDouble();
        if (!Double.isNaN(integerValue)) {
            if (Double.isNaN(dOperandAsDouble)) {
                return this.operand;
            }
            return (integerValue != dOperandAsDouble && integerValue <= dOperandAsDouble) ? this.operand : value;
        }
        return value;
    }
}
