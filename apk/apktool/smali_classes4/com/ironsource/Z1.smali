.class public final Lcom/ironsource/Z1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Z1$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Z1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Z1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Z1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Z1;->a:Lcom/ironsource/Z1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/Z1;->a:Lcom/ironsource/Z1$a;

    invoke-virtual {v0}, Lcom/ironsource/Z1$a;->a()V

    return-void
.end method
