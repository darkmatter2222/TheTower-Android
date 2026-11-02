.class public final Lcom/ironsource/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/f1$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/f1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/f1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/f1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/f1;->a:Lcom/ironsource/f1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/ironsource/f1;->a:Lcom/ironsource/f1$a;

    invoke-virtual {v0}, Lcom/ironsource/f1$a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/ironsource/f1;->a:Lcom/ironsource/f1$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/f1$a;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
