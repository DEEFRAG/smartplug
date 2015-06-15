.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1681
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1682
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1684
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v3, v4, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 1685
    .local v2, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1686
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v4, "Being executed, you can not edit"

    .line 1687
    const/4 v5, 0x0

    .line 1686
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1687
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1700
    :goto_0
    return-void

    .line 1690
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1691
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "id"

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1692
    const-string v3, "title"

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v3, "name"

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getSceneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v3, "type"

    const-string v4, "sceneInfo"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1696
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1697
    const-class v4, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    .line 1696
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1698
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1699
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v3, v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
