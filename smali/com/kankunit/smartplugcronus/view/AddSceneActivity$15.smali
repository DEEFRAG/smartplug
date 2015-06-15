.class Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;
.super Ljava/lang/Object;
.source "AddSceneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1017
    const/4 v2, 0x0

    .line 1018
    .local v2, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1024
    if-nez v2, :cond_2

    .line 1025
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    const-string v14, "Scene no task, can not be saved"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1096
    :goto_1
    return-void

    .line 1018
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1019
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v14, "type"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1020
    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_0

    .line 1021
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1028
    .end local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "type":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$16(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v13

    const-class v14, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v13, v14}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 1029
    .local v10, "sceneList":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/SceneModel;>;"
    const/4 v7, 0x0

    .line 1030
    .local v7, "max":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1035
    new-instance v9, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/model/SceneModel;-><init>()V

    .line 1036
    .local v9, "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneImageView:Landroid/widget/ImageView;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$0(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/ImageView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1037
    .local v1, "contentD":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    const-string v13, ""

    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1038
    :cond_4
    const-string v1, "1"

    .line 1040
    :cond_5
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1042
    .local v4, "imageIndex":I
    invoke-virtual {v9, v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setSceneImage(I)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneName:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$1(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setSceneName(Ljava/lang/String;)V

    .line 1044
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setStatus(I)V

    .line 1045
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setAddtime(J)V

    .line 1046
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setOrderNo(I)V

    .line 1047
    invoke-virtual {v9, v2}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setCount(I)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->actionType:Ljava/lang/String;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$17(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "edit"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1049
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$18(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setId(I)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$16(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;
    invoke-static {v14}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$18(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-class v15, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 1051
    .local v8, "s":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getOrderNo()I

    move-result v13

    invoke-virtual {v9, v13}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setOrderNo(I)V

    .line 1052
    invoke-virtual {v9, v4}, Lcom/kankunit/smartplugcronus/model/SceneModel;->setSceneImage(I)V

    .line 1053
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$16(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v13

    invoke-virtual {v13, v9}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$16(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v13

    const-class v14, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, " sceneid= "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$18(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lnet/tsz/afinal/FinalDb;->deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1058
    .end local v8    # "s":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$16(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v13

    const-class v14, Lcom/kankunit/smartplugcronus/model/SceneModel;

    invoke-virtual {v13, v14}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 1059
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    check-cast v9, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 1061
    .restart local v9    # "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->aboveList:Ljava/util/List;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$2(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_8

    .line 1092
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1094
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    const/4 v14, -0x1

    invoke-virtual {v13, v14, v5}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->setResult(ILandroid/content/Intent;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    invoke-virtual {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->finish()V

    goto/16 :goto_1

    .line 1030
    .end local v1    # "contentD":Ljava/lang/CharSequence;
    .end local v4    # "imageIndex":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_6
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kankunit/smartplugcronus/model/SceneModel;

    .line 1031
    .local v11, "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getOrderNo()I

    move-result v14

    if-le v14, v7, :cond_3

    .line 1032
    invoke-virtual {v11}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getOrderNo()I

    move-result v7

    goto/16 :goto_2

    .line 1056
    .end local v11    # "sceneModel":Lcom/kankunit/smartplugcronus/model/SceneModel;
    .restart local v1    # "contentD":Ljava/lang/CharSequence;
    .restart local v4    # "imageIndex":I
    .restart local v9    # "scene":Lcom/kankunit/smartplugcronus/model/SceneModel;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$16(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v13

    invoke-virtual {v13, v9}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto :goto_3

    .line 1061
    :cond_8
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1062
    .restart local v6    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;

    invoke-direct {v3}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;-><init>()V

    .line 1063
    .local v3, "detailModel":Lcom/kankunit/smartplugcronus/model/SceneDetailModel;
    const-string v14, "title"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setTitle(Ljava/lang/String;)V

    .line 1064
    const-string v14, "type"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1065
    .restart local v12    # "type":I
    invoke-virtual {v3, v12}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setType(I)V

    .line 1066
    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    .line 1067
    const-string v14, "hour"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setHour(I)V

    .line 1068
    const-string v14, "minute"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setMinute(I)V

    .line 1069
    const-string v14, "second"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setSecond(I)V

    .line 1085
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->actionType:Ljava/lang/String;
    invoke-static {v14}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$17(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "edit"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1086
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->sceneId:Ljava/lang/String;
    invoke-static {v14}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$18(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setSceneId(I)V

    .line 1090
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kankunit/smartplugcronus/view/AddSceneActivity$15;->this$0:Lcom/kankunit/smartplugcronus/view/AddSceneActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v14}, Lcom/kankunit/smartplugcronus/view/AddSceneActivity;->access$16(Lcom/kankunit/smartplugcronus/view/AddSceneActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v14

    invoke-virtual {v14, v3}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1070
    :cond_9
    const/4 v14, 0x2

    if-eq v12, v14, :cond_a

    const/4 v14, 0x3

    if-eq v12, v14, :cond_a

    const/16 v14, 0xe

    if-eq v12, v14, :cond_a

    const/16 v14, 0xf

    if-ne v12, v14, :cond_b

    .line 1071
    :cond_a
    const-string v14, "mac"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setMac(Ljava/lang/String;)V

    .line 1072
    const-string v14, "isNew"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setIsNew(Ljava/lang/String;)V

    .line 1073
    const-string v14, "status"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setStatus(Ljava/lang/String;)V

    .line 1074
    const-string v14, "deviceName"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDeviceName(Ljava/lang/String;)V

    .line 1075
    const-string v14, "action"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setAction(I)V

    .line 1076
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setDetailStatus(I)V

    goto/16 :goto_5

    .line 1078
    :cond_b
    const-string v14, "controlId"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setControlId(I)V

    .line 1079
    const/4 v14, 0x6

    if-ne v12, v14, :cond_c

    .line 1080
    const-string v14, "groupString"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setGroupString(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1082
    :cond_c
    const-string v14, "recordIdx"

    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setRecordIdx(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1088
    :cond_d
    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/model/SceneModel;->getId()I

    move-result v14

    invoke-virtual {v3, v14}, Lcom/kankunit/smartplugcronus/model/SceneDetailModel;->setSceneId(I)V

    goto/16 :goto_6
.end method
