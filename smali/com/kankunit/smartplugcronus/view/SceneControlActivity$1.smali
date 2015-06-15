.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1660
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1661
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1663
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 1664
    .local v1, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1665
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v3, "Being executed, you can not edit"

    .line 1666
    const/4 v4, 0x0

    .line 1665
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1666
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1676
    :goto_0
    return-void

    .line 1669
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1670
    const-class v3, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 1669
    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1671
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "actionType"

    const-string v3, "edit"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    const-string v2, "sceneId"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1673
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$1;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
