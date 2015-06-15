.class public Lcom/avos/avoscloud/AVSession$SignatureTask;
.super Landroid/os/AsyncTask;
.source "AVSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SignatureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/avos/avoscloud/Signature;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/avos/avoscloud/SignatureCallback;

.field signatureException:Lcom/avos/avoscloud/AVException;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/SignatureCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/avos/avoscloud/SignatureCallback;

    .prologue
    .line 1049
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1050
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    .line 1051
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/avos/avoscloud/Signature;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1056
    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-interface {v1}, Lcom/avos/avoscloud/SignatureCallback;->computeSignature()Lcom/avos/avoscloud/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1059
    :goto_0
    return-object v1

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/avos/avoscloud/AVException;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->signatureException:Lcom/avos/avoscloud/AVException;

    .line 1059
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1045
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVSession$SignatureTask;->doInBackground([Ljava/lang/Void;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/avos/avoscloud/Signature;)V
    .locals 2
    .param p1, "result"    # Lcom/avos/avoscloud/Signature;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->callback:Lcom/avos/avoscloud/SignatureCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$SignatureTask;->signatureException:Lcom/avos/avoscloud/AVException;

    invoke-interface {v0, p1, v1}, Lcom/avos/avoscloud/SignatureCallback;->onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V

    .line 1066
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1045
    check-cast p1, Lcom/avos/avoscloud/Signature;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVSession$SignatureTask;->onPostExecute(Lcom/avos/avoscloud/Signature;)V

    return-void
.end method
