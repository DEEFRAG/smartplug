.class Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;
.super Ljava/lang/Object;
.source "DeviceDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

.field private final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->val$res:Landroid/content/res/Resources;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v9, 0x7f020163

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 544
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->val$res:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 545
    .local v0, "br_icon2":Landroid/graphics/drawable/Drawable;
    sput-boolean v7, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    .line 546
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    const-class v5, Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->stopService(Landroid/content/Intent;)Z

    .line 547
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->val$res:Landroid/content/res/Resources;

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 549
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 551
    sput-boolean v8, Lcom/kankunit/smartplugcronus/service/ProtectService;->isProtect:Z

    .line 552
    sput-boolean v8, Lcom/kankunit/smartplugcronus/service/ProtectService;->isFirst:Z

    .line 553
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/service/ProtectService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    .local v1, "intent_protect":Landroid/content/Intent;
    const-string v2, "mac"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->mac:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$12(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v2, "direct"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->isDirect:Z
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$13(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    const-string v2, "pwd"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->pwd:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$14(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v2, "userIp"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->model:Lcom/kankunit/smartplugcronus/model/DeviceModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->access$3(Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;)Lcom/kankunit/smartplugcronus/model/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/DeviceModel;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 559
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity$7;->val$res:Landroid/content/res/Resources;

    const v3, 0x7f020164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 561
    sget-object v2, Lcom/kankunit/smartplugcronus/view/DeviceDetailActivity;->device_protect:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 562
    return-void
.end method
