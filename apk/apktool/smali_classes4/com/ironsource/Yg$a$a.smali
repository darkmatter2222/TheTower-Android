.class public final Lcom/ironsource/Yg$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Yg$a;
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
    invoke-direct {p0}, Lcom/ironsource/Yg$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/ironsource/Rg;)Lcom/ironsource/Yg;
    .locals 1

    const-string v0, "waterfallOperations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/ironsource/Wg;

    invoke-direct {p1, p2}, Lcom/ironsource/Wg;-><init>(Lcom/ironsource/Rg;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/ironsource/Vg;

    invoke-direct {p1, p2}, Lcom/ironsource/Vg;-><init>(Lcom/ironsource/Rg;)V

    return-object p1
.end method
