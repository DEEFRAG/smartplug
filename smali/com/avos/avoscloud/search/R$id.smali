.class public final Lcom/avos/avoscloud/search/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/search/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static avoscloud_search_actionbar_back:I

.field public static avoscloud_search_actionbar_title:I

.field public static avoscloud_search_emtpy_result:I

.field public static avoscloud_search_result_description:I

.field public static avoscloud_search_result_listview:I

.field public static avoscloud_search_result_open_app:I

.field public static avoscloud_search_result_title:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/high16 v0, 0x7f060000

    sput v0, Lcom/avos/avoscloud/search/R$id;->avoscloud_search_actionbar_back:I

    .line 23
    const v0, 0x7f060001

    sput v0, Lcom/avos/avoscloud/search/R$id;->avoscloud_search_actionbar_title:I

    .line 24
    const v0, 0x7f060003

    sput v0, Lcom/avos/avoscloud/search/R$id;->avoscloud_search_emtpy_result:I

    .line 25
    const v0, 0x7f060005

    sput v0, Lcom/avos/avoscloud/search/R$id;->avoscloud_search_result_description:I

    .line 26
    const v0, 0x7f060002

    sput v0, Lcom/avos/avoscloud/search/R$id;->avoscloud_search_result_listview:I

    .line 27
    const v0, 0x7f060006

    sput v0, Lcom/avos/avoscloud/search/R$id;->avoscloud_search_result_open_app:I

    .line 28
    const v0, 0x7f060004

    sput v0, Lcom/avos/avoscloud/search/R$id;->avoscloud_search_result_title:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
