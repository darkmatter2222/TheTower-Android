.class public final Lcom/ironsource/y9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/y9$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/y9$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/y9$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/y9$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/y9;->a:Lcom/ironsource/y9$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/y9;->a:Lcom/ironsource/y9$a;

    invoke-virtual {v0}, Lcom/ironsource/y9$a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
