.class Lcom/applovin/impl/j3$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/j3$a;->a(Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/j3$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/j3$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/j3$a$a;->a:Lcom/applovin/impl/j3$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/applovin/mediation/MaxDebuggerMultiAdActivity;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/j3$a$a;->a(Lcom/applovin/mediation/MaxDebuggerMultiAdActivity;)V

    return-void
.end method

.method public a(Lcom/applovin/mediation/MaxDebuggerMultiAdActivity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/j3$a$a;->a:Lcom/applovin/impl/j3$a;

    iget-object v0, v0, Lcom/applovin/impl/j3$a;->a:Lcom/applovin/impl/i3;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/a;->initialize(Lcom/applovin/impl/i3;)V

    return-void
.end method
