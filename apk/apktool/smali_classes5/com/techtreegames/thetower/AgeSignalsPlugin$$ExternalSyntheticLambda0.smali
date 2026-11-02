.class public final synthetic Lcom/techtreegames/thetower/AgeSignalsPlugin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/techtreegames/thetower/AgeSignalsPlugin$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/techtreegames/thetower/AgeSignalsPlugin$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/google/android/play/agesignals/AgeSignalsResult;

    invoke-static {v0, p1}, Lcom/techtreegames/thetower/AgeSignalsPlugin;->lambda$checkAgeSignals$0(Ljava/lang/String;Lcom/google/android/play/agesignals/AgeSignalsResult;)V

    return-void
.end method
