.class Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$7;
.super Ljava/lang/Object;
.source "AppleTvControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->initHongMiHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;


# direct methods
.method constructor <init>(Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/AppleTvControlRecordActivity;->finish()V

    .line 710
    return-void
.end method
