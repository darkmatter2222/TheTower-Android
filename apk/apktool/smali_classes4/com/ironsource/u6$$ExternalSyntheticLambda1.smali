.class public final synthetic Lcom/ironsource/u6$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ironsource/u6$$ExternalSyntheticLambda1;->f$0:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/ironsource/u6$$ExternalSyntheticLambda1;->f$0:J

    check-cast p1, Lcom/ironsource/u6;

    invoke-static {v0, v1, p1}, Lcom/ironsource/u6;->$r8$lambda$LakToEZ7sf9ivarBQUqGltG_3LA(JLcom/ironsource/u6;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
