.class Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$8;
.super Ljava/lang/Object;
.source "TvControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$8;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->finish()V

    .line 687
    const/4 v0, 0x1

    return v0
.end method
