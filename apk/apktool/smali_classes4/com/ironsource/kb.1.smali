.class public final Lcom/ironsource/kb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/kb$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/mb;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/ironsource/mb;

    sget-object v1, Lcom/ironsource/z7;->a:Lcom/ironsource/z7;

    invoke-virtual {v1}, Lcom/ironsource/z7;->a()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ironsource/mb;-><init>(Ljava/util/UUID;Lcom/ironsource/kb;)V

    iput-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/kb;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/kb;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/kb;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0, p1}, Lcom/ironsource/Ca;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/ironsource/kb;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/kb;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0, p1}, Lcom/ironsource/mb;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->f()V

    return-void
.end method

.method public final a(Lcom/ironsource/ob;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0, p1}, Lcom/ironsource/mb;->a(Lcom/ironsource/ob;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/ironsource/lb$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->k()Lcom/ironsource/lb$a;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->l()Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/kb;->a:Lcom/ironsource/mb;

    invoke-virtual {v0}, Lcom/ironsource/mb;->n()V

    return-void
.end method
