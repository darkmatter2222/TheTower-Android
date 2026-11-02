package com.google.firebase.firestore.model;

/* JADX INFO: loaded from: classes4.dex */
final class AutoValue_FieldIndex_IndexState extends FieldIndex.IndexState {
    private final FieldIndex.IndexOffset offset;
    private final long sequenceNumber;

    AutoValue_FieldIndex_IndexState(long j, FieldIndex.IndexOffset indexOffset) {
        this.sequenceNumber = j;
        if (indexOffset == null) {
            throw new NullPointerException("Null offset");
        }
        this.offset = indexOffset;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FieldIndex.IndexState) {
            FieldIndex.IndexState indexState = (FieldIndex.IndexState) obj;
            if (this.sequenceNumber == indexState.getSequenceNumber() && this.offset.equals(indexState.getOffset())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.firebase.firestore.model.FieldIndex.IndexState
    public FieldIndex.IndexOffset getOffset() {
        return this.offset;
    }

    @Override // com.google.firebase.firestore.model.FieldIndex.IndexState
    public long getSequenceNumber() {
        return this.sequenceNumber;
    }

    public int hashCode() {
        long j = this.sequenceNumber;
        return ((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.offset.hashCode();
    }

    public String toString() {
        return "IndexState{sequenceNumber=" + this.sequenceNumber + ", offset=" + this.offset + "}";
    }
}
