.class Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;
.super Ljava/lang/Object;
.source "IndexFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

.field private final synthetic val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

.field private final synthetic val$inputPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;Landroid/widget/EditText;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->val$inputPassword:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 985
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->val$inputPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$16(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;Ljava/lang/String;)V

    .line 986
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wan_phone%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    move-result-object v3

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v3

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pwdStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%check%request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "cmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->val$fModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v8

    .line 990
    .local v8, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->pwdStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$17(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->setPassword(Ljava/lang/String;)V

    .line 991
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v2

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->updateDevice(Landroid/content/Context;Lcom/kankunit/smartplugcronus/model/DeviceModel;)V

    .line 992
    const/4 v6, 0x0

    .line 993
    .local v6, "b":Z
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIsDirect()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 994
    const/4 v6, 0x1

    .line 996
    :cond_0
    new-instance v0, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;

    const-string v2, ""

    const-string v3, ""

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v4

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$18(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0xb156

    iget-object v7, p0, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4$1;->this$2:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->this$1:Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2$4;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;

    move-result-object v7

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->this$0:Lcom/kankunit/smartplugcronus/fragment/IndexFragment;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;->access$0(Lcom/kankunit/smartplugcronus/fragment/IndexFragment$2;)Lcom/kankunit/smartplugcronus/fragment/IndexFragment;

    move-result-object v7

    # getter for: Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->sfa:Lcom/kankunit/smartplugcronus/view/MenuActivity;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/fragment/IndexFragment;->access$7(Lcom/kankunit/smartplugcronus/fragment/IndexFragment;)Lcom/kankunit/smartplugcronus/view/MenuActivity;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;IZLandroid/content/Context;)V

    .line 997
    .local v0, "st":Lcom/kankunit/smartplugcronus/thread/Smart1Thread;
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/thread/Smart1Thread;->start()V

    .line 998
    return-void
.end method
