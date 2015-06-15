.class public abstract Lcom/kankunit/smartplugcronus/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;
    }
.end annotation


# instance fields
.field private actionFilterName:Ljava/lang/String;

.field private baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doReceive(Landroid/content/Intent;)V
.end method

.method public getActionFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment;->actionFilterName:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseReceiver()Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 26
    new-instance v1, Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;

    invoke-direct {v1, p0, v3}, Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/base/BaseFragment;Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;

    .line 27
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 28
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "ikonke.basebroadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    invoke-super {p0, p3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    return-object v3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 68
    return-void
.end method

.method public setActionFilterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionFilterName"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment;->actionFilterName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setBaseReceiver(Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;)V
    .locals 0
    .param p1, "baseReceiver"    # Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/base/BaseFragment;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseFragment$BaseReceiver;

    .line 55
    return-void
.end method

.method public abstract showSwitch(Lcom/kankunit/smartplugcronus/model/DeviceModel;)V
.end method
