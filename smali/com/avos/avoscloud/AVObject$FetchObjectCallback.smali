.class final Lcom/avos/avoscloud/AVObject$FetchObjectCallback;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FetchObjectCallback"
.end annotation


# instance fields
.field private final internalCallback:Lcom/avos/avoscloud/AVCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/AVCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;


# direct methods
.method private constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/AVCallback",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "internalCallback":Lcom/avos/avoscloud/AVCallback;, "Lcom/avos/avoscloud/AVCallback<Lcom/avos/avoscloud/AVObject;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->internalCallback:Lcom/avos/avoscloud/AVCallback;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;Lcom/avos/avoscloud/AVObject$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/avos/avoscloud/AVObject;
    .param p2, "x1"    # Lcom/avos/avoscloud/AVCallback;
    .param p3, "x2"    # Lcom/avos/avoscloud/AVObject$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->internalCallback:Lcom/avos/avoscloud/AVCallback;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->internalCallback:Lcom/avos/avoscloud/AVCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/avos/avoscloud/AVException;

    .prologue
    .line 55
    move-object v0, p2

    .line 56
    .local v0, "error":Lcom/avos/avoscloud/AVException;
    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    .line 57
    .local v1, "object":Lcom/avos/avoscloud/AVObject;
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 59
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    const/4 v3, 0x1

    # setter for: Lcom/avos/avoscloud/AVObject;->isDataReady:Z
    invoke-static {v2, v3}, Lcom/avos/avoscloud/AVObject;->access$002(Lcom/avos/avoscloud/AVObject;Z)Z

    .line 60
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->this$0:Lcom/avos/avoscloud/AVObject;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVObject;->onDataSynchronized()V

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->internalCallback:Lcom/avos/avoscloud/AVCallback;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$FetchObjectCallback;->internalCallback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {v2, v1, v0}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 68
    :cond_0
    return-void

    .line 62
    :cond_1
    const/4 v1, 0x0

    .line 63
    new-instance v0, Lcom/avos/avoscloud/AVException;

    .end local v0    # "error":Lcom/avos/avoscloud/AVException;
    const/16 v2, 0x65

    const-string v3, "The object is not Found"

    invoke-direct {v0, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .restart local v0    # "error":Lcom/avos/avoscloud/AVException;
    goto :goto_0
.end method
