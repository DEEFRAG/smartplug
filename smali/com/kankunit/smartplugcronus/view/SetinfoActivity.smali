.class public Lcom/kankunit/smartplugcronus/view/SetinfoActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SetinfoActivity.java"


# instance fields
.field private updateapp:Landroid/widget/RelativeLayout;

.field private worn_layout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method

.method private canUpate()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 96
    :try_start_0
    const-string v7, "http://app.ikonke.com/ver.json"

    invoke-static {v7}, Lcom/kankunit/smartplugcronus/util/NetUtil;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, "verjson":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 100
    .local v1, "g":Lcom/google/gson/Gson;
    const-class v7, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;

    invoke-virtual {v1, v5, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;

    .line 101
    .local v3, "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v3}, Lcom/kankunit/smartplugcronus/model/UpdateAppModel;->getVerCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 103
    .local v2, "newVerCode":I
    invoke-static {p0}, Lcom/kankunit/smartplugcronus/util/ConfigUtil;->getVerCode(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 104
    .local v4, "vercode":I
    if-le v2, v4, :cond_0

    .line 105
    const/4 v6, 0x1

    .line 113
    .end local v1    # "g":Lcom/google/gson/Gson;
    .end local v2    # "newVerCode":I
    .end local v3    # "ss":Lcom/kankunit/smartplugcronus/model/UpdateAppModel;
    .end local v4    # "vercode":I
    .end local v5    # "verjson":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 49
    const v3, 0x7f0300d3

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->setContentView(I)V

    .line 50
    const-string v3, "x"

    invoke-virtual {p0, v3, v4}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "x"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    .local v0, "b":Z
    const v3, 0x7f07036d

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->worn_layout:Landroid/widget/RelativeLayout;

    .line 53
    const v3, 0x7f07036a

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->updateapp:Landroid/widget/RelativeLayout;

    .line 54
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->worn_layout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$1;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$1;-><init>(Lcom/kankunit/smartplugcronus/view/SetinfoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v3, 0x7f070368

    invoke-virtual {p0, v3}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/kankunit/smartplugcronus/customview/SwitchButton;

    .line 64
    .local v2, "switchButton":Lcom/kankunit/smartplugcronus/customview/SwitchButton;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v2, v5}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setChecked(Z)V

    .line 67
    :cond_0
    new-instance v3, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$2;

    invoke-direct {v3, p0}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$2;-><init>(Lcom/kankunit/smartplugcronus/view/SetinfoActivity;)V

    invoke-virtual {v2, v3}, Lcom/kankunit/smartplugcronus/customview/SwitchButton;->setOnChangedListener(Lcom/kankunit/smartplugcronus/customview/SwitchButton$OnChangedListener;)V

    .line 83
    iget-object v3, p0, Lcom/kankunit/smartplugcronus/view/SetinfoActivity;->updateapp:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$3;

    invoke-direct {v4, p0}, Lcom/kankunit/smartplugcronus/view/SetinfoActivity$3;-><init>(Lcom/kankunit/smartplugcronus/view/SetinfoActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 42
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 37
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 38
    return-void
.end method
