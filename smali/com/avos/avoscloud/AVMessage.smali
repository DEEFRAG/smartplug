.class public Lcom/avos/avoscloud/AVMessage;
.super Ljava/lang/Object;
.source "AVMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avos/avoscloud/AVMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fromPeerId:Ljava/lang/String;

.field groupId:Ljava/lang/String;

.field isTransient:Z

.field message:Ljava/lang/String;

.field timestamp:J

.field private toPeerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/avos/avoscloud/AVMessage$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVMessage$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/avos/avoscloud/AVMessage;->timestamp:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avos/avoscloud/AVMessage;->fromPeerId:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVMessage;->groupId:Ljava/lang/String;

    .line 46
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p3, "isTransient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "toPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    .line 30
    iput-boolean p3, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "isTransient"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 35
    iput-boolean p2, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getFromPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->fromPeerId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/avos/avoscloud/AVMessage;->timestamp:J

    return-wide v0
.end method

.method public getToPeerIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    return-object v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    return v0
.end method

.method public setFromPeerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "fromPeerId"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->fromPeerId:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->groupId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/avos/avoscloud/AVMessage;->timestamp:J

    .line 78
    return-void
.end method

.method public setToPeerIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "toPeerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setTransient(Z)V
    .locals 0
    .param p1, "isTransient"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-wide v0, p0, Lcom/avos/avoscloud/AVMessage;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->fromPeerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->toPeerIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lcom/avos/avoscloud/AVMessage;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
