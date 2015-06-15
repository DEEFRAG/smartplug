.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showLinkagePop(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

.field private final synthetic val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

.field private final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->val$mac:Ljava/lang/String;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 1374
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->val$mac:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->val$mac:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1376
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1377
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " mac like \'%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->val$mac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1376
    invoke-static {v2, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1378
    .local v0, "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1379
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1398
    .end local v0    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v1    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->saveLinkageBody(Z)V
    invoke-static {v4, v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$59(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1400
    return-void

    .line 1380
    .restart local v0    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1381
    const-string v4, ""

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1382
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v2

    .line 1381
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1382
    if-nez v2, :cond_2

    .line 1383
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1385
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1386
    const-string v4, ""

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1387
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v2

    .line 1386
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1387
    if-nez v2, :cond_3

    .line 1388
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$11(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1390
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1391
    const-string v4, ""

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1392
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v2

    .line 1391
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1392
    if-nez v2, :cond_4

    .line 1393
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$14;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$12(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1379
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1399
    .end local v0    # "detailsForHas":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v1    # "i":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method
