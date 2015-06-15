.class Lcom/avos/avoscloud/PaasClient$1;
.super Lcom/loopj/android/http/SyncHttpClient;
.source "PaasClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PaasClient;->clientInstance(Z)Lcom/loopj/android/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PaasClient;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PaasClient;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/avos/avoscloud/PaasClient$1;->this$0:Lcom/avos/avoscloud/PaasClient;

    invoke-direct {p0}, Lcom/loopj/android/http/SyncHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFailed(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 219
    if-eqz p2, :cond_0

    .end local p2    # "s":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method
