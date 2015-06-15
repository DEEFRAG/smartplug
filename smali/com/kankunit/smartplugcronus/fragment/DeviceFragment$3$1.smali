.class Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3$1;
.super Ljava/lang/Object;
.source "DeviceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 525
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 526
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    const-string v2, "https://ikonke.daikeapp.com/kb/articles/761"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 528
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 529
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3$1;->this$1:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->this$0:Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;
    invoke-static {v2}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;->access$0(Lcom/kankunit/smartplugcronus/fragment/DeviceFragment$3;)Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/fragment/DeviceFragment;->startActivity(Landroid/content/Intent;)V

    .line 530
    return-void
.end method
