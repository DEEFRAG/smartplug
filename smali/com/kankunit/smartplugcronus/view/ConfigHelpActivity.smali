.class public Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ConfigHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;
    }
.end annotation


# instance fields
.field deviceType:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isStop:Z

.field private lightView:Landroid/widget/ImageView;

.field private mini_config_cancel:Landroid/widget/ImageView;

.field private mini_config_help:Landroid/widget/TextView;

.field private mini_config_next:Landroid/widget/ImageView;

.field private mini_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->isStop:Z

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->isStop:Z

    return v0
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->lightView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->finish()V

    goto :goto_0

    .line 87
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 88
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v4, "https://ikonke.daikeapp.com/kb/articles/760"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    .local v1, "content_url":Landroid/net/Uri;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    .end local v1    # "content_url":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "connection=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "devicetype"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->finish()V

    goto :goto_0

    .line 103
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v4, "devicetype"

    iget-object v5, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v2    # "i":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v2}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->finish()V

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x7f070136
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$1;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)V

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->handler:Landroid/os/Handler;

    .line 51
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 52
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "devicetype"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    .line 56
    const v0, 0x7f070133

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->mini_title:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f070138

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->mini_config_help:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f070136

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->mini_config_cancel:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f070137

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->mini_config_next:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->mini_config_help:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->mini_config_cancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->mini_config_next:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f070134

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->lightView:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    const-string v1, "mini"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->lightView:Landroid/widget/ImageView;

    const v1, 0x7f02030b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    const-string v1, "k2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->mini_title:Landroid/widget/TextView;

    const-string v1, "Confirm Small K II has access to power"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->lightView:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->deviceType:Ljava/lang/String;

    const-string v1, "k1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->mini_title:Landroid/widget/TextView;

    const-string v1, "Confirm Small K has access to power"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;->lightView:Landroid/widget/ImageView;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 77
    :cond_2
    new-instance v0, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;

    invoke-direct {v0, p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;-><init>(Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity;)V

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelpActivity$flashLight;->start()V

    .line 78
    return-void
.end method
