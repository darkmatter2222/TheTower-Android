package io.grpc.stub;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ServerCallStreamObserver<RespT> extends CallStreamObserver<RespT> {
    public void disableAutoRequest() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean isCancelled();

    @Override // io.grpc.stub.CallStreamObserver
    public abstract boolean isReady();

    @Override // io.grpc.stub.CallStreamObserver
    public abstract void request(int i);

    public abstract void setCompression(String str);

    @Override // io.grpc.stub.CallStreamObserver
    public abstract void setMessageCompression(boolean z);

    public abstract void setOnCancelHandler(Runnable runnable);

    public void setOnCloseHandler(Runnable runnable) {
        throw new UnsupportedOperationException();
    }

    @Override // io.grpc.stub.CallStreamObserver
    public abstract void setOnReadyHandler(Runnable runnable);
}
