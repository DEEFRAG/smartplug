.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$getStatusThread;
.super Ljava/lang/Thread;
.source "DeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getStatusThread"
.end annotation


# instance fields
.field mac:Ljava/lang/String;

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;Ljava/lang/String;)V
    .locals 1
    .param p2, "mac"    # Ljava/lang/String;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$getStatusThread;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 670
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$getStatusThread;->mac:Ljava/lang/String;

    .line 672
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$getStatusThread;->mac:Ljava/lang/String;

    .line 673
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 678
    return-void
.end method
