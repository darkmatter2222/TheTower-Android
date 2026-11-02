.class public Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/MaxAdViewConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

.field private final b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;->a(Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;)Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;->a:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    .line 4
    invoke-static {p1}, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;->b(Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;->b:I

    .line 5
    invoke-static {p1}, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;->c(Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;)I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;-><init>(Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;)V

    return-void
.end method


# virtual methods
.method public getAdaptiveType()Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;->a:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    return-object v0
.end method

.method public getAdaptiveWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;->b:I

    return v0
.end method

.method public getInlineMaximumHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MaxAdViewConfiguration{adaptiveType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;->a:Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adaptiveWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inlineMaximumHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
