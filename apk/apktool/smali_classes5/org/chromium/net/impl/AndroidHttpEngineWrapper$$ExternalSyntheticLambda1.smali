.class public final synthetic Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/impl/CronetExceptionTranslationUtils$CronetWork;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

.field public final synthetic f$1:Ljava/net/URL;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/net/URL;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda1;->f$0:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    iput-object p2, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda1;->f$0:Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/net/URL;

    invoke-static {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;->$r8$lambda$TupJpCHcfem7kwicnhvsBzU93as(Lorg/chromium/net/impl/AndroidHttpEngineWrapper;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method
