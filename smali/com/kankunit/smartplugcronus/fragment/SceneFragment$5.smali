.class Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;
.super Ljava/lang/Object;
.source "SceneFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initAfterDelete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    move-result-object v5

    iget-boolean v5, v5, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDragable:Z

    if-eqz v5, :cond_0

    .line 368
    :goto_0
    return-void

    .line 351
    :cond_0
    if-nez p3, :cond_1

    .line 352
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/content/Context;

    move-result-object v5

    .line 353
    const-class v6, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 352
    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 356
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$18(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 357
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 358
    .local v4, "sceneid":I
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "-----sceneid is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->getSceneById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/SceneModel;

    move-result-object v0

    .line 360
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/SceneModel;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 361
    const-class v6, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 360
    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v1, "i":Landroid/content/Intent;
    const-string v6, "sceneId"

    .line 363
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;
    invoke-static {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$18(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v7, "id"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 364
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
