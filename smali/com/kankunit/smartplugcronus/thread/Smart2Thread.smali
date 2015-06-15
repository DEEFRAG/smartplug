.class public Lcom/kankunit/smartplugcronus/thread/Smart2Thread;
.super Ljava/lang/Thread;
.source "Smart2Thread.java"


# instance fields
.field private cmd:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private handler:Landroid/os/Handler;

.field private minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

.field private phoneMac:Ljava/lang/String;

.field private plugName:Ljava/lang/String;

.field private userJID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "userJID"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "phoneMac"    # Ljava/lang/String;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "deviceModel"    # Lcom/kankunit/smartplugcronus/model/DeviceModel;
    .param p7, "plugName"    # Ljava/lang/String;
    .param p8, "minaHandler"    # Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->userJID:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->cmd:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->context:Landroid/content/Context;

    .line 24
    iput-object p4, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->phoneMac:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->handler:Landroid/os/Handler;

    .line 26
    iput-object p6, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 27
    iput-object p7, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->plugName:Ljava/lang/String;

    .line 28
    iput-object p8, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->userJID:Ljava/lang/String;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->cmd:Ljava/lang/String;

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->phoneMac:Ljava/lang/String;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->plugName:Ljava/lang/String;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/thread/Smart2Thread;->minaHandler:Lcom/kankunit/smartplugcronus/minautil/MinaHandler;

    invoke-virtual/range {v0 .. v8}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendEncodeMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/kankunit/smartplugcronus/model/DeviceModel;Ljava/lang/String;Lcom/kankunit/smartplugcronus/minautil/MinaHandler;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v9

    .line 35
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
