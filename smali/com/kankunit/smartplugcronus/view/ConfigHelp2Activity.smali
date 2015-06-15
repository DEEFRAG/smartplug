.class public Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "ConfigHelp2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private alreadyConnection:Landroid/widget/ImageButton;

.field private back:Landroid/widget/ImageButton;

.field private deviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->deviceType:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 45
    :pswitch_0
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->finish()V

    goto :goto_0

    .line 48
    :pswitch_1
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/NetUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "devicetype"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kankunit/smartplugcronus/view/DeviceConfigureNewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->finish()V

    goto :goto_0

    .line 56
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    const-string v2, "Not connected to WLAN"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x7f070139
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "devicetype"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->deviceType:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 33
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->setContentView(I)V

    .line 35
    const v0, 0x7f070139

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->back:Landroid/widget/ImageButton;

    .line 36
    const v0, 0x7f07013a

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->alreadyConnection:Landroid/widget/ImageButton;

    .line 37
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->back:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ConfigHelp2Activity;->alreadyConnection:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
