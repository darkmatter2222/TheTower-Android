.class public final synthetic Lcom/google/crypto/tink/KeysetHandle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/KeysetHandle$Entry$EntryConsumer;


# instance fields
.field public final synthetic f$0:Lcom/google/crypto/tink/KeysetHandle;

.field public final synthetic f$1:Lcom/google/crypto/tink/internal/MonitoringAnnotations;


# direct methods
.method public synthetic constructor <init>(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/internal/MonitoringAnnotations;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/KeysetHandle$$ExternalSyntheticLambda0;->f$0:Lcom/google/crypto/tink/KeysetHandle;

    iput-object p2, p0, Lcom/google/crypto/tink/KeysetHandle$$ExternalSyntheticLambda0;->f$1:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/google/crypto/tink/KeysetHandle$Entry;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$$ExternalSyntheticLambda0;->f$0:Lcom/google/crypto/tink/KeysetHandle;

    iget-object v1, p0, Lcom/google/crypto/tink/KeysetHandle$$ExternalSyntheticLambda0;->f$1:Lcom/google/crypto/tink/internal/MonitoringAnnotations;

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/KeysetHandle;->lambda$addMonitoringIfNeeded$0(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/internal/MonitoringAnnotations;Lcom/google/crypto/tink/KeysetHandle$Entry;)V

    return-void
.end method
