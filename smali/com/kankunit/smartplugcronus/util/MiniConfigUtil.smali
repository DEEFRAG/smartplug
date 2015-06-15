.class public Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;
.super Ljava/lang/Object;
.source "MiniConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private isStop:Z

.field private tempMac:Ljava/lang/String;

.field private udpSocket:Ljava/net/DatagramSocket;

.field private wifipwd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "wifipwd"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->isStop:Z

    .line 25
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->handler:Landroid/os/Handler;

    .line 27
    iput-object p3, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->wifipwd:Ljava/lang/String;

    .line 29
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v2, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->udpSocket:Ljava/net/DatagramSocket;

    .line 30
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->udpSocket:Ljava/net/DatagramSocket;

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    new-instance v0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;-><init>(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;)V

    .line 35
    .local v0, "ct":Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;->start()V

    .line 40
    return-void

    .line 31
    .end local v0    # "ct":Lcom/kankunit/smartplugcronus/util/MiniConfigUtil$ConfigThread;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->udpSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/util/MiniConfigUtil;->wifipwd:Ljava/lang/String;

    return-object v0
.end method
