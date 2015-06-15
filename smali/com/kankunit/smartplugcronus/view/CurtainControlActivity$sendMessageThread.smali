.class Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "CurtainControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/CurtainControlActivity;->startOperate(Ljava/lang/String;)V

    .line 381
    return-void
.end method
