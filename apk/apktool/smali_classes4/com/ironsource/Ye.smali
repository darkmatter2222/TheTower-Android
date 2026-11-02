.class public final Lcom/ironsource/Ye;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Ye$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/e6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ironsource/o7;)V
    .locals 2

    const-string v0, "applicationLifecycleService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/Ye$a;

    invoke-direct {v0, p0}, Lcom/ironsource/Ye$a;-><init>(Lcom/ironsource/Ye;)V

    .line 2
    new-instance v1, Lcom/ironsource/e6;

    invoke-direct {v1, p1, v0}, Lcom/ironsource/e6;-><init>(Lcom/ironsource/o7;Lcom/ironsource/Xe;)V

    iput-object v1, p0, Lcom/ironsource/Ye;->a:Lcom/ironsource/e6;

    return-void
.end method
