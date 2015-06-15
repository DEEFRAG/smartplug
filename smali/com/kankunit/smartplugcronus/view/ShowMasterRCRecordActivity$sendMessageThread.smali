.class Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "ShowMasterRCRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 497
    return-void
.end method
