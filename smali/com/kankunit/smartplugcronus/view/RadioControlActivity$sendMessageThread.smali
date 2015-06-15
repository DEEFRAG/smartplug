.class Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "RadioControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/RadioControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/RadioControlActivity;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/RadioControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/RadioControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/RadioControlActivity;->startOperate(Ljava/lang/String;)V

    .line 532
    return-void
.end method
