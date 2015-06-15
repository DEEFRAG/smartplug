.class Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "RemoteControlPanelIRActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/RemoteControlPanelIRActivity;->startLearn(Ljava/lang/String;)V

    .line 567
    return-void
.end method
