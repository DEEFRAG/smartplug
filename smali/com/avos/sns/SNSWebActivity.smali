.class public Lcom/avos/sns/SNSWebActivity;
.super Landroid/app/Activity;
.source "SNSWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/sns/SNSWebActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/avos/sns/SNSWebActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/sns/SNSWebActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/avos/sns/SNSWebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v3, Lcom/avos/sns/R$layout;->sns_web_activity:I

    invoke-virtual {p0, v3}, Lcom/avos/sns/SNSWebActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/avos/sns/SNSWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "url":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 38
    sget v3, Lcom/avos/sns/R$id;->webview:I

    invoke-virtual {p0, v3}, Lcom/avos/sns/SNSWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 41
    .local v1, "myWebView":Landroid/webkit/WebView;
    new-instance v3, Lcom/avos/sns/SNSWebActivity$MyWebViewClient;

    invoke-direct {v3, p0}, Lcom/avos/sns/SNSWebActivity$MyWebViewClient;-><init>(Lcom/avos/sns/SNSWebActivity;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 44
    .end local v1    # "myWebView":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 49
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 23
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 28
    return-void
.end method
