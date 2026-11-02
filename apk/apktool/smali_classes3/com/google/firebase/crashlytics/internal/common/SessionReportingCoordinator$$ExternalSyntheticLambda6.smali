.class public final synthetic Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$ExternalSyntheticLambda6;->f$0:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$ExternalSyntheticLambda6;->f$0:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$ExternalSyntheticLambda6;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->lambda$persistProfilingManagerInfo$1$com-google-firebase-crashlytics-internal-common-SessionReportingCoordinator(Ljava/lang/String;Ljava/util/List;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
