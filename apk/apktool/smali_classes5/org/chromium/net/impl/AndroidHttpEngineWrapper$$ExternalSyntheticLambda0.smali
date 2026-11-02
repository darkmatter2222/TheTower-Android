.class public final synthetic Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

.field public final synthetic f$1:Lorg/chromium/net/RequestFinishedInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    iput-object p2, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda0;->f$1:Lorg/chromium/net/RequestFinishedInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda0;->f$1:Lorg/chromium/net/RequestFinishedInfo;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->lambda$reportRequestFinished$1(Lorg/chromium/net/impl/VersionSafeCallbacks$RequestFinishedInfoListener;Lorg/chromium/net/RequestFinishedInfo;)V

    return-void
.end method
