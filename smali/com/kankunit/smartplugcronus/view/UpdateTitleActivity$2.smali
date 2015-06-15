.class Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;
.super Ljava/lang/Object;
.source "UpdateTitleActivity.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x2

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "bsgMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 255
    .local v2, "decoded":[B
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v1, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "bsgMsg":Ljava/lang/String;
    .local v1, "bsgMsg":Ljava/lang/String;
    move-object v0, v1

    .line 259
    .end local v1    # "bsgMsg":Ljava/lang/String;
    .restart local v0    # "bsgMsg":Ljava/lang/String;
    :goto_0
    const-string v6, "fail"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 260
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 261
    .local v4, "m":Landroid/os/Message;
    const/16 v6, 0x457

    iput v6, v4, Landroid/os/Message;->what:I

    .line 262
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    .end local v4    # "m":Landroid/os/Message;
    :cond_0
    :goto_1
    return-void

    .line 256
    :catch_0
    move-exception v3

    .line 257
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v6, "linkage_push_ack"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 266
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 267
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$2(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 269
    :cond_2
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$0(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/kankunit/smartplugcronus/model/LinkageModel;->setNeedPush(Ljava/lang/String;)V

    .line 270
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->linkageModel:Lcom/kankunit/smartplugcronus/model/LinkageModel;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$0(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Lcom/kankunit/smartplugcronus/model/LinkageModel;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kankunit/smartplugcronus/dao/LinkageDao;->updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/LinkageModel;)V

    .line 271
    const-string v6, "%"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v5, v6, v8

    .line 272
    .local v5, "needPush":Ljava/lang/String;
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 273
    .restart local v4    # "m":Landroid/os/Message;
    const/16 v6, 0x84a

    iput v6, v4, Landroid/os/Message;->what:I

    .line 274
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;->access$1(Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
