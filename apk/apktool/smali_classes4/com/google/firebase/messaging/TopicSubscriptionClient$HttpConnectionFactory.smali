.class public interface abstract Lcom/google/firebase/messaging/TopicSubscriptionClient$HttpConnectionFactory;
.super Ljava/lang/Object;
.source "TopicSubscriptionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/TopicSubscriptionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpConnectionFactory"
.end annotation


# virtual methods
.method public abstract createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
