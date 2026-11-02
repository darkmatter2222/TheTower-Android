.class public final Lcom/ironsource/mediationsdk/demandOnly/h$d;
.super Lcom/ironsource/mediationsdk/demandOnly/h$a;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/demandOnly/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p3, p4, p5}, Lcom/ironsource/mediationsdk/demandOnly/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$d;->d:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/ironsource/mediationsdk/demandOnly/h$d;->e:Landroid/app/Activity;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/demandOnly/h$d;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/demandOnly/q$b;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/demandOnly/h$d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/q$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/demandOnly/q$b;->a(Lcom/ironsource/mediationsdk/demandOnly/h$d;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/demandOnly/h$d;->e:Landroid/app/Activity;

    return-object v0
.end method
