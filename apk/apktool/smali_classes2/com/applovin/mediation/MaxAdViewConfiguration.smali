.class public interface abstract Lcom/applovin/mediation/MaxAdViewConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/mediation/MaxAdViewConfiguration$Builder;,
        Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;
    }
.end annotation


# direct methods
.method public static builder()Lcom/applovin/mediation/MaxAdViewConfiguration$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;

    invoke-direct {v0}, Lcom/applovin/impl/mediation/MaxAdViewConfigurationImpl$BuilderImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getAdaptiveType()Lcom/applovin/mediation/MaxAdViewConfiguration$AdaptiveType;
.end method

.method public abstract getAdaptiveWidth()I
.end method

.method public abstract getInlineMaximumHeight()I
.end method
