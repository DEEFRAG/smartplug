.class Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "ShowMasterRCActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/ShowMasterRCActivity;->startOperate(Ljava/lang/String;)V

    .line 463
    return-void
.end method
