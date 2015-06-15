.class Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "RadioControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;)V
    .locals 0

    .prologue
    .line 642
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 648
    return-void
.end method
