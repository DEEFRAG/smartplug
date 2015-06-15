.class Lcom/kankunit/smartplugcronus/view/GhControlActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "GhControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/GhControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GhControlActivity;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GhControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GhControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/GhControlActivity;->startOperate(Ljava/lang/String;)V

    .line 491
    return-void
.end method
