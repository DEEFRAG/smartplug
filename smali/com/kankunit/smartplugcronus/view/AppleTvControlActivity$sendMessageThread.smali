.class Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "AppleTvControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/AppleTvControlActivity;->startOperate(Ljava/lang/String;)V

    .line 417
    return-void
.end method
