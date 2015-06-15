.class Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;
.super Ljava/lang/Object;
.source "DeviceDetailInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    const v11, 0xfde8

    const v7, 0x7f0c0249

    const/4 v12, 0x2

    .line 249
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->softV:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$8(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5.6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    if-ne v3, v12, :cond_1

    .line 250
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c024d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3$1;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;)V

    invoke-static {v4, v6, v7, v11, v8}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    .line 267
    :goto_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-static {v3}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "phoneMac":Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "-"

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 269
    const-string v10, ""

    .line 270
    .local v10, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    if-ne v3, v12, :cond_3

    .line 271
    const-string v10, "http://kankunit.com/k2/k2.bin%firmware"

    .line 278
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wan_phone%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "cmd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->mac:Ljava/lang/String;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kankun-smartplug.com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "userJID":Ljava/lang/String;
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    const-string v4, ""

    const-string v7, ""

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$5(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    move-result-object v8

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V

    .line 281
    .local v0, "sm":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->start()V

    .line 282
    return-void

    .line 255
    .end local v0    # "sm":Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "userJID":Ljava/lang/String;
    .end local v9    # "phoneMac":Ljava/lang/String;
    .end local v10    # "url":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    if-ne v3, v12, :cond_2

    .line 256
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c024e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3$2;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3$2;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;)V

    invoke-static {v4, v6, v7, v11, v8}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    goto/16 :goto_0

    .line 261
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    invoke-virtual {v7}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c024a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x14c08

    new-instance v11, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3$3;

    invoke-direct {v11, p0}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3$3;-><init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;)V

    invoke-static {v4, v6, v7, v8, v11}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$1(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    goto/16 :goto_0

    .line 272
    .restart local v9    # "phoneMac":Ljava/lang/String;
    .restart local v10    # "url":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 273
    const-string v10, "http://www.kankunit.com/k2/user2.bin%firmware"

    .line 274
    goto/16 :goto_1

    :cond_4
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity$3;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->dm:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;->access$2(Lcom/kankunit/smartplugcronus/view/DeviceDetailInfoActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getVersion()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 276
    const-string v10, "http://www.kankunit.com/k2/minikpro/user2.bin%firmware"

    goto/16 :goto_1
.end method
