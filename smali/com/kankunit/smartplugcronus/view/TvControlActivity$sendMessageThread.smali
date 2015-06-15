.class Lcom/kankunit/smartplugcronus/view/TvControlActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "TvControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/TvControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TvControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TvControlActivity;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TvControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TvControlActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TvControlActivity;->startOperate(Ljava/lang/String;)V

    .line 535
    return-void
.end method
