.class Lcom/kankunit/smartplugcronus/view/GarageControlActivity$sendMessageThread;
.super Ljava/lang/Thread;
.source "GarageControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/view/GarageControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sendMessageThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GarageControlActivity;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    iget-object v1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlActivity$sendMessageThread;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlActivity;

    iget-object v1, v1, Lcom/kankunit/smartplugcronus/view/GarageControlActivity;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kankunit/smartplugcronus/view/GarageControlActivity;->startOperate(Ljava/lang/String;)V

    .line 364
    return-void
.end method
