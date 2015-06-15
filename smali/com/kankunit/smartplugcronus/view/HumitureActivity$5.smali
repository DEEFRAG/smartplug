.class Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;
.super Ljava/lang/Object;
.source "HumitureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/HumitureActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 408
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureActivity;->mac:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->access$1(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v2, "type"

    const-string v3, "tp_plugs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->access$2(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->access$2(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 411
    const-string v2, "name"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/HumitureActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->access$2(Lcom/kankunit/smartplugcronus/view/HumitureActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 414
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 415
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 416
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/HumitureActivity$5;->this$0:Lcom/kankunit/smartplugcronus/view/HumitureActivity;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/view/HumitureActivity;->startActivity(Landroid/content/Intent;)V

    .line 417
    return-void
.end method
