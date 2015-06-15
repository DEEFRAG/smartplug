.class Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;
.super Ljava/lang/Object;
.source "DeviceGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridItem"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private imageId:I

.field final synthetic this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "imageId"    # I
    .param p4, "time"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->this$0:Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->title:Ljava/lang/String;

    .line 220
    iput p3, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->imageId:I

    .line 221
    iput-object p4, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->description:Ljava/lang/String;

    .line 222
    return-void
.end method


# virtual methods
.method public getImageId()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->imageId:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/kankunit/smartplugcronus/adapter/DeviceGridAdapter$GridItem;->title:Ljava/lang/String;

    return-object v0
.end method
