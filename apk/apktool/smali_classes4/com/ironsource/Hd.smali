.class public final Lcom/ironsource/Hd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Hd$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/ironsource/Hd$a;

.field public static final c:Ljava/lang/String; = "type"

.field public static final d:Ljava/lang/String; = "single"

.field public static final e:Ljava/lang/String; = "onShowSuccess"

.field public static final f:Ljava/lang/String; = "onLoadSuccess"


# instance fields
.field private final a:Lcom/ironsource/z6$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/Hd$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Hd$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Hd;->b:Lcom/ironsource/Hd$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "features"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x714c9322

    if-eq v0, v1, :cond_4

    const v1, -0x3b996119

    if-eq v0, v1, :cond_2

    const v1, -0x35c77bb8    # -3023122.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "single"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/ironsource/z6$c;->b:Lcom/ironsource/z6$c;

    goto :goto_1

    .line 12
    :cond_2
    const-string v0, "onShowSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    sget-object p1, Lcom/ironsource/z6$c;->c:Lcom/ironsource/z6$c;

    goto :goto_1

    .line 15
    :cond_4
    const-string v0, "onLoadSuccess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 18
    :cond_5
    sget-object p1, Lcom/ironsource/z6$c;->d:Lcom/ironsource/z6$c;

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 19
    :goto_1
    iput-object p1, p0, Lcom/ironsource/Hd;->a:Lcom/ironsource/z6$c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/z6$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Hd;->a:Lcom/ironsource/z6$c;

    return-object v0
.end method
