.class Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;
.super Ljava/lang/Object;
.source "SceneFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->initView()V
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 198
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    move-result-object v6

    iget-boolean v6, v6, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDragable:Z

    if-nez v6, :cond_0

    .line 199
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sceneGridView:Lcom/kankunit/smartplugcronus/customview/SceneGridView;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Lcom/kankunit/smartplugcronus/customview/SceneGridView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/SceneGridView;->isDeleteable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-nez p3, :cond_2

    .line 204
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/content/Context;

    move-result-object v6

    .line 205
    const-class v7, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 204
    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 208
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$18(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 209
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 210
    .local v4, "sceneid":I
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "-----sceneid is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 211
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->sfa:Landroid/content/Context;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/kankunit/smartplugcronus/dao/SceneDao;->getSceneById(Landroid/content/Context;I)Lcom/kankunit/smartplugcronus/model/SceneModel;

    move-result-object v0

    .line 212
    .local v0, "dm":Lcom/kankunit/smartplugcronus/model/SceneModel;
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$18(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 213
    const-string v7, "status"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 212
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 217
    .local v5, "status":I
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 218
    const-class v7, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 217
    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v1, "i":Landroid/content/Intent;
    const-string v7, "sceneId"

    .line 220
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->dataSourceList:Ljava/util/List;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->access$18(Lcom/kankunit/smartplugcronus/fragment/SceneFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "id"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 221
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/fragment/SceneFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/SceneFragment;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/fragment/SceneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
