.class public Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$NopExpander;
.super Ljava/lang/Object;
.source "CompositeByteArrayRelativeWriter.java"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter$Expander;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NopExpander"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expand(Lorg/apache/mina/util/byteaccess/CompositeByteArray;I)V
    .locals 0
    .param p1, "cba"    # Lorg/apache/mina/util/byteaccess/CompositeByteArray;
    .param p2, "minSize"    # I

    .prologue
    .line 62
    return-void
.end method
