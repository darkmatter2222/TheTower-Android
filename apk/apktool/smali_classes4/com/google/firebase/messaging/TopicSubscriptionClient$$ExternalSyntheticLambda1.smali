.class public final synthetic Lcom/google/firebase/messaging/TopicSubscriptionClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/messaging/TopicSubscriptionClient$HttpConnectionFactory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0

    .line 0
    invoke-static {p1}, Lcom/google/firebase/messaging/TopicSubscriptionClient;->lambda$setConnectionFactoryForTesting$1(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
