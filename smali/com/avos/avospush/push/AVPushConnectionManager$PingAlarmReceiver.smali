.class Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVPushConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avospush/push/AVPushConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingAlarmReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avospush/push/AVPushConnectionManager;


# direct methods
.method constructor <init>(Lcom/avos/avospush/push/AVPushConnectionManager;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/avos/avospush/push/AVPushConnectionManager$PingAlarmReceiver;->this$0:Lcom/avos/avospush/push/AVPushConnectionManager;

    # invokes: Lcom/avos/avospush/push/AVPushConnectionManager;->sendPing()V
    invoke-static {v0}, Lcom/avos/avospush/push/AVPushConnectionManager;->access$500(Lcom/avos/avospush/push/AVPushConnectionManager;)V

    .line 635
    return-void
.end method
