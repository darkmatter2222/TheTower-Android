.class public final Lcom/unity3d/player/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public volatile e:Ljava/lang/reflect/AccessibleObject;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/unity3d/player/s;->a:Ljava/lang/Class;

    .line 35
    iput-object p2, p0, Lcom/unity3d/player/s;->b:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/unity3d/player/s;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/lit16 p1, p1, 0x20f

    mul-int/lit8 p1, p1, 0x1f

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x1f

    .line 41
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p1, p2

    .line 42
    iput p1, p0, Lcom/unity3d/player/s;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 56
    :cond_0
    instance-of v1, p1, Lcom/unity3d/player/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 58
    check-cast p1, Lcom/unity3d/player/s;

    .line 59
    iget v1, p0, Lcom/unity3d/player/s;->d:I

    iget v3, p1, Lcom/unity3d/player/s;->d:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/s;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/player/s;->c:Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/s;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/unity3d/player/s;->b:Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/s;->a:Ljava/lang/Class;

    iget-object p1, p1, Lcom/unity3d/player/s;->a:Ljava/lang/Class;

    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/unity3d/player/s;->d:I

    return v0
.end method
