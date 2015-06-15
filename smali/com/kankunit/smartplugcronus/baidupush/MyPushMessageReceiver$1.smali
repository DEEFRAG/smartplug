.class Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;
.super Ljava/lang/Object;
.source "MyPushMessageReceiver.java"

# interfaces
.implements Lcom/kankunit/smartplugcronus/minautil/MinaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;->onBind(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;

.field private final synthetic val$fChannelId:Ljava/lang/String;

.field private final synthetic val$fContext:Landroid/content/Context;

.field private final synthetic val$fUserId:Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->this$0:Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver;

    iput-object p2, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$fContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$fUserId:Ljava/lang/String;

    iput-object p5, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$fChannelId:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveMsg(Ljava/lang/Object;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$fContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save Baidu information"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kankunit/smartplugcronus/util/LogUtil;->logMsg(Landroid/content/Context;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$fContext:Landroid/content/Context;

    const-string v1, "baiduinfo"

    const-string v2, "isBaiduUploaded"

    const-string v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$fContext:Landroid/content/Context;

    const-string v1, "baiduinfo"

    const-string v2, "userId"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$fUserId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$fContext:Landroid/content/Context;

    const-string v1, "baiduinfo"

    const-string v2, "channelId"

    iget-object v3, p0, Lcom/kankunit/smartplugcronus/baidupush/MyPushMessageReceiver$1;->val$fChannelId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/kankunit/smartplugcronus/util/LocalInfoUtil;->saveValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
