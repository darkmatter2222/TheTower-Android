.class Lcom/ironsource/Nb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:[I

.field private c:J

.field private d:[B

.field final synthetic e:Lcom/ironsource/Nb;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/ironsource/Nb$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ironsource/Nb$a;->a:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/Nb$a;)[I
    .locals 0

    iget-object p0, p0, Lcom/ironsource/Nb$a;->b:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/ironsource/Nb$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/ironsource/Nb$a;->c:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetd(Lcom/ironsource/Nb$a;)[B
    .locals 0

    iget-object p0, p0, Lcom/ironsource/Nb$a;->d:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputa(Lcom/ironsource/Nb$a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ironsource/Nb$a;->a:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputc(Lcom/ironsource/Nb$a;J)V
    .locals 0

    iput-wide p1, p0, Lcom/ironsource/Nb$a;->c:J

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/Nb$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/Nb$a;->a()V

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/Nb$a;Lcom/ironsource/Nb$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/Nb$a;->a(Lcom/ironsource/Nb$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/ironsource/Nb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/Nb$a;->e:Lcom/ironsource/Nb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/Nb$a;->a:Z

    const/4 p1, 0x4

    .line 15
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ironsource/Nb$a;->b:[I

    const/16 p1, 0x40

    .line 21
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ironsource/Nb$a;->d:[B

    .line 24
    invoke-direct {p0}, Lcom/ironsource/Nb$a;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/Nb;Lcom/ironsource/Nb-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/Nb$a;-><init>(Lcom/ironsource/Nb;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Nb$a;->b:[I

    const/4 v1, 0x0

    const v2, 0x67452301

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, -0x10325477

    .line 2
    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, -0x67452302

    .line 3
    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x10325476

    .line 4
    aput v2, v0, v1

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/ironsource/Nb$a;->c:J

    return-void
.end method

.method private a(Lcom/ironsource/Nb$a;)V
    .locals 4

    .line 7
    iget-object v0, p1, Lcom/ironsource/Nb$a;->d:[B

    iget-object v1, p0, Lcom/ironsource/Nb$a;->d:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget-object v0, p1, Lcom/ironsource/Nb$a;->b:[I

    iget-object v1, p0, Lcom/ironsource/Nb$a;->b:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-boolean v0, p1, Lcom/ironsource/Nb$a;->a:Z

    iput-boolean v0, p0, Lcom/ironsource/Nb$a;->a:Z

    .line 10
    iget-wide v0, p1, Lcom/ironsource/Nb$a;->c:J

    iput-wide v0, p0, Lcom/ironsource/Nb$a;->c:J

    return-void
.end method
