.class public Lcom/tencent/open/RedoDialog;
.super Landroid/app/Dialog;
.source "ProGuard"


# static fields
.field static final a:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field public b:Lorg/json/JSONObject;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/tencent/tauth/IUiListener;

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 31
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/tencent/open/RedoDialog;->a:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic a(Lcom/tencent/open/RedoDialog;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 88
    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tencent/open/RedoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/tencent/open/RedoDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    .line 91
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 92
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 93
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/open/j;

    invoke-direct {v2, p0, v3}, Lcom/tencent/open/j;-><init>(Lcom/tencent/open/RedoDialog;Lcom/tencent/open/o;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 94
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 95
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/open/g;

    invoke-direct {v2, p0, v3}, Lcom/tencent/open/g;-><init>(Lcom/tencent/open/RedoDialog;Lcom/tencent/open/o;)V

    const-string v3, "sdk_js_if"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 98
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/tencent/open/RedoDialog;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    sget-object v2, Lcom/tencent/open/RedoDialog;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 106
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 107
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v1, p0, Lcom/tencent/open/RedoDialog;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 110
    return-void
.end method

.method static synthetic b(Lcom/tencent/open/RedoDialog;)Lcom/tencent/tauth/IUiListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/open/RedoDialog;->f:Lcom/tencent/tauth/IUiListener;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/open/RedoDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/open/RedoDialog;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/open/RedoDialog;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/open/RedoDialog;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/open/RedoDialog;->f:Lcom/tencent/tauth/IUiListener;

    invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V

    .line 68
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 73
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/tencent/open/RedoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/RedoDialog;->g:Landroid/app/ProgressDialog;

    .line 75
    iget-object v0, p0, Lcom/tencent/open/RedoDialog;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 76
    iget-object v0, p0, Lcom/tencent/open/RedoDialog;->g:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/tencent/open/RedoDialog;->requestWindowFeature(I)Z

    .line 79
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tencent/open/RedoDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/open/RedoDialog;->i:Landroid/widget/FrameLayout;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/open/RedoDialog;->a(I)V

    .line 83
    iget-object v0, p0, Lcom/tencent/open/RedoDialog;->i:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/open/RedoDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method
