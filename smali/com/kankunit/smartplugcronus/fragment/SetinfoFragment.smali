.class public Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;
.super Lcom/kankunit/smartplugcronus/base/BaseFragment;
.source "SetinfoFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;


# static fields
.field public static handler:Landroid/os/Handler;


# instance fields
.field private acc_image:Landroid/widget/ImageView;

.field private fireware_red_point:Landroid/widget/ImageView;

.field private flag:Z

.field private ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

.field private set_acc_img:Landroid/widget/ImageView;

.field private set_acc_layout:Landroid/widget/RelativeLayout;

.field private set_download_layout:Landroid/widget/RelativeLayout;

.field private set_gj_layout:Landroid/widget/RelativeLayout;

.field private set_upload_layout:Landroid/widget/RelativeLayout;

.field private shadowlayer:Landroid/widget/RelativeLayout;

.field private update_red_point:Landroid/widget/ImageView;

.field private updateapp:Landroid/widget/RelativeLayout;

.field private worn_layout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/minautil/MinaHandler;-><init>()V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->flag:Z

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)Lcom/kankunit/smartplugcronus/minautil/MinaHandler;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 251
    return-void
.end method

.method public doReceive(Ljava/lang/String;)V
    .locals 13
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 375
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "message======="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    if-eqz p1, :cond_0

    const-string v9, ""

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 377
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 378
    .local v3, "m":Landroid/os/Message;
    const/16 v9, 0x16

    iput v9, v3, Landroid/os/Message;->what:I

    .line 379
    sget-object v9, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    .end local v3    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-string v10, "userinfo"

    const-string v11, "userid"

    invoke-static {v9, v10, v11}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, "userid":Ljava/lang/String;
    const-string v4, ""

    .line 385
    .local v4, "message":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    .local v6, "mjsonObject":Lorg/json/JSONObject;
    const-string v9, "res"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "method"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, "method":Ljava/lang/String;
    const-string v9, "saveDevice"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 388
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/kankunit/smartplugcronus/util/UploadOrDownInfoUtil;->uploadShortcut(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 389
    const-string v4, "Uploading main interface data..."

    .line 413
    :cond_2
    :goto_1
    const-string v9, "downDevice"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 414
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-static {v9, v10, p1}, Lcom/kankunit/smartplugcronus/util/UploadOrDownInfoUtil;->downloadDeivce(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/kankunit/smartplugcronus/util/UploadOrDownInfoUtil;->sendDownShortcutMsg(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 416
    sget-object v9, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->handler:Landroid/os/Handler;

    const/16 v10, 0x37

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 417
    const-string v4, "Downloading main interface data..."

    .line 444
    :cond_3
    :goto_2
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 445
    .restart local v3    # "m":Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v3, Landroid/os/Message;->what:I

    .line 446
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    sget-object v9, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v3    # "m":Landroid/os/Message;
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "mjsonObject":Lorg/json/JSONObject;
    :goto_3
    iput-boolean v12, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->flag:Z

    goto :goto_0

    .line 390
    .restart local v5    # "method":Ljava/lang/String;
    .restart local v6    # "mjsonObject":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v9, "saveShortcutDevice"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 391
    new-instance v9, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;-><init>()V

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->upload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "jsonString":Ljava/lang/String;
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v2, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 393
    const-string v4, "Uploading remote data..."

    .line 394
    goto :goto_1

    .end local v2    # "jsonString":Ljava/lang/String;
    :cond_5
    const-string v9, "uploadRemoteControl"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 395
    new-instance v9, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;-><init>()V

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->upload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .restart local v2    # "jsonString":Ljava/lang/String;
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v2, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 397
    const-string v4, "Uploading scenario data..."

    .line 398
    goto :goto_1

    .end local v2    # "jsonString":Ljava/lang/String;
    :cond_6
    const-string v9, "uploadScene"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 399
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/kankunit/smartplugcronus/util/UploadOrDownInfoUtil;->updateLinkage(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 400
    const-string v4, "Uploading scene linkage data..."

    .line 401
    goto/16 :goto_1

    :cond_7
    const-string v9, "uploadLinkage"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 402
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 403
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 405
    :cond_8
    const-string v4, "Upload completed"

    .line 406
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 407
    .restart local v3    # "m":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v3, Landroid/os/Message;->what:I

    .line 408
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    sget-object v9, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 448
    .end local v3    # "m":Landroid/os/Message;
    .end local v5    # "method":Ljava/lang/String;
    .end local v6    # "mjsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 449
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 418
    .end local v0    # "exception":Ljava/lang/Exception;
    .restart local v5    # "method":Ljava/lang/String;
    .restart local v6    # "mjsonObject":Lorg/json/JSONObject;
    :cond_9
    :try_start_2
    const-string v9, "downShortcutDevice"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 419
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/kankunit/smartplugcronus/util/UploadOrDownInfoUtil;->downloadShortcut(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    new-instance v9, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;-><init>()V

    invoke-virtual {v9, v8}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->sendDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, "sendMessage":Ljava/lang/String;
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 422
    const-string v4, "Downloading the remote control data..."

    .line 423
    goto/16 :goto_2

    .end local v7    # "sendMessage":Ljava/lang/String;
    :cond_a
    const-string v9, "downloadRemoteControl"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 424
    new-instance v1, Lorg/json/JSONArray;

    const-string v9, "datalist"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 425
    .local v1, "jsonArray":Lorg/json/JSONArray;
    new-instance v9, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;-><init>()V

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/kankunit/smartplugcronus/util/synchronization/RemoteControlUtil;->download(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    new-instance v9, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;-><init>()V

    invoke-virtual {v9, v8}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->sendDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 427
    .restart local v7    # "sendMessage":Ljava/lang/String;
    new-instance v9, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7, p0}, Lcom/kankunit/smartplugcronus/minautil/MinaSSLUtil;->sendSSLMsg(Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 428
    const-string v4, "Downloading scene data..."

    .line 429
    goto/16 :goto_2

    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "sendMessage":Ljava/lang/String;
    :cond_b
    const-string v9, "downloadScene"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 430
    new-instance v1, Lorg/json/JSONArray;

    const-string v9, "datalist"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 431
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    new-instance v9, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;

    invoke-direct {v9}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;-><init>()V

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/kankunit/smartplugcronus/util/synchronization/SceneUtil;->download(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, p0}, Lcom/kankunit/smartplugcronus/util/UploadOrDownInfoUtil;->sendDownLinkageMsg(Landroid/content/Context;Lcom/kankunit/smartplugcronus/minautil/MinaSSLReceiveListener;)V

    .line 433
    const-string v4, "Downloading scene linkage data..."

    .line 434
    goto/16 :goto_2

    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_c
    const-string v9, "downLinkage"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 435
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/kankunit/smartplugcronus/util/UploadOrDownInfoUtil;->downLinkage(Landroid/content/Context;Ljava/lang/String;)V

    .line 436
    iget-object v9, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->myDialog:Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    invoke-virtual {v9}, Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;->dismiss()V

    .line 437
    const-string v4, "Download complete"

    .line 438
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 439
    .restart local v3    # "m":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v3, Landroid/os/Message;->what:I

    .line 440
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 441
    sget-object v9, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 456
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0238

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 465
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 459
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "msg":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 463
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public hideShadePopWindow()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "userinfo"

    const-string v7, "userid"

    invoke-static {v5, v6, v7}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "userid":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 280
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/kankunit/smartplugcronus/view/WornActivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 286
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_1
    sget-boolean v5, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isUpdate:Z

    if-eqz v5, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 288
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    .line 289
    const-class v8, Lcom/kankunit/smartplugcronus/service/UpdateAppService;

    .line 288
    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    invoke-virtual {v5, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "The current version is up to date"

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 292
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 297
    :sswitch_2
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 298
    .local v1, "activity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isMenuOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 299
    invoke-virtual {v1, v8}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->openMenu(I)V

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 306
    .end local v1    # "activity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    :sswitch_3
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v5, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->closeMenu()V

    goto :goto_0

    .line 311
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 312
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/kankunit/smartplugcronus/view/UpdateFirewaresActivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 321
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_5
    new-instance v0, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;-><init>()V

    .line 322
    .local v0, "accountManagerFragMent":Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 323
    .local v3, "menuActivity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    iput-object v0, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->fragment:Lcom/kankunit/smartplugcronus/base/BaseFragment;

    .line 324
    invoke-virtual {v3, v0}, Lcom/kankunit/smartplugcronus/view/MenuActivity;->changeFragment(Landroid/support/v4/app/Fragment;)V

    .line 325
    const/4 v5, 0x2

    iput v5, v3, Lcom/kankunit/smartplugcronus/view/MenuActivity;->accountFlag:I

    goto/16 :goto_0

    .line 329
    .end local v0    # "accountManagerFragMent":Lcom/kankunit/smartplugcronus/fragment/AccountManagerFragMent;
    .end local v3    # "menuActivity":Lcom/kankunit/smartplugcronus/view/MenuActivity;
    :sswitch_6
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    const-string v6, "Please make sure to upload configuration"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 331
    const-string v6, "Upload account configuration will be configured locally before uploading to the cloud and replace the configuration."

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 332
    const-string v6, "Good"

    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$4;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$4;-><init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 344
    const-string v6, "Cancel"

    invoke-virtual {v5, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 345
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 349
    :sswitch_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    const-string v6, "Please make sure to download the configuration"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 351
    const-string v6, "Download account configuration will cloud configuration to be downloaded to the local and replace the local configuration."

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 352
    const-string v6, "Good"

    new-instance v7, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;

    invoke-direct {v7, p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$5;-><init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 364
    const-string v6, "Cancel"

    invoke-virtual {v5, v6, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 365
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07004e -> :sswitch_2
        0x7f070056 -> :sswitch_3
        0x7f070366 -> :sswitch_5
        0x7f070367 -> :sswitch_5
        0x7f07036a -> :sswitch_1
        0x7f07036c -> :sswitch_4
        0x7f07036d -> :sswitch_0
        0x7f07036e -> :sswitch_6
        0x7f070370 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f070367

    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 102
    const v8, 0x7f0300d3

    invoke-virtual {p1, v8, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 103
    .local v3, "parent":Landroid/view/View;
    new-instance v8, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$1;-><init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)V

    sput-object v8, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->handler:Landroid/os/Handler;

    .line 171
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Lcom/kankunit/smartplugcronus/view/MenuActivity;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->ma:Lcom/kankunit/smartplugcronus/view/MenuActivity;

    .line 172
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->acc_image:Landroid/widget/ImageView;

    .line 173
    const v8, 0x7f0701f9

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->fireware_red_point:Landroid/widget/ImageView;

    .line 174
    const v8, 0x7f070056

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    .line 175
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v8, 0x7f07036d

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->worn_layout:Landroid/widget/RelativeLayout;

    .line 177
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->worn_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v8, 0x7f07036a

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->updateapp:Landroid/widget/RelativeLayout;

    .line 179
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->updateapp:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v8, 0x7f07036e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_upload_layout:Landroid/widget/RelativeLayout;

    .line 181
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_upload_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v8, 0x7f070370

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_download_layout:Landroid/widget/RelativeLayout;

    .line 183
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_download_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v8, 0x7f070366

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_acc_layout:Landroid/widget/RelativeLayout;

    .line 185
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_acc_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v8, 0x7f07036c

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_gj_layout:Landroid/widget/RelativeLayout;

    .line 187
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_gj_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v8, 0x7f07036b

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->update_red_point:Landroid/widget/ImageView;

    .line 190
    sget-boolean v8, Lcom/kankunit/smartplugcronus/view/MenuActivity;->isUpdate:Z

    if-eqz v8, :cond_1

    .line 191
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->update_red_point:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    :goto_0
    sget-boolean v8, Lcom/kankunit/smartplugcronus/view/MenuActivity;->canFirewareUpdata:Z

    if-eqz v8, :cond_2

    .line 196
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->fireware_red_point:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :goto_1
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_acc_img:Landroid/widget/ImageView;

    .line 202
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->set_acc_img:Landroid/widget/ImageView;

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v8, 0x7f07004e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 204
    .local v2, "menuButton":Landroid/widget/ImageButton;
    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const v8, 0x7f070368

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 206
    .local v7, "switchButton":Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    const v8, 0x7f070369

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 208
    .local v5, "set_pwd_sbt":Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    .line 209
    const-string v9, "x"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 210
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v8, "x"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 211
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 212
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 214
    :cond_0
    new-instance v8, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$2;

    invoke-direct {v8, p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$2;-><init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;)V

    invoke-virtual {v7, v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 231
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "KSmartLoginInfo"

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 232
    .local v4, "pwdSp":Landroid/content/SharedPreferences;
    const-string v8, "hasPwd"

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 233
    .local v1, "hasPwd":Z
    invoke-virtual {v5, v1}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 234
    new-instance v8, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;

    invoke-direct {v8, p0, v5, v4}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment$3;-><init>(Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;Lcom/kankunit/smartplugcronus/customview/SwitchButton;Landroid/content/SharedPreferences;)V

    invoke-virtual {v5, v8}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 245
    return-object v3

    .line 193
    .end local v0    # "b":Z
    .end local v1    # "hasPwd":Z
    .end local v2    # "menuButton":Landroid/widget/ImageButton;
    .end local v4    # "pwdSp":Landroid/content/SharedPreferences;
    .end local v5    # "set_pwd_sbt":Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .end local v7    # "switchButton":Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    :cond_1
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->update_red_point:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v8, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->fireware_red_point:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "userface"

    const-string v6, "faceimage"

    invoke-static {v4, v5, v6}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->getValueFromSP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "photoPathString":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 263
    :try_start_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 264
    .local v2, "photo":Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/util/ImageUtil;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 265
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 266
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->acc_image:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->onResume()V

    .line 273
    return-void

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showShadePopWindow()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/SetinfoFragment;->shadowlayer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0
    .param p1, "dm"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .prologue
    .line 256
    return-void
.end method
