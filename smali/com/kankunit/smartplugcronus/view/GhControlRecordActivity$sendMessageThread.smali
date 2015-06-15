.class Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "GhControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/GhControlRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 547
    return-void
.end method
