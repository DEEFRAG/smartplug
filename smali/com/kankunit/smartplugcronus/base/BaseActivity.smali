.class public abstract Lcom/kankunit/smartplugcronus/base/BaseActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;
    }
.end annotation


# instance fields
.field private actionFilterName:Ljava/lang/String;

.field private baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doReceive(Landroid/content/Intent;)V
.end method

.method public getActionFilterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/base/BaseActivity;->actionFilterName:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseReceiver()Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/base/BaseActivity;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;

    return-object v0
.end method

.method public abstract initHongMiHeader()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 31
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 38
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "HM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    .line 49
    const/16 v2, 0x11

    .line 46
    invoke-direct {v0, v4, v4, v2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    .line 50
    .local v0, "lp":Landroid/support/v7/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "viewTitleBar":Landroid/view/View;
    const v2, 0x7f020299

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 53
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 56
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 59
    .end local v0    # "lp":Landroid/support/v7/app/ActionBar$LayoutParams;
    .end local v1    # "viewTitleBar":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->initHongMiHeader()V

    .line 65
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 69
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "HM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onDestroy()V

    .line 117
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 78
    new-instance v1, Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;-><init>(Lcom/kankunit/smartplugcronus/base/BaseActivity;Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;)V

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/base/BaseActivity;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "ikonke.basebroadcast"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/base/BaseActivity;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 83
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/base/BaseActivity;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 97
    return-void
.end method

.method public setActionFilterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionFilterName"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/base/BaseActivity;->actionFilterName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setBaseReceiver(Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;)V
    .locals 0
    .param p1, "baseReceiver"    # Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/base/BaseActivity;->baseReceiver:Lcom/kankunit/smartplugcronus/base/BaseActivity$BaseReceiver;

    .line 107
    return-void
.end method
