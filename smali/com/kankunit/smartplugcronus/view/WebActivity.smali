.class public Lcom/kankunit/smartplugcronus/view/WebActivity;
.super Lcom/kankunit/smartplugcronus/base/BaseActivity;
.source "WebActivity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/base/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 15
    const v1, 0x7f0703a9

    invoke-virtual {p0, v1}, Lcom/kankunit/smartplugcronus/view/WebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/kankunit/smartplugcronus/view/WebActivity;->webView:Landroid/webkit/WebView;

    .line 16
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/WebActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 17
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/WebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    return-void
.end method

.method public initHongMiHeader()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/kankunit/smartplugcronus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/WebActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 25
    const v0, 0x7f0300f7

    invoke-virtual {p0, v0}, Lcom/kankunit/smartplugcronus/view/WebActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/view/WebActivity;->initView()V

    .line 27
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/kankunit/smartplugcronus/view/WebActivity;->finish()V

    .line 44
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
