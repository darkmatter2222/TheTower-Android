package io.grpc.internal;

/* JADX INFO: loaded from: classes5.dex */
abstract class ForwardingDeframerListener implements MessageDeframer.Listener {
    ForwardingDeframerListener() {
    }

    @Override // io.grpc.internal.MessageDeframer.Listener
    public void bytesRead(int i) {
        delegate().bytesRead(i);
    }

    @Override // io.grpc.internal.MessageDeframer.Listener
    public void deframeFailed(Throwable th) {
        delegate().deframeFailed(th);
    }

    @Override // io.grpc.internal.MessageDeframer.Listener
    public void deframerClosed(boolean z) {
        delegate().deframerClosed(z);
    }

    protected abstract MessageDeframer.Listener delegate();

    @Override // io.grpc.internal.MessageDeframer.Listener
    public void messagesAvailable(StreamListener.MessageProducer messageProducer) {
        delegate().messagesAvailable(messageProducer);
    }
}
