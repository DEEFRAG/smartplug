.class Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$2;
.super Ljava/lang/Object;
.source "DeviceConfigureNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    iget-object v2, v2, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->pop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 223
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v2, "http://bangzhu.ikonke.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 226
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity$2;->this$0:Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method
