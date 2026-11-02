.class Lcom/ironsource/p3$e;
.super Lcom/ironsource/environment/thread/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/p3;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/ironsource/p3;


# direct methods
.method constructor <init>(Lcom/ironsource/p3;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/p3$e;->e:Lcom/ironsource/p3;

    iput-object p2, p0, Lcom/ironsource/p3$e;->b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    iput p3, p0, Lcom/ironsource/p3$e;->c:I

    iput-object p4, p0, Lcom/ironsource/p3$e;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ironsource/environment/thread/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3$e;->e:Lcom/ironsource/p3;

    iget-object v1, p0, Lcom/ironsource/p3$e;->b:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    iget v2, p0, Lcom/ironsource/p3$e;->c:I

    iget-object v3, p0, Lcom/ironsource/p3$e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/p3;->-$$Nest$ma(Lcom/ironsource/p3;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method
