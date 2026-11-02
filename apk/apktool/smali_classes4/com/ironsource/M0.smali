.class public Lcom/ironsource/M0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/M0$a;
    }
.end annotation


# static fields
.field public static final e:I = -0x1


# instance fields
.field private final a:Lcom/ironsource/M0$a;

.field private final b:J

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/ironsource/M0$a;JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/M0;->a:Lcom/ironsource/M0$a;

    .line 3
    iput-wide p2, p0, Lcom/ironsource/M0;->b:J

    .line 4
    iput-wide p4, p0, Lcom/ironsource/M0;->c:J

    .line 5
    iput-wide p6, p0, Lcom/ironsource/M0;->d:J

    return-void
.end method


# virtual methods
.method public a()Lcom/ironsource/M0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/M0;->a:Lcom/ironsource/M0$a;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/M0;->d:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/M0;->c:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ironsource/M0;->b:J

    return-wide v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/M0;->a:Lcom/ironsource/M0$a;

    sget-object v1, Lcom/ironsource/M0$a;->d:Lcom/ironsource/M0$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/ironsource/M0$a;->e:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/M0;->a:Lcom/ironsource/M0$a;

    sget-object v1, Lcom/ironsource/M0$a;->a:Lcom/ironsource/M0$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/ironsource/M0$a;->b:Lcom/ironsource/M0$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/ironsource/M0$a;->c:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
