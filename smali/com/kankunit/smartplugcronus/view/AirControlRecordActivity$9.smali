.class Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$9;
.super Ljava/lang/Object;
.source "AirControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity$9;->this$0:Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AirControlRecordActivity;->finish()V

    .line 704
    return-void
.end method
