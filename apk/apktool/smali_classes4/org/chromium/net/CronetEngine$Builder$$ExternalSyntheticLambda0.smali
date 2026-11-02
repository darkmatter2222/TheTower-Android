.class public final synthetic Lorg/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/chromium/net/ExperimentalOptionsTranslator$JsonPatch;


# instance fields
.field public final synthetic f$0:Lorg/chromium/net/QuicOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/QuicOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/QuicOptions;

    return-void
.end method


# virtual methods
.method public final applyTo(Lorg/json/JSONObject;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/chromium/net/CronetEngine$Builder$$ExternalSyntheticLambda0;->f$0:Lorg/chromium/net/QuicOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;->lambda$setQuicOptions$0(Lorg/chromium/net/QuicOptions;Lorg/json/JSONObject;)V

    return-void
.end method
