.class Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;
.super Ljava/lang/Object;
.source "SceneControlActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->OnChanged(Lcom/kankunit/smartplugcronus/customview/SwitchButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x2

    .line 735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 738
    .local v2, "decoded":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v1, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bsgMsg":Ljava/lang/String;
    .local v1, "bsgMsg":Ljava/lang/String;
    move-object v0, v1

    .line 742
    .end local v1    # "bsgMsg":Ljava/lang/String;
    .restart local v0    # "bsgMsg":Ljava/lang/String;
    :goto_0
    const-string v7, "fail"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 743
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 744
    .local v5, "m":Landroid/os/Message;
    const/16 v7, 0x457

    iput v7, v5, Landroid/os/Message;->what:I

    .line 745
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v7

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 762
    .end local v5    # "m":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 739
    :catch_0
    move-exception v3

    .line 740
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 748
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v7, "linkage_push_ack"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 749
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v7

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 750
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v7

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$36(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 753
    :cond_2
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sceneId=\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v9

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->sceneId:I
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$1(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 752
    invoke-static {v7, v8}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->getLinkageBySearch(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v4

    .line 754
    .local v4, "lm":Lcom/kankunit/smartplugcronus/model/LinkageModel;
    const-string v7, "%"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    invoke-virtual {v4, v7}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setNeedPush(Ljava/lang/String;)V

    .line 755
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 756
    const-string v7, "%"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v6, v7, v10

    .line 757
    .local v6, "needPush":Ljava/lang/String;
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 758
    .restart local v5    # "m":Landroid/os/Message;
    const/16 v7, 0x84a

    iput v7, v5, Landroid/os/Message;->what:I

    .line 759
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 760
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11$2;->this$1:Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->this$0:Lcom/kankunit/smartplugcronus/view/SceneControlActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;->access$0(Lcom/kankunit/smartplugcronus/view/SceneControlActivity$11;)Lcom/kankunit/smartplugcronus/view/SceneControlActivity;

    move-result-object v7

    # getter for: Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->handler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/SceneControlActivity;->access$6(Lcom/kankunit/smartplugcronus/view/SceneControlActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method
