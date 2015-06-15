.class Lcom/kankunit/smartplugcronus/service/ProtectService$2;
.super Landroid/content/BroadcastReceiver;
.source "ProtectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/service/ProtectService;->protect_device()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/service/ProtectService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    .line 145
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x64

    const/4 v5, 0x1

    .line 148
    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "level":I
    const-string v3, "scale"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 150
    .local v1, "scale":I
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    mul-int/lit8 v4, v0, 0x64

    div-int/2addr v4, v1

    iput v4, v3, Lcom/kankunit/smartplugcronus/service/ProtectService;->electrictLV:I

    .line 151
    const-string v3, "status"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 152
    .local v2, "status":I
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    iget v3, v3, Lcom/kankunit/smartplugcronus/service/ProtectService;->electrictLV:I

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirstShow:Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$14(Lcom/kankunit/smartplugcronus/service/ProtectService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # invokes: Lcom/kankunit/smartplugcronus/service/ProtectService;->isChargeOK()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$15(Lcom/kankunit/smartplugcronus/service/ProtectService;)V

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    iget v3, v3, Lcom/kankunit/smartplugcronus/service/ProtectService;->electrictLV:I

    const/16 v4, 0x63

    if-ge v3, v4, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v7, :cond_2

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # invokes: Lcom/kankunit/smartplugcronus/service/ProtectService;->isCharge()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$16(Lcom/kankunit/smartplugcronus/service/ProtectService;)V

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    iget v3, v3, Lcom/kankunit/smartplugcronus/service/ProtectService;->electrictLV:I

    if-eq v3, v6, :cond_3

    if-eq v2, v5, :cond_3

    if-eq v2, v7, :cond_3

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # getter for: Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirstShow:Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$14(Lcom/kankunit/smartplugcronus/service/ProtectService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/service/ProtectService$2;->this$0:Lcom/kankunit/smartplugcronus/service/ProtectService;

    # invokes: Lcom/kankunit/smartplugcronus/service/ProtectService;->notCharge()V
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/service/ProtectService;->access$17(Lcom/kankunit/smartplugcronus/service/ProtectService;)V

    .line 162
    :cond_3
    return-void
.end method
