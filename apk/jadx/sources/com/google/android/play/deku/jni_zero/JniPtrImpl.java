package com.google.android.play.deku.jni_zero;

/* JADX INFO: loaded from: classes.dex */
class JniPtrImpl implements JniPtrInner {
    private long mNativePtr;

    JniPtrImpl(long j) {
        if (j == 0) {
            throw new IllegalArgumentException("JNI Zero internal error: if the pointer is 0, it should be converted to null");
        }
        this.mNativePtr = j;
    }

    @Override // com.google.android.play.deku.jni_zero.JniPtrInner
    public long getNativePtr() {
        long j = this.mNativePtr;
        if (j != 0) {
            return j;
        }
        throw new IllegalStateException("Trying to access an already-released JniPtr");
    }

    void release() {
        this.mNativePtr = 0L;
    }
}
