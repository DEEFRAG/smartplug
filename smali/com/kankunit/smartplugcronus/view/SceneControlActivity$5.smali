.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;
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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1809
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x1

    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->canSet(I)Z
    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$8(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1810
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v11, "A scenario supports a maximum of two simultaneous conditions"

    .line 1811
    const/4 v12, 0x1

    .line 1810
    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 1811
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1908
    :goto_0
    return-void

    .line 1815
    :cond_0
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1816
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$11(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1817
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$12(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1818
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$13(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 1820
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x1

    .line 1821
    const-string v12, "rt_"

    .line 1819
    invoke-static {v10, v11, v12}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortDeviceList(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1822
    .local v8, "plugs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    if-eqz v8, :cond_9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 1823
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v3, v10, [Ljava/lang/String;

    .line 1824
    .local v3, "deviceName":[Ljava/lang/String;
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$14(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;[Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 1825
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lt v5, v10, :cond_2

    .line 1838
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1839
    .local v9, "strs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    const/4 v5, 0x0

    :goto_2
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$15(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v10

    array-length v10, v10

    if-lt v5, v10, :cond_5

    .line 1844
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1845
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    .line 1844
    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-static {v11, v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$14(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;[Lcom/kankunit/smartplugcronus/model/ShortCutModel;)V

    .line 1846
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$15(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$15(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_7

    .line 1847
    :cond_1
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v11, "Found no related plugins"

    .line 1848
    const/4 v12, 0x1

    .line 1847
    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 1848
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1849
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x1

    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V
    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$16(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    goto/16 :goto_0

    .line 1826
    .end local v9    # "strs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_2
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v7

    .line 1827
    .local v7, "mac":Ljava/lang/String;
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v10, v7}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    .line 1828
    .local v4, "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    if-eqz v4, :cond_3

    const-string v10, "n"

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsAuth()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1825
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1832
    :cond_4
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1831
    invoke-static {v10, v7}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getDeviceShortcut(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    .line 1833
    .local v2, "device":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    if-eqz v2, :cond_3

    .line 1834
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$15(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v10

    aput-object v2, v10, v5

    .line 1835
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v5

    goto :goto_3

    .line 1840
    .end local v2    # "device":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    .end local v4    # "dm":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .end local v7    # "mac":Ljava/lang/String;
    .restart local v9    # "strs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_5
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$15(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v10

    aget-object v10, v10, v5

    if-eqz v10, :cond_6

    .line 1841
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$15(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1839
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 1853
    :cond_7
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 1854
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, " linkageId=\'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v12}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1853
    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1855
    .local v6, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->isBodyNull(Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1856
    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 1857
    invoke-virtual {v10}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getMac()Ljava/lang/String;

    move-result-object v10

    const-string v12, ":body"

    .line 1856
    invoke-static {v10, v12}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getMac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$17(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;)V

    .line 1858
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v11, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v12, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;
    invoke-static {v12}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$18(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$19(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;)V

    .line 1859
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$20(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 1860
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;
    invoke-static {v13}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$18(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ":body"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ":body"

    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showLinkagePop(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12, v13}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$21(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1862
    :cond_8
    new-instance v1, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-direct {v1}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;-><init>()V

    .line 1863
    .local v1, "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    new-instance v0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;

    invoke-direct {v0, p0, v1}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5$1;-><init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V

    .line 1899
    .local v0, "btnListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v11, "Select equipment"

    invoke-static {v10, v11, v3, v0, v1}, Lcom/kankunit/smartplugcronus/util/LinkageUtil;->getBuilder(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;)V

    goto/16 :goto_0

    .line 1903
    .end local v0    # "btnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "chooseListener":Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;
    .end local v3    # "deviceName":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    .end local v9    # "strs":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/ShortCutModel;>;"
    :cond_9
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const-string v11, "Found no related plugins"

    .line 1904
    const/4 v12, 0x1

    .line 1903
    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 1904
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1905
    iget-object v10, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    const/4 v11, 0x1

    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->initLinkage(Z)V
    invoke-static {v10, v11}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$16(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    goto/16 :goto_0
.end method
