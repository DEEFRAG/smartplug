.class Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$7;
.super Ljava/lang/Object;
.source "TvControlRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity$7;->this$0:Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;

    invoke-virtual {v0}, Lcom/kankunit/smartplugcronus/view/TvControlRecordActivity;->finish()V

    .line 680
    return-void
.end method
