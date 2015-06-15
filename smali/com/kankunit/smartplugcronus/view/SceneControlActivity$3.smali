.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1707
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v2, v3, v4}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 1708
    .local v1, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getStatus()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1709
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1710
    const-string v3, "Prompt Information"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1711
    const-string v3, "Do you want to cancel?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1712
    const-string v3, "Confirm"

    .line 1713
    new-instance v4, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3$1;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;)V

    .line 1712
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1728
    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1744
    :goto_0
    return-void

    .line 1731
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v3, "Begin"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 1732
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1733
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->openButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$4(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f020387

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1734
    invoke-virtual {v1, v6}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 1735
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 1736
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->detailModels:Ljava/util/List;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$5(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1741
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1742
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    new-instance v3, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-direct {v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)V

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$7(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;)V

    .line 1743
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->currentThread:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$3(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$SceneThread;->start()V

    goto :goto_0

    .line 1736
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    .line 1738
    .local v0, "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    invoke-virtual {v0, v5}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    .line 1739
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_1
.end method
