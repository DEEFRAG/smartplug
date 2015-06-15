.class public Lcom/iflytek/cloud/DataDownloader;
.super Lcom/iflytek/cloud/a/d/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public downloadData(Lcom/iflytek/cloud/SpeechListener;)V
    .locals 4

    new-instance v0, Lcom/iflytek/cloud/a/e/b;

    iget-object v1, p0, Lcom/iflytek/cloud/DataDownloader;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/DataDownloader;->b:Lcom/iflytek/cloud/b/a;

    const-string v3, "download"

    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/DataDownloader;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/cloud/a/e/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/iflytek/cloud/DataDownloader;->d:Lcom/iflytek/cloud/a/d/a;

    iget-object v0, p0, Lcom/iflytek/cloud/DataDownloader;->d:Lcom/iflytek/cloud/a/d/a;

    check-cast v0, Lcom/iflytek/cloud/a/e/b;

    new-instance v1, Lcom/iflytek/cloud/a/d/e$a;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/cloud/a/d/e$a;-><init>(Lcom/iflytek/cloud/a/d/e;Lcom/iflytek/cloud/SpeechListener;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/e/b;->a(Lcom/iflytek/cloud/SpeechListener;)V

    return-void
.end method
