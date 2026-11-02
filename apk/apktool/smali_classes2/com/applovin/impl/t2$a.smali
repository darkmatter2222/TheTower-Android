.class public Lcom/applovin/impl/t2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/t2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/applovin/impl/t2$a;
    .locals 0

    .line 2
    iput p1, p0, Lcom/applovin/impl/t2$a;->d:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/t2$a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/t2$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/applovin/impl/t2;
    .locals 5

    .line 1
    new-instance v0, Lcom/applovin/impl/t2;

    iget-object v1, p0, Lcom/applovin/impl/t2$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/t2$a;->b:Ljava/lang/String;

    iget v3, p0, Lcom/applovin/impl/t2$a;->c:I

    iget v4, p0, Lcom/applovin/impl/t2$a;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/impl/t2;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public b(I)Lcom/applovin/impl/t2$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/applovin/impl/t2$a;->c:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/t2$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/t2$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LicenseVerificationObject.LicenseVerificationObjectBuilder(signedData="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/t2$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/t2$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/t2$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/t2$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
