.class public final Lcom/ironsource/pb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/pb;
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
    invoke-direct {p0}, Lcom/ironsource/pb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/pb;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ironsource/pb;->a()Lcom/ironsource/pb;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/ironsource/pb;)V
    .locals 1

    const-string v0, "testInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/ironsource/pb;->a(Lcom/ironsource/pb;)V

    return-void
.end method
