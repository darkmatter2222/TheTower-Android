.class public final enum Lads_mobile_sdk/u24$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lads_mobile_sdk/u24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lads_mobile_sdk/u24$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lads_mobile_sdk/u24$b;

.field public static final enum c:Lads_mobile_sdk/u24$b;

.field public static final enum d:Lads_mobile_sdk/u24$b;

.field public static final enum e:Lads_mobile_sdk/u24$b;

.field public static final enum f:Lads_mobile_sdk/u24$b;

.field public static final enum g:Lads_mobile_sdk/u24$b;

.field public static final enum h:Lads_mobile_sdk/u24$b;

.field public static final enum i:Lads_mobile_sdk/u24$b;

.field public static final enum j:Lads_mobile_sdk/u24$b;

.field private static final synthetic k:[Lads_mobile_sdk/u24$b;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lads_mobile_sdk/u24$b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lads_mobile_sdk/u24$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/u24$b;->b:Lads_mobile_sdk/u24$b;

    .line 2
    new-instance v0, Lads_mobile_sdk/u24$b;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LONG"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lads_mobile_sdk/u24$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/u24$b;->c:Lads_mobile_sdk/u24$b;

    .line 3
    new-instance v0, Lads_mobile_sdk/u24$b;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "FLOAT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lads_mobile_sdk/u24$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/u24$b;->d:Lads_mobile_sdk/u24$b;

    .line 4
    new-instance v0, Lads_mobile_sdk/u24$b;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "DOUBLE"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lads_mobile_sdk/u24$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/u24$b;->e:Lads_mobile_sdk/u24$b;

    .line 5
    new-instance v0, Lads_mobile_sdk/u24$b;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lads_mobile_sdk/u24$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/u24$b;->f:Lads_mobile_sdk/u24$b;

    .line 6
    new-instance v0, Lads_mobile_sdk/u24$b;

    const/4 v1, 0x5

    const-string v2, ""

    const-string v3, "STRING"

    invoke-direct {v0, v3, v1, v2}, Lads_mobile_sdk/u24$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/u24$b;->g:Lads_mobile_sdk/u24$b;

    .line 7
    new-instance v0, Lads_mobile_sdk/u24$b;

    sget-object v1, Lads_mobile_sdk/du;->b:Lads_mobile_sdk/du;

    const-string v2, "BYTE_STRING"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lads_mobile_sdk/u24$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/u24$b;->h:Lads_mobile_sdk/u24$b;

    .line 8
    new-instance v0, Lads_mobile_sdk/u24$b;

    const-string v1, "ENUM"

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/u24$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/u24$b;->i:Lads_mobile_sdk/u24$b;

    .line 9
    new-instance v0, Lads_mobile_sdk/u24$b;

    const-string v1, "MESSAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lads_mobile_sdk/u24$b;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lads_mobile_sdk/u24$b;->j:Lads_mobile_sdk/u24$b;

    .line 10
    invoke-static {}, Lads_mobile_sdk/u24$b;->d()[Lads_mobile_sdk/u24$b;

    move-result-object v0

    sput-object v0, Lads_mobile_sdk/u24$b;->k:[Lads_mobile_sdk/u24$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lads_mobile_sdk/u24$b;->a:Ljava/lang/Object;

    return-void
.end method

.method private static synthetic d()[Lads_mobile_sdk/u24$b;
    .locals 9

    .line 60
    sget-object v0, Lads_mobile_sdk/u24$b;->b:Lads_mobile_sdk/u24$b;

    sget-object v1, Lads_mobile_sdk/u24$b;->c:Lads_mobile_sdk/u24$b;

    sget-object v2, Lads_mobile_sdk/u24$b;->d:Lads_mobile_sdk/u24$b;

    sget-object v3, Lads_mobile_sdk/u24$b;->e:Lads_mobile_sdk/u24$b;

    sget-object v4, Lads_mobile_sdk/u24$b;->f:Lads_mobile_sdk/u24$b;

    sget-object v5, Lads_mobile_sdk/u24$b;->g:Lads_mobile_sdk/u24$b;

    sget-object v6, Lads_mobile_sdk/u24$b;->h:Lads_mobile_sdk/u24$b;

    sget-object v7, Lads_mobile_sdk/u24$b;->i:Lads_mobile_sdk/u24$b;

    sget-object v8, Lads_mobile_sdk/u24$b;->j:Lads_mobile_sdk/u24$b;

    filled-new-array/range {v0 .. v8}, [Lads_mobile_sdk/u24$b;

    move-result-object v0

    return-object v0
.end method

.method public static values()[Lads_mobile_sdk/u24$b;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u24$b;->k:[Lads_mobile_sdk/u24$b;

    invoke-virtual {v0}, [Lads_mobile_sdk/u24$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lads_mobile_sdk/u24$b;

    return-object v0
.end method
