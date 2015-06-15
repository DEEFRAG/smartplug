.class Lcom/kankunit/smartplugcronus/view/TmallControlActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "TmallControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/TmallControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TmallControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TmallControlActivity;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/TmallControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/TmallControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/TmallControlActivity;->startOperate(Ljava/lang/String;)V

    .line 395
    return-void
.end method
