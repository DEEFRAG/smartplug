.class Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$7;
.super Ljava/lang/Object;
.source "GarageControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/GarageControlRecordActivity;->finish()V

    .line 630
    return-void
.end method
