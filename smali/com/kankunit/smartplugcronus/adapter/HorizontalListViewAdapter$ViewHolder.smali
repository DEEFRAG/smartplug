.class Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HorizontalListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private electrict_power_mother_text:Landroid/widget/TextView;

.field private electrict_power_user:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->electrict_power_user:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->electrict_power_mother_text:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$3(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->electrict_power_user:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/HorizontalListViewAdapter$ViewHolder;->electrict_power_mother_text:Landroid/widget/TextView;

    return-object v0
.end method
