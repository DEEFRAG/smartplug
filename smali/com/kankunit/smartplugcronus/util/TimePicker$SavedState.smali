.class Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kankunit/smartplugcronus/util/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHour:I

.field private final mMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState$1;-><init>()V

    .line 268
    sput-object v0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 277
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 248
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->mHour:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->mMinute:I

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;II)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 242
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 243
    iput p2, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->mHour:I

    .line 244
    iput p3, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->mMinute:I

    .line 245
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IILcom/kankunit/smartplugcronus/util/TimePicker$SavedState;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-void
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 264
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Lcom/kankunit/smartplugcronus/util/TimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    return-void
.end method
