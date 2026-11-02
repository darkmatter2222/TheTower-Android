.class public final Lcom/ironsource/environment/thread/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/environment/thread/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/environment/thread/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Lcom/ironsource/environment/thread/a;
    .locals 2

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lcom/ironsource/environment/thread/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/ironsource/environment/thread/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/ironsource/environment/thread/a;->a:Lcom/ironsource/environment/thread/a$a;

    new-instance v1, Lcom/ironsource/environment/thread/a$a$b;

    invoke-direct {v1, p1}, Lcom/ironsource/environment/thread/a$a$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/a$a;->a(Lkotlin/jvm/functions/Function0;)Lcom/ironsource/environment/thread/a;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final a(Lkotlin/jvm/functions/Function0;)Lcom/ironsource/environment/thread/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/ironsource/environment/thread/a;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/environment/thread/a$a$a;

    invoke-direct {v0, p1}, Lcom/ironsource/environment/thread/a$a$a;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
