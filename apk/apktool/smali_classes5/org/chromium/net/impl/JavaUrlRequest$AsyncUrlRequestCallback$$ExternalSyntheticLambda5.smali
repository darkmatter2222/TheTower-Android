.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    iput p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;->f$0:Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    iget v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5;->f$1:I

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest$AsyncUrlRequestCallback;->lambda$sendStatus$0(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V

    return-void
.end method
