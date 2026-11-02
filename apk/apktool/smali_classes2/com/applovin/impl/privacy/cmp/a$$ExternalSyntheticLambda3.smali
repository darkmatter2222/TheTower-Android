.class public final synthetic Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/privacy/cmp/a;

.field public final synthetic f$1:Lcom/applovin/impl/privacy/cmp/a$a;

.field public final synthetic f$2:Lcom/google/android/ump/FormError;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda3;->f$0:Lcom/applovin/impl/privacy/cmp/a;

    iput-object p2, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda3;->f$1:Lcom/applovin/impl/privacy/cmp/a$a;

    iput-object p3, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/ump/FormError;

    return-void
.end method


# virtual methods
.method public final onConsentFormLoadFailure(Lcom/google/android/ump/FormError;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda3;->f$0:Lcom/applovin/impl/privacy/cmp/a;

    iget-object v1, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda3;->f$1:Lcom/applovin/impl/privacy/cmp/a$a;

    iget-object v2, p0, Lcom/applovin/impl/privacy/cmp/a$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/ump/FormError;

    invoke-static {v0, v1, v2, p1}, Lcom/applovin/impl/privacy/cmp/a;->$r8$lambda$5fhbJdN0LjlwdcLn1_emP6hl3uo(Lcom/applovin/impl/privacy/cmp/a;Lcom/applovin/impl/privacy/cmp/a$a;Lcom/google/android/ump/FormError;Lcom/google/android/ump/FormError;)V

    return-void
.end method
