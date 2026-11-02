.class public final Lcom/ironsource/Gd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Gd$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Gd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Gd$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Gd$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Gd;->a:Lcom/ironsource/Gd$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
