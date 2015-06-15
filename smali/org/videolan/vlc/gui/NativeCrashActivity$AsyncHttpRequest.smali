.class public Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;
.super Landroid/os/AsyncTask;
.source "NativeCrashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/NativeCrashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncHttpRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/NativeCrashActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private compress(Ljava/lang/String;)[B
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 132
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 133
    .local v1, "gos":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 134
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 135
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 136
    .local v0, "compressed":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 137
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 107
    aget-object v5, p1, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 108
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 127
    :goto_0
    return-object v5

    .line 109
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 110
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v5, "http://people.videolan.org/~magsoft/vlc-android_crashes/upload_crash_log.php"

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v4, "msgBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, p1

    if-lt v3, v5, :cond_1

    .line 118
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->compress(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 115
    :cond_1
    :try_start_1
    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    .end local v3    # "i":I
    .end local v4    # "msgBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 122
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 123
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    # getter for: Lorg/videolan/vlc/gui/NativeCrashActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$5(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 143
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    # getter for: Lorg/videolan/vlc/gui/NativeCrashActivity;->mSendLog:Landroid/widget/Button;
    invoke-static {v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$3(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$4(Lorg/videolan/vlc/gui/NativeCrashActivity;Landroid/app/ProgressDialog;)V

    .line 101
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    # getter for: Lorg/videolan/vlc/gui/NativeCrashActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$5(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    const v2, 0x7f0c00f7

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/NativeCrashActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lorg/videolan/vlc/gui/NativeCrashActivity$AsyncHttpRequest;->this$0:Lorg/videolan/vlc/gui/NativeCrashActivity;

    # getter for: Lorg/videolan/vlc/gui/NativeCrashActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/videolan/vlc/gui/NativeCrashActivity;->access$5(Lorg/videolan/vlc/gui/NativeCrashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 103
    return-void
.end method
