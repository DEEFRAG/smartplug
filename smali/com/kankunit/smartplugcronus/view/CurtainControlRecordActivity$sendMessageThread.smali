.class Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "CurtainControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 406
    return-void
.end method
