.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$getStatusThread;
.super Ljava/lang/Thread;
.source "DeviceFragment_bak.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getStatusThread"
.end annotation


# instance fields
.field mac:Ljava/lang/String;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;Ljava/lang/String;)V
    .locals 1
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$getStatusThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 650
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$getStatusThread;->mac:Ljava/lang/String;

    .line 652
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$getStatusThread;->mac:Ljava/lang/String;

    .line 653
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method
