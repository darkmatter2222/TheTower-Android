.class public final Lcom/ironsource/adqualitysdk/sdk/i/ˉ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;
.source "SourceFile"


# instance fields
.field public final ｋ:Lcom/ironsource/adqualitysdk/sdk/i/s;

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;Lcom/ironsource/adqualitysdk/sdk/i/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    .line 3
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    .line 4
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    invoke-virtual {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    invoke-virtual {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 9
    :cond_5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    if-nez p1, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾇ:[Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;

    .line 6
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/s;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pzbQtw==\n"

    const-string v2, "00Spl6i07Ms=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "7DfVsH8KcC4=\n"

    const-string v2, "zFS0xBxiUAY=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "a2Q=\n"

    const-string v2, "QkSD+hx8Iks=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ()I
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾒ()I

    move-result v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾒ()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;)I
    .locals 0

    .line 23
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﱡ:Ljava/util/HashSet;

    .line 24
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;->ﾒ()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    if-eqz v1, :cond_1

    .line 2
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-direct {v2, v3, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;-><init>(Ljava/util/HashMap;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Z)V

    .line 5
    invoke-virtual {v1, v2, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﱡ:Ljava/util/HashSet;

    .line 10
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 12
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/s;

    if-eqz v3, :cond_0

    .line 13
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/s;->ﾒ:Ljava/lang/String;

    .line 14
    invoke-static {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ᵀ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ˉ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᚁ;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 17
    invoke-direct {v3, v2, p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;-><init>(Ljava/util/HashMap;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Z)V

    .line 18
    invoke-virtual {v1, v3, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᵋ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object p1

    return-object p1

    .line 21
    :cond_1
    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
