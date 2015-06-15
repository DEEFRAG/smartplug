.class Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$1;
.super Ljava/lang/Object;
.source "WirelessConfigureNewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 125
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "devicetype"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    # getter for: Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->devicetype:Ljava/lang/String;
    invoke-static {v3}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->access$26(Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 128
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-virtual {v2, v1}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->startActivity(Landroid/content/Intent;)V

    .line 129
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment$1;->this$0:Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;

    invoke-virtual {v2}, Lcom/kankunit/smartplugcronus/fragment/WirelessConfigureNewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 130
    return-void
.end method
