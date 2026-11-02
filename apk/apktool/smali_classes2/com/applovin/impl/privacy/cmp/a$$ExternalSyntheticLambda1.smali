.class public final synthetic Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/privacy/cmp/a;

.field public final synthetic f$1:Lcom/applovin/impl/privacy/cmp/a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda1;->f$0:Lcom/applovin/impl/privacy/cmp/a;

    iput-object p2, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda1;->f$1:Lcom/applovin/impl/privacy/cmp/a$a;

    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateFailure(Lcom/google/android/ump/FormError;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda1;->f$0:Lcom/applovin/impl/privacy/cmp/a;

    iget-object v1, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda1;->f$1:Lcom/applovin/impl/privacy/cmp/a$a;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/privacy/cmp/a;->$r8$lambda$slmmX5Wu6GwiDJZDdHNz7ptcmRg(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V

    return-void
.end method
