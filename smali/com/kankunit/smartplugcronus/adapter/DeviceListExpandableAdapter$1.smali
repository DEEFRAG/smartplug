.class Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;
.super Ljava/lang/Object;
.source "DeviceListExpandableAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

.field private final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->val$mac:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;)Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 189
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    .line 190
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "buttonText":Ljava/lang/String;
    const-string v7, "USB"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 236
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->val$mac:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/kankunit/smartplugcronus/dao/DeviceDao;->getDeviceByMac(Landroid/content/Context;Ljava/lang/String;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v5

    .line 195
    .local v5, "model":Lcom/kankunit/smartplugcronus/model/DeviceModel;
    const/4 v3, 0x0

    .line 196
    .local v3, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0162

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 197
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .restart local v3    # "intent":Landroid/content/Intent;
    :goto_1
    const-string v7, "mac"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->val$mac:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v7, "pwd"

    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0163

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 199
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->val$mac:Ljava/lang/String;

    const-string v9, "rf_module"

    invoke-static {v7, v8, v9}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getListByMacAndFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 200
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 201
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelRFActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "mac"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->val$mac:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 206
    :cond_3
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "flag"

    const-string v8, "rf_module"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 208
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    :cond_4
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0165

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 209
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->val$mac:Ljava/lang/String;

    const-string v9, "ir_module"

    invoke-static {v7, v8, v9}, Lcom/kankunit/smartplugcronus/dao/RemoteControlDao;->getListByMacAndFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 210
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 211
    :cond_5
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "mac"

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->val$mac:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    :cond_6
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/kankunit/smartplugcronus/view/RemoteControlListActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v7, "flag"

    const-string v8, "ir_module"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 218
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    :cond_7
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0c0166

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 219
    invoke-virtual {v5}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getMac()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "devicemac":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "wan_phone%mac%nopassword%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%getUserIp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, "msg":Ljava/lang/String;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->getInstance(Landroid/content/Context;)Lcom/kankunit/smartplugcronus/util/XMPPUtil;

    move-result-object v7

    const-string v8, "xx@getUserIp.kankun-smartplug.com"

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/util/EncryptUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/kankunit/smartplugcronus/util/XMPPUtil;->sendMessage(Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    iget-object v8, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v8}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0249

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v10}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0039

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x1388

    new-instance v12, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1$1;

    invoke-direct {v12, p0}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1$1;-><init>(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;)V

    invoke-static {v8, v9, v10, v11, v12}, Lcom/kankunit/smartplugcronus/util/ShowDialogUtil;->showSuperProgressDiaglog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kankunit/smartplugcronus/customview/SuperProgressDialog$OnTimeOutListener;)Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$1(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;Lcom/kankunit/smartplugcronus/customview/SuperProgressDialog;)V

    goto/16 :goto_0

    .line 231
    .end local v2    # "devicemac":Ljava/lang/String;
    .end local v6    # "msg":Ljava/lang/String;
    :cond_8
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter$1;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;

    # getter for: Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;->access$0(Lcom/kankunit/smartplugcronus/adapter/DeviceListExpandableAdapter;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v3    # "intent":Landroid/content/Intent;
    goto/16 :goto_1
.end method
