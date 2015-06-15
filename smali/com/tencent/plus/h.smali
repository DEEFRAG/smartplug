.class Lcom/tencent/plus/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# instance fields
.field final synthetic a:Lcom/tencent/plus/ImageActivity;


# direct methods
.method constructor <init>(Lcom/tencent/plus/ImageActivity;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 677
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->k(Lcom/tencent/plus/ImageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/plus/l;

    invoke-direct {v1, p0}, Lcom/tencent/plus/l;-><init>(Lcom/tencent/plus/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    if-nez p2, :cond_1

    .line 693
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "\u7f51\u7edc\u6709\u95ee\u9898\u5462\uff0c\u68c0\u67e5\u4e00\u4e0b\u7f51\u7edc\u518d\u91cd\u8bd5\u5427\uff1a\uff09"

    invoke-static {v0, v1, v2}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    .line 701
    :goto_0
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "10660"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    .line 702
    const-string v0, "ImageActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvatar failure, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "\u8bbe\u7f6e\u51fa\u9519\u4e86\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u518d\u5c1d\u8bd5\u4e0b\u5462\uff1a\uff09"

    invoke-static {v0, v1, v2}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0, p2, v2}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 638
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->k(Lcom/tencent/plus/ImageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/plus/m;

    invoke-direct {v1, p0}, Lcom/tencent/plus/m;-><init>(Lcom/tencent/plus/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 648
    const/4 v1, -0x1

    .line 650
    :try_start_0
    const-string v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 654
    :goto_0
    if-nez v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v0, v1, v4}, Lcom/tencent/plus/ImageActivity;->b(Lcom/tencent/plus/ImageActivity;Ljava/lang/String;I)V

    .line 656
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    const-string v1, "10658"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/plus/ImageActivity;->a(Ljava/lang/String;J)V

    .line 657
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    .line 658
    iget-object v1, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v1}, Lcom/tencent/plus/ImageActivity;->l(Lcom/tencent/plus/ImageActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v2}, Lcom/tencent/plus/ImageActivity;->l(Lcom/tencent/plus/ImageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 661
    iget-object v2, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v2}, Lcom/tencent/plus/ImageActivity;->l(Lcom/tencent/plus/ImageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 664
    if-eqz v2, :cond_0

    .line 665
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1, v5, v5}, Lcom/tencent/plus/ImageActivity;->a(Lcom/tencent/plus/ImageActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/tencent/plus/h;->a:Lcom/tencent/plus/ImageActivity;

    invoke-static {v0}, Lcom/tencent/plus/ImageActivity;->j(Lcom/tencent/plus/ImageActivity;)V

    .line 674
    :goto_1
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 672
    :cond_1
    invoke-direct {p0, v0, v5}, Lcom/tencent/plus/h;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 708
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/h;->a(ILjava/lang/String;)V

    .line 709
    return-void
.end method

.method public onHttpStatusException(Lcom/tencent/open/HttpStatusException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 731
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/h;->a(ILjava/lang/String;)V

    .line 732
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 632
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 633
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/h;->a(ILjava/lang/String;)V

    .line 634
    return-void
.end method

.method public onJSONException(Lorg/json/JSONException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 626
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 627
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/h;->a(ILjava/lang/String;)V

    .line 628
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 620
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 621
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/h;->a(ILjava/lang/String;)V

    .line 622
    return-void
.end method

.method public onNetworkUnavailableException(Lcom/tencent/open/NetworkUnavailableException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 726
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/h;->a(ILjava/lang/String;)V

    .line 727
    return-void
.end method

.method public onSocketTimeoutException(Ljava/net/SocketTimeoutException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 714
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/h;->a(ILjava/lang/String;)V

    .line 715
    return-void
.end method

.method public onUnknowException(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 719
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/plus/h;->a(ILjava/lang/String;)V

    .line 721
    return-void
.end method
