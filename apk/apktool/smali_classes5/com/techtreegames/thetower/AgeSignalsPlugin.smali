.class public Lcom/techtreegames/thetower/AgeSignalsPlugin;
.super Ljava/lang/Object;
.source "AgeSignalsPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAgeSignals(Ljava/lang/String;)V
    .locals 2

    .line 16
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 18
    const-string v0, "OnAgeSignalsError"

    const-string v1, "no_activity"

    invoke-static {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 22
    :cond_0
    invoke-static {v0}, Lcom/google/android/play/agesignals/AgeSignalsManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/agesignals/AgeSignalsManager;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/google/android/play/agesignals/AgeSignalsRequest;->builder()Lcom/google/android/play/agesignals/AgeSignalsRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/agesignals/AgeSignalsRequest$Builder;->build()Lcom/google/android/play/agesignals/AgeSignalsRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/agesignals/AgeSignalsManager;->checkAgeSignals(Lcom/google/android/play/agesignals/AgeSignalsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/techtreegames/thetower/AgeSignalsPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/techtreegames/thetower/AgeSignalsPlugin$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/techtreegames/thetower/AgeSignalsPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/techtreegames/thetower/AgeSignalsPlugin$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static checkFakeAgeSignals(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 47
    const-string p1, "OnAgeSignalsTestError"

    const-string v0, "NETWORK_ERROR(-3)"

    invoke-static {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    const-string v0, "VERIFIED,18,-1"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    const-string v0, "null,-1,-1"

    goto :goto_0

    .line 58
    :pswitch_1
    const-string v0, "UNKNOWN,-1,-1"

    goto :goto_0

    .line 57
    :pswitch_2
    const-string v0, "SUPERVISED_APPROVAL_DENIED,13,17"

    goto :goto_0

    .line 56
    :pswitch_3
    const-string v0, "SUPERVISED_APPROVAL_PENDING,13,17"

    goto :goto_0

    .line 55
    :pswitch_4
    const-string v0, "DECLARED,13,15"

    goto :goto_0

    .line 54
    :pswitch_5
    const-string v0, "SUPERVISED,13,17"

    .line 63
    :goto_0
    :pswitch_6
    const-string p1, "OnAgeSignalsTestResult"

    invoke-static {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$checkAgeSignals$0(Ljava/lang/String;Lcom/google/android/play/agesignals/AgeSignalsResult;)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/techtreegames/thetower/AgeSignalsPlugin;->sendResult(Ljava/lang/String;Lcom/google/android/play/agesignals/AgeSignalsResult;)V

    return-void
.end method

.method static synthetic lambda$checkAgeSignals$1(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "unknown_error"

    .line 27
    :goto_0
    const-string v0, "OnAgeSignalsError"

    invoke-static {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendResult(Ljava/lang/String;Lcom/google/android/play/agesignals/AgeSignalsResult;)V
    .locals 4

    .line 69
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->userStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/techtreegames/thetower/AgeSignalsPlugin;->statusName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->ageLower()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->ageLower()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->ageUpper()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->ageUpper()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnAgeSignalsResult"

    invoke-static {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static statusName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 80
    const-string p0, "null"

    return-object p0

    .line 81
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "VERIFIED"

    return-object p0

    .line 82
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string p0, "SUPERVISED"

    return-object p0

    .line 83
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string p0, "SUPERVISED_APPROVAL_PENDING"

    return-object p0

    .line 84
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const-string p0, "SUPERVISED_APPROVAL_DENIED"

    return-object p0

    .line 85
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const-string p0, "UNKNOWN"

    return-object p0

    .line 86
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    const-string p0, "DECLARED"

    return-object p0

    .line 87
    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
