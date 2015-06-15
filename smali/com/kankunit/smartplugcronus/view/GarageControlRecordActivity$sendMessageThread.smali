.class Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "GarageControlRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->startOperate(Ljava/lang/String;)V

    .line 503
    return-void
.end method
