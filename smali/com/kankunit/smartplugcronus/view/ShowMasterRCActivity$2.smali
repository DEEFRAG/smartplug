.class Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$2;
.super Ljava/lang/Object;
.source "ShowMasterRCActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    const-class v2, Lcom/kankunit/smartplugcronus/view/MasterControlActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "controlId"

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    # getter for: Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->controlId:I
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->access$2(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-virtual {v1, v0}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-virtual {v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->finish()V

    .line 167
    return-void
.end method
