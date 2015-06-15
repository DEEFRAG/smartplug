.class Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;
.super Ljava/lang/Object;
.source "CompositeByteArrayRelativeBase.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enteredFirstComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0
    .param p1, "componentIndex"    # I
    .param p2, "component"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 67
    return-void
.end method

.method public enteredLastComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1
    .param p1, "componentIndex"    # I
    .param p2, "component"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 72
    sget-boolean v0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_0
    return-void
.end method

.method public enteredNextComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1
    .param p1, "componentIndex"    # I
    .param p2, "component"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;

    invoke-virtual {v0}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursorPassedFirstComponent()V

    .line 79
    return-void
.end method

.method public enteredPreviousComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 1
    .param p1, "componentIndex"    # I
    .param p2, "component"    # Lorg/apache/mina/util/byteaccess/ByteArray;

    .prologue
    .line 84
    sget-boolean v0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 85
    :cond_0
    return-void
.end method
