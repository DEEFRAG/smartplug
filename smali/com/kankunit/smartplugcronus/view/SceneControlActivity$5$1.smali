.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

.field private final synthetic val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    .line 1863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 1867
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v3

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$15(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v4

    aget-object v3, v3, v4

    .line 1868
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v3

    .line 1867
    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$17(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;)V

    .line 1869
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$18(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$19(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;)V

    .line 1872
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    .line 1873
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mac like \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$18(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1874
    const-string v4, ":body%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1873
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1871
    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1875
    .local v1, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v1, :cond_0

    .line 1876
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1877
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1895
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$20(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 1896
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showLinkagePop(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v5, v3, v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$21(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1897
    return-void

    .line 1878
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1879
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1880
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v2

    .line 1879
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1880
    if-nez v2, :cond_2

    .line 1881
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1883
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1884
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1885
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v2

    .line 1884
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1885
    if-nez v2, :cond_3

    .line 1886
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$11(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1888
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1889
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1890
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v2

    .line 1889
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1890
    if-nez v2, :cond_4

    .line 1891
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$12(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1877
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
