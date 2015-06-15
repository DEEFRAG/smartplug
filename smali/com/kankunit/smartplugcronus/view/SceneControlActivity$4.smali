.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 1780
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->canSet(I)Z
    invoke-static {v5, v8}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$8(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1781
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v6, "A scenario supports a maximum of two simultaneous conditions"

    .line 1782
    const/4 v7, 0x1

    .line 1781
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 1782
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1803
    :goto_0
    return-void

    .line 1786
    :cond_0
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1787
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " linkageId=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1786
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1788
    .local v3, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isTimerNull(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1789
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 1791
    .local v4, "mac":Ljava/lang/String;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1792
    const-string v6, ":timer"

    invoke-static {v4, v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1790
    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v1

    .line 1793
    .local v1, "device":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showTimer(Ljava/util/List;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    invoke-static {v5, v3, v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$9(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/util/List;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    goto :goto_0

    .line 1795
    .end local v1    # "device":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v4    # "mac":Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1796
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "sceneId"

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1798
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1799
    const-class v6, Lcom/kankunit/smartplugcronus/view/LinkAgeActivity;

    .line 1798
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1800
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1801
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$4;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-virtual {v5, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
