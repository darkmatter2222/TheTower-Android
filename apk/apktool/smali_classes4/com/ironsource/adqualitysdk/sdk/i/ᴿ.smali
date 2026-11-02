.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

.field public ﭸ:Z

.field public ﮉ:I

.field public ﮌ:I

.field public ﮐ:I

.field public ﱟ:I

.field public ﱡ:I

.field public ﺙ:I

.field public ﻏ:I

.field public ﻐ:I

.field public ﻛ:Ljava/util/List;

.field public ｋ:Ljava/lang/Class;

.field public ﾇ:Ljava/lang/Class;

.field public ﾒ:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻏ:I

    .line 9
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﺙ:I

    .line 10
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    .line 11
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    const v0, 0x7fffffff

    .line 12
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    .line 13
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    .line 14
    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭸ:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    if-eq v3, v2, :cond_1

    goto/16 :goto_4

    .line 3
    :cond_1
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;

    .line 5
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    if-eq v2, v3, :cond_2

    return v1

    .line 6
    :cond_2
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻏ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻏ:I

    if-eq v2, v3, :cond_3

    return v1

    .line 7
    :cond_3
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﺙ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﺙ:I

    if-eq v2, v3, :cond_4

    return v1

    .line 8
    :cond_4
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    if-eq v2, v3, :cond_5

    return v1

    .line 9
    :cond_5
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    if-eq v2, v3, :cond_6

    return v1

    .line 10
    :cond_6
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    if-eq v2, v3, :cond_7

    return v1

    .line 11
    :cond_7
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    if-eq v2, v3, :cond_8

    return v1

    .line 12
    :cond_8
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    if-eq v2, v3, :cond_9

    return v1

    .line 13
    :cond_9
    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭸ:Z

    iget-boolean v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭸ:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 14
    :cond_a
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾒ:Ljava/lang/Class;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾒ:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾒ:Ljava/lang/Class;

    if-eqz v2, :cond_c

    :goto_0
    return v1

    .line 16
    :cond_c
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_1

    :cond_d
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    if-eqz v2, :cond_e

    :goto_1
    return v1

    .line 18
    :cond_e
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    if-eqz v2, :cond_f

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_2

    :cond_f
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    if-eqz v2, :cond_10

    :goto_2
    return v1

    .line 20
    :cond_10
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    if-eqz v2, :cond_11

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_3

    :cond_11
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    if-eqz v2, :cond_12

    :goto_3
    return v1

    .line 22
    :cond_12
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    if-eqz v2, :cond_13

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    if-nez p1, :cond_14

    return v0

    :cond_14
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾒ:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﾇ:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ｋ:Ljava/lang/Class;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻛ:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻐ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﻏ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﺙ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱡ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﱟ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮐ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮌ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﮉ:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭸ:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᴿ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method
