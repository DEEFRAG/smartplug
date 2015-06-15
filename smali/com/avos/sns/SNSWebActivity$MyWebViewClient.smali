.class Lcom/avos/sns/SNSWebActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SNSWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/sns/SNSWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/sns/SNSWebActivity;


# direct methods
.method constructor <init>(Lcom/avos/sns/SNSWebActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/avos/sns/SNSWebActivity$MyWebViewClient;->this$0:Lcom/avos/sns/SNSWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    # getter for: Lcom/avos/sns/SNSWebActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/sns/SNSWebActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    # getter for: Lcom/avos/sns/SNSWebActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/sns/SNSWebActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 69
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    # getter for: Lcom/avos/sns/SNSWebActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/avos/sns/SNSWebActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    return v0
.end method
