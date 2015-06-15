.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->doClick(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

.field private final synthetic val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

.field private final synthetic val$clickFlag:I


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    iput p3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->val$clickFlag:I

    .line 2737
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

    .line 2740
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->devices:[Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$15(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)[Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->val$chooseListener:Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/util/ChoiceOnClickListener;->getWhich()I

    move-result v4

    aget-object v3, v3, v4

    .line 2741
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getDeviceMac()Ljava/lang/String;

    move-result-object v3

    .line 2740
    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$17(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;)V

    .line 2742
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$18(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/util/DataUtil;->getDevicePWD(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$19(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Ljava/lang/String;)V

    .line 2744
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    .line 2745
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mac like \'%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->linkageMac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$18(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2744
    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/LinkageDetailDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2746
    .local v1, "linkageDetail":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2747
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 2813
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->val$clickFlag:I

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$20(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;I)V

    .line 2814
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    iget v3, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->val$clickFlag:I

    const-string v4, ""

    const-string v5, ""

    # invokes: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->showLinkagePop(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$21(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 2815
    return-void

    .line 2748
    .restart local v0    # "i":I
    :cond_1
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->val$clickFlag:I

    if-ne v2, v5, :cond_4

    .line 2749
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2750
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2751
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody1()Ljava/lang/String;

    move-result-object v2

    .line 2750
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2751
    if-nez v2, :cond_2

    .line 2752
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2754
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2755
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2756
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody2()Ljava/lang/String;

    move-result-object v2

    .line 2755
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2756
    if-nez v2, :cond_3

    .line 2757
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$11(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2759
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2760
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2761
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getBody3()Ljava/lang/String;

    move-result-object v2

    .line 2760
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2761
    if-nez v2, :cond_4

    .line 2762
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$12(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2765
    :cond_4
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->val$clickFlag:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 2766
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2767
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2768
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp1()Ljava/lang/String;

    move-result-object v2

    .line 2767
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2768
    if-nez v2, :cond_5

    .line 2769
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2771
    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2772
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2773
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp2()Ljava/lang/String;

    move-result-object v2

    .line 2772
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2773
    if-nez v2, :cond_6

    .line 2774
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$11(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2776
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2777
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2778
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp3()Ljava/lang/String;

    move-result-object v2

    .line 2777
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2778
    if-nez v2, :cond_7

    .line 2779
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$12(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2781
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2782
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2783
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getTemp4()Ljava/lang/String;

    move-result-object v2

    .line 2782
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2783
    if-nez v2, :cond_8

    .line 2784
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$13(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2787
    :cond_8
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->val$clickFlag:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    .line 2788
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2789
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2790
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum1()Ljava/lang/String;

    move-result-object v2

    .line 2789
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2790
    if-nez v2, :cond_9

    .line 2791
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2793
    :cond_9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2794
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2795
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getHum2()Ljava/lang/String;

    move-result-object v2

    .line 2794
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2795
    if-nez v2, :cond_a

    .line 2796
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$12(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2799
    :cond_a
    iget v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->val$clickFlag:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 2800
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2801
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2802
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum1()Ljava/lang/String;

    move-result-object v2

    .line 2801
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2802
    if-nez v2, :cond_b

    .line 2803
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$10(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2805
    :cond_b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 2806
    const-string v3, ""

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;

    .line 2807
    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/LinkageDetailModel;->getLum2()Ljava/lang/String;

    move-result-object v2

    .line 2806
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2807
    if-nez v2, :cond_c

    .line 2808
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$17;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    invoke-static {v2, v5}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$12(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;Z)V

    .line 2747
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
