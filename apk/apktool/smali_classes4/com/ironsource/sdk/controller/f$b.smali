.class public final Lcom/ironsource/sdk/controller/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/sdk/controller/f$b;

.field public static final b:Ljava/lang/String; = "msgId"

.field public static final c:Ljava/lang/String; = "adId"

.field public static final d:Ljava/lang/String; = "params"

.field public static final e:Ljava/lang/String; = "success"

.field public static final f:Ljava/lang/String; = "reason"

.field public static final g:Ljava/lang/String; = "command"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ironsource/sdk/controller/f$b;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/f$b;-><init>()V

    sput-object v0, Lcom/ironsource/sdk/controller/f$b;->a:Lcom/ironsource/sdk/controller/f$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
