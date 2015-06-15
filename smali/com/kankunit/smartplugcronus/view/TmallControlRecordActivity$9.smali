.class Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;
.super Ljava/lang/Object;
.source "TmallControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 629
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    const-string v2, "Please record"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 639
    :goto_0
    return-void

    .line 633
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 634
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getShowTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const-string v1, "controlId"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "controlId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    const-string v1, "recordIdx"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->getRecordIdx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->setResult(ILandroid/content/Intent;)V

    .line 638
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/TmallControlRecordActivity;->finish()V

    goto :goto_0
.end method
