.class public final synthetic Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/applovin/impl/a1;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Landroid/app/Activity;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/a1;Landroid/app/AlertDialog;Landroid/app/Activity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;->f$0:Lcom/applovin/impl/a1;

    iput-object p2, p0, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    iput-boolean p4, p0, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;->f$0:Lcom/applovin/impl/a1;

    iget-object v1, p0, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;->f$2:Landroid/app/Activity;

    iget-boolean v3, p0, Lcom/applovin/impl/a1$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/impl/a1;->$r8$lambda$mLVBES4JrzW8N_WO_g1KOokOoOE(Lcom/applovin/impl/a1;Landroid/app/AlertDialog;Landroid/app/Activity;ZLandroid/content/DialogInterface;)V

    return-void
.end method
