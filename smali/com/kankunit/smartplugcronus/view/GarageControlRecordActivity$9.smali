.class Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;
.super Ljava/lang/Object;
.source "GarageControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 645
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    const-string v2, "Please record"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 655
    :goto_0
    return-void

    .line 649
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 650
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v1, "controlId"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "controlId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    const-string v1, "recordIdx"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->getRecordIdx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->setResult(ILandroid/content/Intent;)V

    .line 654
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->finish()V

    goto :goto_0
.end method
