.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;
.super Ljava/lang/Object;
.source "DeviceFragment_bak.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

.field private final synthetic val$inputPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->val$inputPassword:Landroid/widget/EditText;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 444
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->val$inputPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, "password":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v2

    iput-object v9, v2, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->pwd:Ljava/lang/String;

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v3

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%check%request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v3

    iget-object v3, v3, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->mac:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 450
    .local v8, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-virtual {v8, v9}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPassword(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    invoke-virtual {v2, v8}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 452
    const/4 v6, 0x0

    .line 453
    .local v6, "b":Z
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 454
    const/4 v6, 0x1

    .line 456
    :cond_0
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$2(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0xb156

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak$5;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;

    move-result-object v7

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->context:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;->access$3(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment_bak;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 457
    .local v0, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 458
    return-void
.end method
