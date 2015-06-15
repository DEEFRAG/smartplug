.class Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;
.super Ljava/lang/Object;
.source "RemoteControlPanelIRActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0c0185

    .line 252
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 253
    .local v5, "time":I
    new-instance v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;-><init>()V

    .line 254
    .local v0, "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mi_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setDname(Ljava/lang/String;)V

    .line 255
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setName(Ljava/lang/String;)V

    .line 256
    const v6, 0x7f02008d

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setPhoto(I)V

    .line 257
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    iget-object v6, v6, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setMac(Ljava/lang/String;)V

    .line 258
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setType(I)V

    .line 259
    const-string v6, "open"

    invoke-virtual {v0, v6}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->setStatus(Ljava/lang/String;)V

    .line 260
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v6

    invoke-virtual {v6, v0}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 262
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v6

    const-class v7, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    invoke-virtual {v6, v7}, Lnet/tsz/afinal/FinalDb;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 263
    .local v1, "controlModels":Ljava/util/List;, "Ljava/util/List<Lcom/kankunit/smartplugcronus/model/RemoteControlModel;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    check-cast v0, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;

    .line 265
    .restart local v0    # "controlModel":Lcom/kankunit/smartplugcronus/model/RemoteControlModel;
    new-instance v4, Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    invoke-direct {v4}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;-><init>()V

    .line 266
    .local v4, "shortCutModel":Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    const v6, 0x7f0201bf

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIcon(I)V

    .line 267
    const-string v6, "on"

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOn(Ljava/lang/String;)V

    .line 268
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setIsOnline(I)V

    .line 269
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-static {v6}, Lcom/kankunit/smartplugcronus/dao/ShortcutDao;->getShortcutCount(Landroid/content/Context;)I

    move-result v3

    .line 270
    .local v3, "orderNo":I
    invoke-virtual {v4, v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setOrderNo(I)V

    .line 271
    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setRelatedid(I)V

    .line 272
    const-string v6, "miRemoteControl"

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setShortcutType(Ljava/lang/String;)V

    .line 273
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setTitle(Ljava/lang/String;)V

    .line 274
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->deviceModel:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$3(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setDeviceTitle(Ljava/lang/String;)V

    .line 275
    const-string v6, "other"

    invoke-virtual {v4, v6}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->setPluginType(Ljava/lang/String;)V

    .line 276
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->db:Lnet/tsz/afinal/FinalDb;
    invoke-static {v6}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->access$2(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)Lnet/tsz/afinal/FinalDb;

    move-result-object v6

    invoke-virtual {v6, v4}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 278
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    const-class v7, Lcom/kankunit/smartplugcronus/view/MiControlActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "controlId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/model/RemoteControlModel;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v6, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-virtual {v6, v2}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method
