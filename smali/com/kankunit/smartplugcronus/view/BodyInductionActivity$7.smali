.class Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;
.super Ljava/lang/Object;
.source "BodyInductionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 332
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->mac:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$4(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v2, "type"

    const-string v3, "rt_plugs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$10(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$10(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "name"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->shortModel:Lcom/kankunit/smartplugcronus/model/ShortCutModel;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->access$10(Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;)Lcom/kankunit/smartplugcronus/model/ShortCutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/ShortCutModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    const-class v3, Lcom/kankunit/smartplugcronus/view/UpdateTitleActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 340
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 341
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/view/BodyInductionActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    return-void
.end method
