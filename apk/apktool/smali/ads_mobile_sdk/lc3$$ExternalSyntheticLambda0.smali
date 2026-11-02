.class public final synthetic Lads_mobile_sdk/lc3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lads_mobile_sdk/lc3;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lads_mobile_sdk/lc3;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/lc3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/lc3;

    iput-object p2, p0, Lads_mobile_sdk/lc3$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lads_mobile_sdk/lc3$$ExternalSyntheticLambda0;->f$0:Lads_mobile_sdk/lc3;

    iget-object v1, p0, Lads_mobile_sdk/lc3$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, p1}, Lads_mobile_sdk/lc3;->a(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
