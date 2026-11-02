.class public final synthetic Lcom/ironsource/I2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/I2;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/I2;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/I2$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/I2;

    iput-object p2, p0, Lcom/ironsource/I2$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/I2$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/I2;

    iget-object v1, p0, Lcom/ironsource/I2$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/ironsource/I2;->$r8$lambda$V844gNCXeJgX0HyleIx0p4khbUU(Lcom/ironsource/I2;Ljava/util/Map;)V

    return-void
.end method
