.class public final synthetic Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/JavaUrlRequest;

.field public final synthetic f$1:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iput-object p2, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;->f$1:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;->f$0:Lorg/chromium/net/impl/JavaUrlRequest;

    iget-object v1, p0, Lorg/chromium/net/impl/JavaUrlRequest$$ExternalSyntheticLambda15;->f$1:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/JavaUrlRequest;->$r8$lambda$yRZjnistK_LSFIhhQZTjA_r2CdQ(Lorg/chromium/net/impl/JavaUrlRequest;Ljava/nio/ByteBuffer;)V

    return-void
.end method
