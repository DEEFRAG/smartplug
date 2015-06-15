.class Lcom/kankunit/smartplugcronus/application/BaseApplication$1;
.super Ljava/lang/Thread;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/application/BaseApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/application/BaseApplication;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/application/BaseApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/application/BaseApplication$1;->this$0:Lcom/kankunit/smartplugcronus/application/BaseApplication;

    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/application/BaseApplication$1;->this$0:Lcom/kankunit/smartplugcronus/application/BaseApplication;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/application/BaseApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/kankunit/smartplugcronus/application/BaseApplication$1;->this$0:Lcom/kankunit/smartplugcronus/application/BaseApplication;

    const-string v3, "api_key"

    invoke-static {v2, v3}, Lcom/kankunit/smartplugcronus/baidupush/Utils;->getMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    .line 30
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 31
    return-void
.end method
