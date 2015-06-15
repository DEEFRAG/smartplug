.class Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "TvControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 539
    return-void
.end method
